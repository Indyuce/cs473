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
#include <main.h>

#define __REALLY_FAST__
#define SPM_BASE_ADDRESS 0XC0000000
#define BURST_SIZE 0x000000ff;

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
   //for (int i = 0 ; i < SCREEN_WIDTH*SCREEN_HEIGHT ; i++) frameBuffer[i]=0;

   #if 0
   // Define buffer in SPM region, initialize to 0
   volatile uint32_t* spm_buffer = (volatile uint32_t*) SPM_BASE_ADDRESS;
   for (int i = 0; i < SCREEN_WIDTH / 2; i++){
      spm_buffer[i] = 0xafafafaf;
   }
   printf("SPM Fuffer = %x ... %x \n", spm_buffer[0], spm_buffer[SCREEN_WIDTH / 2 - 1]);

   volatile uint32_t* DMA_BASE = (volatile uint32_t*) DMA_BASE_ADDRESS;
  
   // Specify location of frame buffer in RAM to DMA
   *(DMA_BASE + MEMORY_ADDRESS_ID) = swap_u32((unsigned int) &frameBuffer[0]);
   printf("DMA - FB address: %x, expecting %x \n", swap_u32(*(DMA_BASE + MEMORY_ADDRESS_ID)), frameBuffer);

   // Specify location of SPM buffer to DMA
   *(DMA_BASE + SPM_ADDRESS_ID) = swap_u32((unsigned int) SPM_BASE_ADDRESS);
   printf("DMA - SPM Address: %x, expecting %x \n", swap_u32(*(DMA_BASE + SPM_ADDRESS_ID)), SPM_BASE_ADDRESS);
   
   // Size of the buffer to transfer (in 32-bit words)
   *(DMA_BASE + TRANSFER_SIZE_ID) = swap_u32(SCREEN_WIDTH / 2);
   printf("DMA - Transfer size: %d, expecting %d \n", swap_u32(*(DMA_BASE + TRANSFER_SIZE_ID)), SCREEN_WIDTH / 2);
   
   // Start DMA transfer + give
   uint32_t burst_size = BURST_SIZE;
   *(DMA_BASE + START_STATUS_ID) = swap_u32(DMA_FROM_SPM_TO_MEM | burst_size);
   printf("Value of Status Register: %x \n", swap_u32(*(DMA_BASE + START_STATUS_ID)));

   // Wait until DMA is done transferring data
   uint32_t busy_bit = DMA_BUSY_BIT;
   while(  swap_u32(*(DMA_BASE + START_STATUS_ID)) & busy_bit  ) {
      printf("DMA busy..\n");
   }

   printf("MEM Buffer = %x ... %x \n", frameBuffer[0], frameBuffer[SCREEN_WIDTH]);
   #endif

   perf_start();


#ifdef __REALLY_FAST__

   uint32_t burst_size = BURST_SIZE;
   uint32_t busy_bit = DMA_BUSY_BIT;
   int color = (2<<16) | N_MAX;
   asm volatile ("l.nios_crc r0,%[in1],%[in2],0x21"::[in1]"r"(color),[in2]"r"(delta));
   fxpt_4_28 cy = CY_0;
   for (int k = 0 ; k < SCREEN_HEIGHT ; k++) {
      fxpt_4_28 cx = CX_0;

      volatile uint32_t* spm_buffer = (volatile uint32_t*) SPM_BASE_ADDRESS;
      volatile uint32_t* DMA_BASE = (volatile uint32_t*) DMA_BASE_ADDRESS;

      for (int i = 0 ; i < SCREEN_WIDTH ; i+=2) {
         asm volatile ("l.nios_rrr %[out1],%[in1],%[in2],0x20":[out1]"=r"(color):[in1]"r"(cx),[in2]"r"(cy));
         *(spm_buffer++) = color;
         cx += delta << 1;
      }

      *(DMA_BASE + MEMORY_ADDRESS_ID) = swap_u32((unsigned int) (frameBuffer + k * SCREEN_WIDTH)); // memory loc
      *(DMA_BASE + SPM_ADDRESS_ID) = swap_u32((unsigned int) SPM_BASE_ADDRESS); // spm loc
      *(DMA_BASE + TRANSFER_SIZE_ID) = swap_u32(SCREEN_WIDTH / 2); // size of buffer
      *(DMA_BASE + START_STATUS_ID) = swap_u32(DMA_FROM_SPM_TO_MEM | burst_size); // start transfer

      while(  swap_u32(*(DMA_BASE + START_STATUS_ID)) & busy_bit  ) {
         printf("DMA busy..\n");
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
