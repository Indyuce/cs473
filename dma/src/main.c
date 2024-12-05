#include <stdio.h>
#include <stddef.h>
#include <cache.h>
#include <perf.h>
#include <vga.h>
#include <swap.h>
#include <defs.h>
#include <dma.h>
#include <string.h>
#include "fractal_fxpt.h"


//#define __REALLY_FAST__

#define SPM_BASE_ADDRESS 0XC0000000

rgb565 frameBuffer[SCREEN_WIDTH*SCREEN_HEIGHT];



int main() {
   volatile unsigned int *vga = (unsigned int *) 0X50000020;
   volatile unsigned int reg, hi;
   uint32_t *pixel;

   perf_init();
   perf_set_mask(PERF_COUNTER_0, PERF_ICACHE_NOP_INSERTION_MASK | PERF_STALL_CYCLES_MASK);
   perf_set_mask(PERF_COUNTER_1, PERF_BUS_IDLE_MASK);
   perf_set_mask(PERF_COUNTER_2, PERF_ICACHE_MISS_MASK);
   perf_set_mask(PERF_COUNTER_3, PERF_DCACHE_MISS_MASK);

   vga_clear();
   printf("Starting drawing a fractal\n");
   fxpt_4_28 delta = FRAC_WIDTH / SCREEN_WIDTH;

   /* enable the caches */
   icache_write_cfg( CACHE_FOUR_WAY | CACHE_SIZE_8K | CACHE_REPLACE_LRU );
   dcache_write_cfg( CACHE_DIRECT_MAPPED | CACHE_SIZE_8K | CACHE_WRITE_BACK);
   icache_enable(1);
   dcache_enable(1);

   /* Enable the vga-controller's graphic mode */
   vga[0] = swap_u32(SCREEN_WIDTH);
   vga[1] = swap_u32(SCREEN_HEIGHT);
   vga[3] = swap_u32( (unsigned int) &frameBuffer[0] );
   
   /* Clear screen */
   for (int i = 0 ; i < SCREEN_WIDTH*SCREEN_HEIGHT ; i++) frameBuffer[i]=0;


   /* Define buffer in SPM region */
   volatile uint32_t* buffer = (volatile uint32_t*) SPM_BASE_ADDRESS;
   /* Initialize buffer to 0 */
   for (int i=0; i < SCREEN_WIDTH/2; i++){
      buffer[i] = 0xaf;
   }

   printf("Value of buffer : %d \n", buffer[128]);

   volatile uint32_t* base_addr = (volatile uint32_t*) DMA_BASE_ADDRESS;
  
  // Destination address in memory
   *(base_addr+MEMORY_ADDRESS_ID) =  swap_u32((unsigned int) &frameBuffer[0]);
   printf("Value of mem address id %x \n", swap_u32(*(base_addr+MEMORY_ADDRESS_ID)));
   printf("Value of framBuffer address %x \n", &frameBuffer[0]);
  // Source address in SPM
   *(base_addr+SPM_ADDRESS_ID) =  swap_u32(SPM_BASE_ADDRESS);
   printf("Value of spm address id %x \n", swap_u32(*(base_addr+SPM_ADDRESS_ID)));
   printf("Value of SPM adress %x \n", SPM_BASE_ADDRESS);
  // Size of the buffer to transfer
   *(base_addr+TRANSFER_SIZE_ID) = swap_u32(SCREEN_WIDTH/2);
  // Size of burst
   *(base_addr+START_STATUS_ID) = swap_u32(0x000000ff);
  // Start DMA transfer
   *(base_addr+START_STATUS_ID) = swap_u32(DMA_FROM_SPM_TO_MEM || 0x000000ff);
   printf("Value of register %x \n", swap_u32(*(base_addr+START_STATUS_ID)));

   while((swap_u32(*(base_addr+START_STATUS_ID))) == DMA_BUSY_BIT);

   printf("Value in frameBuffer is : %x \n", frameBuffer[0]);

   perf_start();
#ifdef __REALLY_FAST__
   int color = (2<<16) | N_MAX;
   asm volatile ("l.nios_crc r0,%[in1],%[in2],0x21"::[in1]"r"(color),[in2]"r"(delta));
   //pixel = (uint32_t *)frameBuffer;
   fxpt_4_28 cy = CY_0;
   for (int k = 0 ; k < SCREEN_HEIGHT ; k++) {
     pixel = (uint32_t*) buffer;
     fxpt_4_28 cx = CX_0;
     for (int i = 0 ; i < SCREEN_WIDTH ; i+=2) {
       asm volatile ("l.nios_rrr %[out1],%[in1],%[in2],0x20":[out1]"=r"(color):[in1]"r"(cx),[in2]"r"(cy));
       *(pixel++) = color;
       cx += delta << 1;
     }

     // DMA transfer from SPM to frameBuffer
     volatile uint32_t* dma_address = (uint32_t*) DMA_BASE_ADDRESS;
     while(*(dma_address+START_STATUS_ID) & DMA_BUSY_BIT);
     // Memory address of destination
     *(dma_address+MEMORY_ADDRESS_ID) = (uint32_t) frameBuffer+k*SCREEN_WIDTH/2;
   //   printf("Destination mem : %x \n", (uint32_t) frameBuffer+k*SCREEN_WIDTH/2);
     // SPM start address
     *(dma_address+SPM_ADDRESS_ID) = pixel;
   //   printf("SOurce spm : %x \n", buffer);
     // Buffer size
     *(dma_address+TRANSFER_SIZE_ID) = SCREEN_WIDTH/2;
   //   printf("Size : %x \n", SCREEN_WIDTH/2);
     // Burst size
     *(dma_address+START_STATUS_ID) = 0xff | DMA_FROM_MEM_TO_SPM; // 255
   //   printf("Burst : %x \n", 0xff);
     // Start DMA
     //*(dma_address+START_STATUS_ID) = DMA_FROM_SPM_TO_MEM;

     // Wait until DMA is done
      // printf("Ma bite %x \n", *(dma_address+START_STATUS_ID));
     while((*(dma_address+START_STATUS_ID) | DMA_BUSY_BIT) == DMA_BUSY_BIT){
     }
     cy += delta;
   }
#else
   draw_fractal(frameBuffer,SCREEN_WIDTH,SCREEN_HEIGHT,&calc_mandelbrot_point_soft, &iter_to_colour,CX_0,CY_0,delta,N_MAX);
#endif
   dcache_flush();
   asm volatile ("l.lwz %[out1],0(%[in1])":[out1]"=r"(pixel):[in1]"r"(frameBuffer)); // dummy instruction to wait for the flush to be finished
   perf_stop();

   printf("Done\n");
   perf_print_cycles( PERF_COUNTER_2 , "I$ misses" );
   perf_print_cycles( PERF_COUNTER_3 , "D$ misses" );
   perf_print_cycles( PERF_COUNTER_0 , "Stall time" );
   perf_print_cycles( PERF_COUNTER_1 , "Bus idle time" );
   perf_print_cycles( PERF_COUNTER_RUNTIME , "Runtime" );
}
