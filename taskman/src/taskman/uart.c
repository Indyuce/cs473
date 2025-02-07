#include <assert.h>
#include <defs.h>
#include <platform.h>
#include <taskman/taskman.h>
#include <taskman/uart.h>
#include <uart.h>

#include <implement_me.h>

#define UART_BUFFER_CAPACITY 64

#pragma region "UART Buffer"

/**
 * @brief A basic circular queue structure used as UART internal buffer.
 *
 */
struct uart_buffer {
    /** @brief UART buffer data. */
    uint8_t data[UART_BUFFER_CAPACITY];

    /** @brief Head of the buffer. */
    size_t head;

    /** @brief Size of the buffer. */
    size_t size;
};

static void uart_buffer_init(struct uart_buffer* uart_buffer) {
    uart_buffer->head = 0;
    uart_buffer->size = 0;
}

static int uart_buffer_nonempty(struct uart_buffer* uart_buffer) {
    return uart_buffer->size > 0;
}

static int uart_buffer_empty(struct uart_buffer* uart_buffer) {
    return uart_buffer->size == 0;
}

static int uart_buffer_nonfull(struct uart_buffer* uart_buffer) {
    return uart_buffer->size < UART_BUFFER_CAPACITY;
}

static int uart_buffer_full(struct uart_buffer* uart_buffer) {
    return uart_buffer->size == UART_BUFFER_CAPACITY;
}

static uint8_t uart_buffer_head(struct uart_buffer* uart_buffer) {
    return uart_buffer->data[uart_buffer->head];
}

static void uart_buffer_put(struct uart_buffer* uart_buffer, uint8_t ch) {
    die_if_not(uart_buffer_nonfull(uart_buffer));
    uart_buffer->data[(uart_buffer->head + uart_buffer->size) % UART_BUFFER_CAPACITY] = ch;
    uart_buffer->size++;
}

static uint8_t uart_buffer_pop(struct uart_buffer* uart_buffer) {
    die_if_not(uart_buffer_nonempty(uart_buffer));
    uint8_t result = uart_buffer->data[uart_buffer->head];
    uart_buffer->head = (uart_buffer->head + 1) % UART_BUFFER_CAPACITY;
    uart_buffer->size--;
    return result;
}

#pragma endregion

struct wait_data {
    uint8_t* buffer;
    size_t buffer_capacity;
    size_t length;
};

__global static struct {
    struct taskman_handler handler;

    /** @brief the coroutine that waits for UART input */
    void* stack;

    /** @brief UART internal buffer */
    struct uart_buffer uart_buffer;
} uart_handler;

static int on_wait(struct taskman_handler* handler, void* stack, void* arg) {
    UNUSED(handler);

    die_if_not_f(uart_handler.stack == NULL, "only one task can wait for UART input at a time!");
    uart_handler.stack = stack;

    struct wait_data* wait_data = (struct wait_data*)arg;
    return 0;
}

static int can_resume(struct taskman_handler* handler, void* stack, void* arg) {
    UNUSED(handler);

    struct wait_data* wait_data = (struct wait_data*)arg;
    struct uart_buffer* uart_buffer = &uart_handler.uart_buffer;

    // Check if the UART buffer has data.
    // If that is the case, extract data and write it to wait_data->buffer.
    // I strongly suggest that you first read `struct wait_data` definition.
    // Can resume if either (1) buffer is full, (2) found a new line character
    //
    // Note: that we need to put a '\0' at the end of the line.
    // Note: do not write the new line character

    // Check if the buffer has data
    if(uart_buffer_nonempty(uart_buffer)){
        size_t i = 0;
        // Read the uart_buffer one character by one character until uart buffer becomes
        // empty or i > buffer_capacity in the wait_data struct (can't copy anymore because buffer is full)
        // Important : we need to store the \0 at the end of the wait_data struct buffer so
        // buffer capacity is -1
        while((i < wait_data->buffer_capacity - 1) && (uart_buffer_nonempty(uart_buffer))){
            // Retrieve character
            uint8_t character = uart_buffer_pop(uart_buffer);
            // Check is this character is newline or not
            if(character == '\n'){
                wait_data->buffer[i] = '\0';
                wait_data->length = i;
                // When task can be resumed set its stack back to NULL
                uart_handler.stack = NULL;
                // When data is copied the task can now resume
                return 1; 
            }
            // Store character in buffer and go to next index
            wait_data->buffer[i] = character;
            i++;
        }
        // If we go here, it means that buffer of wait_data is not a full capacity (there's at least one space left)
        // or that the uart buffer is now empty
        // In both cases we need to end the buffer by '\0' and resume
        wait_data->buffer[i] = '\0';
        wait_data->length = i;
        // When task can be resumed set its stack back to NULL
        uart_handler.stack = NULL;
        return 1;
    }
    // Here the uart buffer is empty so can't resume until there is new data copied
    return 0;
}

static void loop(struct taskman_handler* handler) {
    UNUSED(handler);

    volatile char* uart = (volatile char*)UART_BASE;
    struct uart_buffer* uart_buffer = &uart_handler.uart_buffer;

    // If available, read data from UART and put it to the UART buffer
    // You can discard data if the buffer is full.
    // see: support/src/uart.c for help.

    // The condition for UART to be available is available in uart_wait_rx
    // Check if uart is available
    if (!((uart[UART_LINE_STATUS_REGISTER] & UART_RX_AVAILABLE_MASK) == 0)){
        // Get the character from uart, uart_getc is strange as it returns an int 
        // but it return *uart, so if I define a uint8_t instead and just do
        // uint8_t var = *uart I should get the first bits and thus the character ?
        uint8_t character = (uint8_t) *uart;
        // Check if the uart buffer is not full : 
        if (uart_buffer_nonfull(uart_buffer)){
            // Push the value inside the buffer
            uart_buffer_put(uart_buffer, character);
        }
    }
}

void taskman_uart_glinit() {
    uart_handler.handler.name = "uart";
    uart_handler.handler.on_wait = &on_wait;
    uart_handler.handler.can_resume = &can_resume;
    uart_handler.handler.loop = &loop;

    uart_handler.stack = NULL;
    uart_buffer_init(&uart_handler.uart_buffer);

    taskman_register(&uart_handler.handler);
}

size_t __no_optimize taskman_uart_getline(uint8_t* buffer, size_t capacity) {
    struct wait_data wait_data = {
        .buffer = buffer,
        .buffer_capacity = capacity,
        .length = 0
    };
    taskman_wait(&uart_handler.handler, (void*)&wait_data);
    return wait_data.length;
}
