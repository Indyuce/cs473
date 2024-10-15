#ifndef FRACTAL_FXPT_H
#define FRACTAL_FXPT_H

#include <stdint.h>

//! Colour type (5-bit red, 6-bit green, 5-bit blue)
typedef uint16_t rgb565;

typedef int32_t fxpt_8_24;

//! \brief Pointer to fractal point calculation function
typedef uint16_t (*calc_frac_point_p)(fxpt_8_24 cx, fxpt_8_24 cy, uint16_t n_max);

uint16_t calc_mandelbrot_point_soft(fxpt_8_24 cx, fxpt_8_24 cy, uint16_t n_max);

//! Pointer to function mapping iteration to colour value
typedef rgb565 (*iter_to_colour_p)(uint16_t iter, uint16_t n_max);

rgb565 iter_to_bw(uint16_t iter, uint16_t n_max);
rgb565 iter_to_grayscale(uint16_t iter, uint16_t n_max);
rgb565 iter_to_colour(uint16_t iter, uint16_t n_max);

void draw_fractal(rgb565 *fbuf, int width, int height,
                  calc_frac_point_p cfp_p, iter_to_colour_p i2c_p,
                  fxpt_8_24 cx_0, fxpt_8_24 cy_0, fxpt_8_24 delta, uint16_t n_max);

// ==================================================================================

fxpt_8_24 float_to_fxpt(float x);

/// @param x Number in Q4.28
/// @return Absolute value of parameter
fxpt_8_24 abs(fxpt_8_24 x);

/// @param a Left hand side in Q4.28
/// @param b Right hand side in Q4.28
/// @return Sum of left and right hand side
fxpt_8_24 add(fxpt_8_24 a, fxpt_8_24 b);

/// @param a Left hand side in Q4.28
/// @param b Right hand side in Q4.28
/// @return Difference of left to right hand side (a - b)
fxpt_8_24 sub(fxpt_8_24 a, fxpt_8_24 b);

/// @param b Left hand side in Q4.28
/// @param a Right hand side in Q4.28
/// @return Product of left and right hand side
fxpt_8_24 mul(fxpt_8_24 a, fxpt_8_24 b);

/// @param a Left hand side in Q4.28
/// @param b Right hand side in Q4.28
/// @return If a < b
uint32_t lt(fxpt_8_24 a, fxpt_8_24 b);

/// @brief MSG will overflow in sign bit when out of range.
/// @param a Number in Q4.28
/// @param shift Number of times to shift to the left
/// @return `a` multiplied by 2^`shift`
fxpt_8_24 mul2n(fxpt_8_24 x, uint32_t shift);

// ==================================================================================

#endif // FRACTAL_FXPT_H
