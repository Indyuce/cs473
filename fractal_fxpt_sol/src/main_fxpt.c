#include "fractal_fxpt.h"
#include "swap.h"
#include "vga.h"
#include <stddef.h>
#include <stdio.h>
#ifdef __OR1300__
#include "perf.h"
#include "cache.h"
#include <spr.h>
#include <exception.h>
#endif

// Constants describing the output device
#define SCREEN_WIDTH 512  //!< screen width
#define SCREEN_HEIGHT 512  //!< screen height

// Constants describing the initial view port on the fractal function
const fxpt_4_28 FRAC_WIDTH = 0x30000000; //!< default fractal width (3.0 in Q4.28)
const fxpt_4_28 CX_0 = 0xe0000000;       //!< default start x-coordinate (-2.0 in Q4.28)
const fxpt_4_28 CY_0 = 0xe8000000;       //!< default start y-coordinate (-1.5 in Q4.28)
const rgb565 N_MAX = 64;                 //!< maximum number of iterations

volatile rgb565 frameBuffer[SCREEN_WIDTH * SCREEN_HEIGHT];

// Some exception handler
void my_trap_handler(void) {
   printf("I just caught a trap! Ahaha!!!\n");
}

void my_syscall_handler(void) {
   printf("Hugo t trop bo\n");
   uint32_t* epc = (uint32_t*) SPR_READ(2); // address



   printf("EPC         : %08x\n", epc);
   printf("Instruction : %08x\n", * (epc - 1 ));
}

int main() {

#ifdef __OR1300__  
   _vectors[EXCEPTION_SYSTEM_CALL] = &my_syscall_handler;
#endif

   SYSCALL(0xAA);

   volatile unsigned int *vga = (unsigned int *) 0X50000020;
   volatile unsigned int reg, hi;
   fxpt_4_28 delta = FRAC_WIDTH / SCREEN_WIDTH;
   int i;
   vga_clear();
   printf("Starting drawing a fractal\n");
#ifdef __OR1300__   
   /* enable the caches */
   icache_write_cfg( CACHE_DIRECT_MAPPED | CACHE_SIZE_8K | CACHE_REPLACE_FIFO );
   dcache_write_cfg( CACHE_FOUR_WAY | CACHE_SIZE_8K | CACHE_REPLACE_LRU | CACHE_WRITE_BACK );
   icache_enable(1);
   dcache_enable(1);
   /* initialize the performance counters */
   perf_init();
   perf_set_mask(PERF_COUNTER_0, PERF_STALL_CYCLES_MASK | PERF_ICACHE_NOP_INSERTION_MASK);
   perf_set_mask(PERF_COUNTER_1, PERF_BUS_IDLE_MASK);
   perf_set_mask(PERF_COUNTER_2, PERF_INSTRUCTION_FETCH_MASK);
   perf_set_mask(PERF_COUNTER_3, PERF_ICACHE_MISS_MASK);

   perf_memdist_set(0);
   
#endif
   /* Enable the vga-controller's graphic mode */
   vga[0] = swap_u32(SCREEN_WIDTH);
   vga[1] = swap_u32(SCREEN_HEIGHT);
   vga[2] = swap_u32(1);
   vga[3] = swap_u32((unsigned int)&frameBuffer[0]);
   /* Clear screen */
   for (i = 0 ; i < SCREEN_WIDTH*SCREEN_HEIGHT ; i++) frameBuffer[i]=0;
#ifdef __OR1300__   
   perf_start();
#endif
   draw_fractal(frameBuffer,SCREEN_WIDTH,SCREEN_HEIGHT,&calc_mandelbrot_point_soft, &iter_to_colour,CX_0,CY_0,delta,N_MAX);
#ifdef __OR1300__
   perf_stop();   
   printf("Done\n");
   
   perf_print_cycles(PERF_COUNTER_0, "Stall cycles    ");
   perf_print_cycles(PERF_COUNTER_1, "Bus idle cycles ");
   perf_print_cycles(PERF_COUNTER_2, "Instruction cache fetches ");
   perf_print_cycles(PERF_COUNTER_3, "Instruction cache misses ");
   perf_print_cycles(PERF_COUNTER_RUNTIME, "Runtime cycles  ");

   perf_print_time(PERF_COUNTER_0, "Stall cycles    ");
   perf_print_time(PERF_COUNTER_1, "Bus idle cycles ");
   // perf_print_time(PERF_COUNTER_2, "Instruction cache fetches ");
   // perf_print_time(PERF_COUNTER_3, "Instruction cache misses ");
   perf_print_time(PERF_COUNTER_RUNTIME, "Runtime cycles  ");
   dcache_flush();
#endif
}

/*

2.2
Very little misses compared to fetches (536M fetches and 32 misses)
The algorithm is a little slower due to profiling overhead.

2.3
At 5 cycles, only half of the Mandelbrot is displayed due to CPU/SDRAM speed mismatch.
The SDRAM cannot keep up with data being sent from the CPU, so it stores the last previously saved value, which explains the chunks we are seeing.
Chunks are even bigger at 25 (only ~1/4th image) or 63 (only ~1/8)

2.4

ECP/ECPR = general purpose register which stores the address of the instruction which caused the exception
delay slot = nop that we put after a branch instruction like jump, otherwise any other instruction would have unwanted side effects

exception vector is saved in the `_vectors` variable. it contains 32-bit addresses to all exception handlers.
`.global _vectors` defines a global symbol for linking which allows other files to reference this symbol.

_exception_handler saves all registers on stack, finds the exception being called based on the values stored in the registered,
calls the exception handler, restores all registers, and returns to the address of instruction that caused the exception.
RFE (return from exception) simply copies ECPR content into PC register.

an exception call is just (save pc -> epcr) followed by (jump exception_address)

exception_handler_t is just a function pointer, then `_vectors` is defined an an array of this type.
`extern` indicates that some external library provides the vector. this variable is not defined in C, it is external.
It is supposed to interface with the `_vectors` symbol from crt0.s, it's really just an interface

exceptions that we can get
- tlb misses
- trap

volatile tells the compiler not to perform certain optimisations about subsequent reads and writes.
it means certain variables are meant to be modified by other processes


   #ifdef __OR1300__
   // define exception handler
   _vectors[EXCEPTION_TRAP] = &my_trap_handler;

   // generate exception
   int *addr = (int*) 0x485ad3e8f;
   int data;
   asm volatile("l.lwz %[d], 0(%[s])" : [d]"=t"(data) : [s]"r"(addr));
   #endif

2.5

*/
