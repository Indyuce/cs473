#include <stdio.h>
#include <perf.h>
#include <swap.h>
#include <cache.h>
#include <exception.h>
#include <spr.h>
#include <vga.h>

void system_call_handler(void){
    uint32_t epc = SPR_READ(SPR_EPC); // EPC is the 0x20 special register
    printf("EPC : %08x\n", epc);
    uint32_t *inst_ptr = (uint32_t*) epc;
    uint32_t inst = *inst_ptr;
    printf("Faulting instruction EPC : %08x \n", inst);
    printf("EPC - 4: %08x\n", epc - 4);
    inst_ptr = (uint32_t*) (epc - 4);
    inst = *inst_ptr;
    printf("Faulting instruction EPC -4 : %08x \n", inst);
    uint32_t sysNum = inst & 0xFFFF;
    printf("Sysnum : %x \n", sysNum);

    if (sysNum == 0xe0){
      vga_clear();
    }
}



int main () {
   _vectors[EXCEPTION_SYSTEM_CALL] = &system_call_handler;
   /* enable the caches */
//    icache_write_cfg( CACHE_DIRECT_MAPPED | CACHE_SIZE_2K | CACHE_REPLACE_FIFO );
//    dcache_write_cfg( CACHE_FOUR_WAY | CACHE_SIZE_2K | CACHE_REPLACE_LRU | CACHE_WRITE_BACK );
//    icache_enable(1);
//    dcache_enable(1);
//    /* initialize the performance counters */
//    perf_init();
   SYSCALL(0xe0);

   printf("Hello, world from %s (%s:%2d)!\n", __func__, __FILE__, __LINE__);

   printf("no swap: 0x%04x, swap_u16: 0x%04x\n", 0xDEAD, swap_u16(0xDEAD));
   printf("no swap: 0x%08x, swap_u32: 0x%08x\n", 0xDEADBEEF, swap_u32(0xDEADBEEF));

//    perf_start();

   printf("Le fun \n");
//    while (1) {
//        perf_print_time(PERF_COUNTER_RUNTIME, "runtime");
//        perf_print_cycles(PERF_COUNTER_RUNTIME, "runtime");
//        for (volatile int i = 0; i < 1000000; ++i) ;
//    }
//    perf_stop();

   return 0;
}
