#include <assert.h>
#include <cache.h>
#include <defs.h>
#include <locks.h>
#include <taskman/taskman.h>
#include <stdio.h>

#include <implement_me.h>

/// @brief Maximum number of wait handlers.
#define TASKMAN_NUM_HANDLERS 32

/// @brief Maximum number of scheduled tasks.
#define TASKMAN_NUM_TASKS 128

/// @brief Maximum total stack size.
#define TASKMAN_STACK_SIZE (256 << 10)

#define TASKMAN_LOCK_ID 2

#define TASKMAN_LOCK()             \
    do {                           \
        get_lock(TASKMAN_LOCK_ID); \
    } while (0)

#define TASKMAN_RELEASE()              \
    do {                               \
        release_lock(TASKMAN_LOCK_ID); \
    } while (0)

__global static struct {
    /// @brief Wait handlers.
    struct taskman_handler* handlers[TASKMAN_NUM_HANDLERS];

    /// @brief Number of wait handlers;
    size_t handlers_count;

    /// @brief Stack area. Contains multiple independent stacks.
    uint8_t stack[TASKMAN_STACK_SIZE];

    /// @brief Stack offset (for the next allocation).
    size_t stack_offset;

    /// @brief Scheduled tasks.
    void* tasks[TASKMAN_NUM_TASKS];

    /// @brief Number of tasks scheduled.
    size_t tasks_count;

    /// @brief True if the task manager should stop.
    uint32_t should_stop;
} taskman;

/**
 * @brief Extra information attached to the coroutine used by the task manager.
 *
 */
struct task_data {
    struct {
        /// @brief Handler
        /// @note NULL if waiting on `coro_yield`.
        struct taskman_handler* handler;

        /// @brief Argument to the wait handler
        void* arg;
    } wait;

    /// @brief 1 if running, 0 otherwise.
    int running;

    /// @brief 1 if running on some core, 0 otherwise.
    /// Prevents multiple cores from running the same task.
    int running_on_cpu;
};

void taskman_glinit() {
    TASKMAN_LOCK();

    taskman.handlers_count = 0;
    taskman.stack_offset = 0;
    taskman.tasks_count = 0;
    taskman.should_stop = 0;

    TASKMAN_RELEASE();
}

void* taskman_spawn(coro_fn_t coro_fn, void* arg, size_t stack_sz) {
    // (1) allocate stack space for the new task
    // (2) initialize the coroutine and struct task_data
    // (3) register the coroutine in the tasks array
    // use die_if_not() statements to handle error conditions (like no memory)

    // Important note : the stack allocated in taskman.stack is the entire stack that contains 
    // the coro_data and the task_data

    TASKMAN_LOCK();

    // Check arguments
    die_if_not(coro_fn != NULL);
    die_if_not(stack_sz > 0);
    die_if_not(taskman.stack_offset + stack_sz <= TASKMAN_STACK_SIZE);
    die_if_not(taskman.tasks_count < TASKMAN_NUM_TASKS);

    // (1) Stack space
    void* stack = &(taskman.stack[taskman.stack_offset]);
    taskman.stack_offset += stack_sz;

    // (2) Initialize coroutine
    coro_init(stack, stack_sz, coro_fn, arg);

    // (2) Initialize struct task_data : the task_data struct is stored right after the coro_data struct
    // Moreover, coro_data return the address right after the coro_data struct in overall coroutine's stack
    struct task_data* task_data = (struct task_data*) coro_data(stack);
    task_data->running = 1;
    task_data->wait.arg = NULL;
    task_data->wait.handler = NULL;

    // (3) Register the coroutine in the tasks array (the coroutine's stack pointer in the array)
    taskman.tasks[taskman.tasks_count] = stack;
    taskman.tasks_count += 1;

    TASKMAN_RELEASE();

    // Return the stack of the newly created coroutine
    return stack;
}

void taskman_loop() {
    // (a) Call the `loop` functions of all the wait handlers.
    // (b) Iterate over all the tasks, and resume them if.
    //        * The task is not complete.
    //        * it yielded using `taskman_yield`.
    //        * the waiting handler says it can be resumed.

    while (!taskman.should_stop) {

        TASKMAN_LOCK(); // Lock to run task handlers

        // (a) Call the loop functions of all the wait handlers in taskman
        for(size_t i=0; i < taskman.handlers_count; i++){
            if(taskman.handlers[i]->loop){
                taskman.handlers[i]->loop(taskman.handlers[i]);
            }
        }

        TASKMAN_RELEASE();

        // (b) Iterate over the tasks
        for(size_t j=0; j < taskman.tasks_count; j++){
            TASKMAN_LOCK(); // Lock to potentially resume task

            // Safety check since taskman.tasks_count was accessed out of lock
            if (j >= taskman.tasks_count) {
                TASKMAN_RELEASE();
                break;
            }

            // Retrieve stack for each task
            void* stack = taskman.tasks[j];
            // Retrieve task_data struct in the stack
            struct task_data* task_data = (struct task_data*) coro_data(stack);

            // If the task is complete, skip it
            if(task_data->running == 0){
                TASKMAN_RELEASE();
                continue;
            }

            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            // If some other core is already dealing with this task
            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            if(task_data->running_on_cpu != 0){
                TASKMAN_RELEASE();
                continue;
            }

            // If there is a wait handler set by taskman_wait() (the task yielded)
            if(task_data->wait.handler){
                // If the task is ready to be resumed
                if(task_data->wait.handler->can_resume(task_data->wait.handler, stack, task_data->wait.arg)){
                    // Delete the handler (reset it to NULL)
                    task_data->wait.handler = NULL;
                    task_data->wait.arg = NULL;
                } else {
                    // If the task is not ready wait again
                    TASKMAN_RELEASE();
                    continue;
                }
            }

            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            // Set flag to prevent other cores from running the same motherfucking task
            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            task_data->running_on_cpu = 1;

            TASKMAN_RELEASE(); // Release to allow multiple cores to execute tasks in parallel

            // Every task that is coming here should be fine to resume
            // Resume the corresponding coroutine
            coro_resume(stack);

            TASKMAN_LOCK();

            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            // Reset this flag to allow for other cores to pickup on this task
            // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            task_data->running_on_cpu = 0;

            // If the coroutine is completed, set task_data.runnning to 0 to indicate that 
            // this task should not be scheduled anymore and should be removed from taskman array
            if (coro_completed(stack, NULL)){
                task_data->running = 0;
            }

            TASKMAN_RELEASE();
        }
    }
}

void taskman_stop() {
    TASKMAN_LOCK();
    
    taskman.should_stop = 1;

    TASKMAN_RELEASE();
}

void taskman_register(struct taskman_handler* handler) {
    TASKMAN_LOCK();

    die_if_not(handler != NULL);
    die_if_not(taskman.handlers_count < TASKMAN_NUM_HANDLERS);

    taskman.handlers[taskman.handlers_count] = handler;
    taskman.handlers_count++;

    TASKMAN_RELEASE();
}

void taskman_wait(struct taskman_handler* handler, void* arg) {
    TASKMAN_LOCK();

    // Retrieve the stack of the task
    void* stack = coro_stack();

    // Retrieve the task_data struct from this stack
    struct task_data* task_data = (struct task_data*) coro_data(stack);

    // I suggest that you read `struct taskman_handler` definition.
    // Call handler->on_wait, see if there is a need to yield.
    // Update the wait field of the task_data.
    // Yield if necessary.

    // We need to attach an handler to the task that will set the condition
    // for which it needs to wait to be scheduled
    task_data->wait.handler = handler;
    task_data->wait.arg = arg;

    int should_yield = !handler || !handler->on_wait || !handler->on_wait(handler, stack, arg);

    TASKMAN_RELEASE();

    // When we set the handler, this function should call on_wait to initialize some values 
    // for the handler but we need to check that the handler is not NULL (taskman_yield() is taskman_wait(NULL, NULL))

    // Yield if:
    // - no wait handler/handler->on_wait specified (simple yield)
    // - handler->on_wait returns 0 (should wait)
    if (should_yield) {
        coro_yield();
    }
}

void taskman_yield() {
    taskman_wait(NULL, NULL);
}

void taskman_return(void* result) {
    coro_return(result);
}
