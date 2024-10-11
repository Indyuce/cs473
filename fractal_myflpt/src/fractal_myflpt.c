#include "fractal_myflpt.h"
#include <swap.h>

/* SOFT LIB FUNCTIONS IMPLEMENTATION */

// Accessors and set functions to simplify interactions with float type

// Extract the sign (bit 31)
uint32_t get_sign(soft_float32 f) {
    return (f >> 31) & 0x1;
}

// Extract the exponent (bits 7-0)
uint32_t get_exponent(soft_float32 f) {
    return f & 0xFF;
}

// Extract the magnitude (bits 30-8)
uint32_t get_magnitude(soft_float32 f) {
    return (f >> 8) & 0x7FFFFF;
}

// Set the sign (bit 31) : reset 31st bit of f and or it with sign shifted by 31
soft_float32 set_sign(soft_float32 f, uint32_t sign) {
    return (f & ~(1U << 31)) | ((sign & 0x1) << 31);
}

// Set the exponent (bits 7-0) : reset exponent bits and or it with exponent
soft_float32 set_exponent(soft_float32 f, uint32_t exponent) {
    return (f & ~0xFF) | ((exponent & 0xFF) );
}

// Set the magnitude (bits 30-8) : reset magnitude bits and or it with magnitude shifted by 8
soft_float32 set_magnitude(soft_float32 f, uint32_t magnitude) {
    return (f & ~(0x7FFFFF << 8)) | ((magnitude & 0x7FFFFF) << 8);
}

// Function to multiply two soft-floats
soft_float32 soft_float_mul(soft_float32 a, soft_float32 b) {
    uint32_t exponent_a = get_exponent(a);
    uint32_t exponent_b = get_exponent(b);
    uint32_t magnitude_a = get_magnitude(a);
    uint32_t magnitude_b = get_magnitude(b);

    // Need to add the implicit 1 in bit 23 when the exponent is different from 0
    if (exponent_a != 0) magnitude_a |= (1 << 23);
    if (exponent_b != 0) magnitude_b |= (1 << 23);

    // Multiply the two magnitudes (result can be on 24 + 24 bits so 48 bits)
    // That's why we store it on uint64_t
    uint64_t magnitude_product = (uint64_t)magnitude_a * (uint64_t)magnitude_b;

    // Sign of the result : - * + = + * - = - and + * + = - * - = +
    uint32_t sign_product = get_sign(a) ^ get_sign(b);

    // Add the exponents and substract 250
    int32_t exponent_product = exponent_a + exponent_b - 250;

    // If there is an overflow on the product of magnitude,
    // For example in the worst case  (0xFFFFFF * OxFFFFFF),
    // The 47th bit is set and we want to get rid of it
    // Doing so is incrementing the exponent (divide by 2 and exponent +1)
    // Then we trim excess bits so that the result fits into 24 bits again
    if (magnitude_product & (1ULL << 47)) {
        magnitude_product >>= 24;
        exponent_product++;
    } else {
      // In this case, no excess bit (bit 47 = 0) so we shift by
      // 23 so that the product is on 24 bits
        magnitude_product >>= 23;
    }

    // Remove the implicit one at bit 23 (24th bit)
    magnitude_product &= 0x7FFFFF;

    // If the exponent has bits over the 8 bits : overflow
    // In the IEEE754 infinity is represented by 255 in exponent 
    // and 0 in mantissa here we will return 0 in magnitude
    // and 255 in exponent which gives : 0x[01]00000FF (depending on sign)
    if (exponent_product >= 255) {
        return set_sign(0x000000FF, sign_product);
    }

    // If the exponent is negative and this <= 0 when bias applied, result is 0
    if (exponent_product <= 0) {
        return set_sign(0, sign_product);
    }

    // Encode the result into a uint32_t soft-float
    soft_float32 result = 0;
    result = set_sign(result, sign_product);
    result = set_exponent(result, exponent_product);
    result = set_magnitude(result, (uint32_t) magnitude_product); // Store only 23 bits

    return result;
}

//! \brief  Mandelbrot fractal point calculation function
//! \param  cx    x-coordinate
//! \param  cy    y-coordinate
//! \param  n_max maximum number of iterations
//! \return       number of performed iterations at coordinate (cx, cy)
uint16_t calc_mandelbrot_point_soft(float cx, float cy, uint16_t n_max) {
  float x = cx;
  float y = cy;
  uint16_t n = 0;
  float xx, yy, two_xy;
  do {
    xx = x * x;
    yy = y * y;
    two_xy = 2 * x * y;

    x = xx - yy + cx;
    y = two_xy + cy;
    ++n;
  } while (((xx + yy) < 4) && (n < n_max));
  return n;
}


//! \brief  Map number of performed iterations to black and white
//! \param  iter  performed number of iterations
//! \param  n_max maximum number of iterations
//! \return       colour
rgb565 iter_to_bw(uint16_t iter, uint16_t n_max) {
  if (iter == n_max) {
    return 0x0000;
  }
  return 0xffff;
}


//! \brief  Map number of performed iterations to grayscale
//! \param  iter  performed number of iterations
//! \param  n_max maximum number of iterations
//! \return       colour
rgb565 iter_to_grayscale(uint16_t iter, uint16_t n_max) {
  if (iter == n_max) {
    return 0x0000;
  }
  uint16_t brightness = iter & 0xf;
  return swap_u16(((brightness << 12) | ((brightness << 7) | brightness<<1)));
}


//! \brief Calculate binary logarithm for unsigned integer argument x
//! \note  For x equal 0, the function returns -1.
int ilog2(unsigned x) {
  if (x == 0) return -1;
  int n = 1;
  if ((x >> 16) == 0) { n += 16; x <<= 16; }
  if ((x >> 24) == 0) { n += 8; x <<= 8; }
  if ((x >> 28) == 0) { n += 4; x <<= 4; }
  if ((x >> 30) == 0) { n += 2; x <<= 2; }
  n -= x >> 31;
  return 31 - n;
}


//! \brief  Map number of performed iterations to a colour
//! \param  iter  performed number of iterations
//! \param  n_max maximum number of iterations
//! \return colour in rgb565 format little Endian (big Endian for openrisc)
rgb565 iter_to_colour(uint16_t iter, uint16_t n_max) {
  if (iter == n_max) {
    return 0x0000;
  }
  uint16_t brightness = (iter&1)<<4|0xF;
  uint16_t r = (iter & (1 << 3)) ? brightness : 0x0;
  uint16_t g = (iter & (1 << 2)) ? brightness : 0x0;
  uint16_t b = (iter & (1 << 1)) ? brightness : 0x0;
  return swap_u16(((r & 0x1f) << 11) | ((g & 0x1f) << 6) | ((b & 0x1f)));
}

rgb565 iter_to_colour1(uint16_t iter, uint16_t n_max) {
  if (iter == n_max) {
    return 0x0000;
  }
  uint16_t brightness = ((iter&0x78)>>2)^0x1F;
  uint16_t r = (iter & (1 << 2)) ? brightness : 0x0;
  uint16_t g = (iter & (1 << 1)) ? brightness : 0x0;
  uint16_t b = (iter & (1 << 0)) ? brightness : 0x0;
  return swap_u16(((r & 0xf) << 12) | ((g & 0xf) << 7) | ((b & 0xf)<<1));
}

//! \brief  Draw fractal into frame buffer
//! \param  width  width of frame buffer
//! \param  height height of frame buffer
//! \param  cfp_p  pointer to fractal function
//! \param  i2c_p  pointer to function mapping number of iterations to colour
//! \param  cx_0   start x-coordinate
//! \param  cy_0   start y-coordinate
//! \param  delta  increment for x- and y-coordinate
//! \param  n_max  maximum number of iterations
void draw_fractal(rgb565 *fbuf, int width, int height,
                  calc_frac_point_p cfp_p, iter_to_colour_p i2c_p,
                  float cx_0, float cy_0, float delta, uint16_t n_max) {
  rgb565 *pixel = fbuf;
  float cy = cy_0;
  for (int k = 0; k < height; ++k) {
    float cx = cx_0;
    for(int i = 0; i < width; ++i) {
      uint16_t n_iter = (*cfp_p)(cx, cy, n_max);
      rgb565 colour = (*i2c_p)(n_iter, n_max);
      *(pixel++) = colour;
      cx += delta;
    }
    cy += delta;
  }
}
