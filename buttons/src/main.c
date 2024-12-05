#include <stdio.h>
#include <stdint.h>
#include <cache.h>
#include <vga.h>
#include <switches.h>
#include <swap.h>
#include <defs.h>
#include <perf.h>

// Constants describing the output device
#define SCREEN_WIDTH 512   //!< screen width
#define SCREEN_HEIGHT 512  //!< screen height

// Constants describing the initial view port on the fractal function
const uint32_t FRAC_WIDTH = 0x30000000; 
const uint32_t CX_0 = 0xe0000000;       
const uint32_t CY_0 = 0xe8000000;       
const uint16_t N_MAX = 64;              

// global variables indicating the zoom factor and x- and y- offset for the fractal
volatile uint32_t delta, cxOff, cyOff, redraw;
uint32_t frameBuffer[(SCREEN_WIDTH * SCREEN_HEIGHT)/2];


void drawFractal(uint32_t *frameBuffer) {
  printf("Starting drawing a fractal\n");
  uint32_t color = (2<<16) | N_MAX;
  uint32_t * pixels = frameBuffer;
  asm volatile ("l.nios_crc r0,%[in1],%[in2],0x21"::[in1]"r"(color),[in2]"r"(delta));
  uint32_t cy = CY_0 + cyOff;
  for (int k = 0 ; k < SCREEN_HEIGHT ; k++) {
    uint32_t cx = CX_0 + cxOff;
    for (int i = 0 ; i < SCREEN_WIDTH ; i+=2) {
      asm volatile ("l.nios_rrr %[out1],%[in1],%[in2],0x20":[out1]"=r"(color):[in1]"r"(cx),[in2]"r"(cy));
      *(pixels++) = color;
      cx += delta << 1;
    }
    cy += delta;
  }
  dcache_flush();
  printf("Done\n");
}

void dipswitch_handler(){
  uint32_t * switches = (uint32_t *) SWITCHES_BASE_ADDRESS;
  puts("dipswitch handler");
  volatile uint32_t ouioui = *(switches + DIP_SWITCH_PRESSED_IRQ_ID);
}

void buttons_handler(){
  volatile uint32_t * switches = (uint32_t *) SWITCHES_BASE_ADDRESS;
  puts("buttons handler");
  printf("Latency : %u \n", *(switches+IRQ_LATENCY_ID));
  redraw = 1;
  volatile uint32_t ouioui = *(switches + BUTTONS_PRESSED_IRQ_ID);

}

void joystick_handler(){
  uint32_t * switches = (uint32_t *) SWITCHES_BASE_ADDRESS;
  puts("joystick handler");
  uint32_t ouioui = *(switches + BUTTONS_PRESSED_IRQ_ID);
}

void external_interrupt_handler(){
  uint32_t * switches = (uint32_t *) SWITCHES_BASE_ADDRESS;
  uint32_t dipswitch = *(switches + DIP_SWITCH_STATE_ID);
  uint32_t sw_joystick = *(switches+BUTTONS_STATE_ID);
  if(dipswitch){
    dipswitch_handler();
  }
  //Comes from a button 1 << 29,30,31,16,17
  else if (sw_joystick & 0xe0030000){
    buttons_handler();
  }
  //Comes from the joystick
  else if (sw_joystick & 0x1f000000){
    joystick_handler();
  }
  else{
    return;
    uint32_t ouioui = *(switches + CLEAR_ALL_IRQ_ID);
  }
}



int main() {
  icache_write_cfg( CACHE_DIRECT_MAPPED | CACHE_SIZE_8K );
  dcache_write_cfg( CACHE_DIRECT_MAPPED | CACHE_SIZE_8K | CACHE_WRITE_BACK );
  icache_enable(1);
  dcache_enable(1);
  perf_init();

  volatile unsigned int *vga = (unsigned int *) 0X50000020;
  uint32_t * switches = (uint32_t *) SWITCHES_BASE_ADDRESS;


  vga_clear();

  /* Enable the vga-controller's graphic mode */
  vga[0] = swap_u32(SCREEN_WIDTH);
  vga[1] = swap_u32(SCREEN_HEIGHT);
  vga[3] = swap_u32((unsigned int)&frameBuffer[0]); // disable the vga controller by commenting this line

  delta = FRAC_WIDTH / SCREEN_WIDTH;
  cxOff = 0;
  cyOff = 0;
  redraw = 1;

  // From left to right dip switches : 1000000, 2000000, 4000000, 8000000, 10000000, 20000000, 40000000, 80000000 
  // From SW1 to SW5 : 20000000, 40000000, 80000000, 10000, 200000
  // Joystick :  6 0 offset


  uint32_t button_state = 0;
  uint32_t button_previous_state = 0;
  uint32_t sw_joystick=0;
  uint32_t previous_sw_joystick=0;

  // Interrupt handlers 

  // Set SR 
  uint32_t sr = SPR_READ(SPR_SR);
  printf("SR is %x \n", sr);
  sr |= 1;
  sr |= (1 << 2);
  printf("SR %x \n", sr);
  SPR_WRITE(SPR_SR, sr);
  sr = SPR_READ(SPR_SR);
  printf("SR is %x \n", sr);

  // Set PICMR 
  uint32_t picmr = SPR_READ(SPR_PICMR);
  printf("Picmr is %x \n", picmr);
  picmr |= (1<<2);
  picmr |= (1<<3);
  SPR_WRITE(SPR_PICMR, picmr);
  picmr = SPR_READ(SPR_PICMR);
  printf("picmr is %x \n", picmr);

  // Write IRQ masks
  *(switches+DIP_SWITCH_PRESSED_IRQ_ID) = (1 << 24);
  *(switches+BUTTONS_PRESSED_IRQ_ID) = (1 << 30);

  do {
    if (redraw == 1) {
      redraw = 0;
      printf("OUI \n");
      perf_print_cycles(PERF_COUNTER_RUNTIME, "irq runtime");
      drawFractal(frameBuffer);
    }

    // // Polling on dip switch buttons
    // button_state = *(switches + DIP_SWITCH_STATE_ID);
    // if(button_state != button_previous_state){
    //   for(uint32_t i = 0; i < 8; i++){
    //     if((button_state & (1 << (24+i))) != ((button_previous_state & (1 << (24+i))))){
    //       printf("Dip switch %d pressed ! \n", i+1);
    //     }
    //   }
    // }
    // button_previous_state = button_state;

    // //Polling on SW buttons and joystick
    // sw_joystick = *(switches+BUTTONS_STATE_ID);
    // if(sw_joystick != previous_sw_joystick){
    //   // SW1,2,3 buttons
    //   for(uint32_t j=1; j <= 3; j++){
    //     if((sw_joystick & (1 << (28+j))) != (previous_sw_joystick & (1 << (28+j)))){
    //       printf("Button SW%d pressed ! \n", j);
    //     }
    //   }
    //   //Joystick
    //   if((sw_joystick & (1 << 24)) != (previous_sw_joystick & (1 << 24))){
    //     printf("West ! \n");
    //   }
    //   if((sw_joystick & (1 << 25)) != (previous_sw_joystick & (1 << 25))){
    //     printf("South ! \n");
    //   }
    //   if((sw_joystick & (1 << 26)) != (previous_sw_joystick & (1 << 26))){
    //     printf("East ! \n");
    //   }
    //   if((sw_joystick & (1 << 27)) != (previous_sw_joystick & (1 << 27))){
    //     printf("North ! \n");
    //   }
    //   if((sw_joystick & (1 << 28)) != (previous_sw_joystick & (1 << 28))){
    //     printf("Center ! \n");
    //   }

    //   //SW4,5 buttons
    //   if((sw_joystick & (1 << 16)) != (previous_sw_joystick & (1 << 16))){
    //     printf("Button SW4 pressed ! \n");
    //   }
    //   if((sw_joystick & (1 << 17)) != (previous_sw_joystick & (1 << 17))){
    //     printf("Button SW5 pressed ! \n");
    //   }
    // }
    // previous_sw_joystick = sw_joystick;
  } while(1);
}
