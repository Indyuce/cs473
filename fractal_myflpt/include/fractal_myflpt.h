#ifndef FRACTAL_MYFLPT_H
#define FRACTAL_MYFLPT_H

#include <stdint.h>

//! Colour type (5-bit red, 6-bit green, 5-bit blue)
typedef uint16_t rgb565;

//! Floating point format type definition
//! Using the proposed floating point format :
// 1 sign bit | 23 bits magnitude (not including implicit 1) | 8 bits exponent  
typedef uint32_t soft_float32;

/* SOFT LIB FUNCTIONS DECLARATION */

// Accessors and set functions to simplify interactions with soft_float32 type

// Extract the sign (bit 31)
static inline uint32_t get_sign(soft_float32 f) {
    return (f >> 31) & 0x1;
}

// Extract the exponent (bits 7-0)
static inline uint32_t get_exponent(soft_float32 f) {
    return f & 0xFF;
}

// Extract the magnitude (bits 30-8)
static inline uint32_t get_magnitude(soft_float32 f) {
    return (f >> 8) & 0x7FFFFF;
}

// Set the sign (bit 31) : reset 31st bit of f and or it with sign shifted by 31
static inline soft_float32 set_sign(soft_float32 f, uint32_t sign) {
    return (f & ~(1U << 31)) | ((sign & 0x1) << 31);
}

// Set the exponent (bits 7-0) : reset exponent bits and or it with exponent
static inline soft_float32 set_exponent(soft_float32 f, uint32_t exponent) {
    return (f & ~0xFF) | ((exponent & 0xFF) );
}

// Set the magnitude (bits 30-8) : reset magnitude bits and or it with magnitude shifted by 8
static inline soft_float32 set_magnitude(soft_float32 f, uint32_t magnitude) {
    return (f & ~(0x7FFFFF << 8)) | ((magnitude & 0x7FFFFF) << 8);
}

// Function to flip the MSB to change sign (avoid mul by -1)
static inline soft_float32 soft_float_change_sign(soft_float32 f) {
    return f ^ 0x80000000;
}

soft_float32 soft_float_mul(soft_float32 a, soft_float32 b);
soft_float32 soft_float_mul_two(soft_float32 f);
soft_float32 soft_float_add(soft_float32 a, soft_float32 b);
soft_float32 float_to_soft_float32(float f);
float soft_float32_to_float(soft_float32 f);
int soft_float_less_than(soft_float32 a, soft_float32 b);



//! \brief Pointer to fractal point calculation function
typedef uint16_t (*calc_frac_point_p)(soft_float32 cx, soft_float32 cy, uint16_t n_max);

uint16_t calc_mandelbrot_point_soft(soft_float32 cx, soft_float32 cy, uint16_t n_max);

//! Pointer to function mapping iteration to colour value
typedef rgb565 (*iter_to_colour_p)(uint16_t iter, uint16_t n_max);

rgb565 iter_to_bw(uint16_t iter, uint16_t n_max);
rgb565 iter_to_grayscale(uint16_t iter, uint16_t n_max);
rgb565 iter_to_colour(uint16_t iter, uint16_t n_max);

void draw_fractal(rgb565 *fbuf, int width, int height,
                  calc_frac_point_p cfp_p, iter_to_colour_p i2c_p,
                  soft_float32 cx_0, soft_float32 cy_0, soft_float32 delta, uint16_t n_max);

#endif // FRACTAL_MYFLPT_H
