#include "fractal_fxpt.h"
#include <swap.h>

//! \brief  Mandelbrot fractal point calculation function
//! \param  cx    x-coordinate
//! \param  cy    y-coordinate
//! \param  n_max maximum number of iterations
//! \return       number of performed iterations at coordinate (cx, cy)
uint16_t calc_mandelbrot_point_soft(fxpt_8_24 cx, fxpt_8_24 cy, uint16_t n_max) {
  fxpt_8_24 x = cx;
  fxpt_8_24 y = cy;
  uint16_t n = 0;
  fxpt_8_24 xx, yy, two_xy;

  fxpt_8_24 threshold = float_to_fxpt(4);

  do {
    xx = mul(x, x);
    yy = mul(y, y);
    two_xy = mul2n(mul(x, y), 1); // Small optimization: . * 2 <=> . << 1

    x = add(sub(xx, yy), cx);
    y = add(two_xy, cy);
    ++n;
  } while (lt(add(xx, yy), threshold) && (n < n_max));

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

///////////////////////////////////////////////////////////////////////////////////////////

uint32_t SIGN_MASK = 0x80000000;
uint32_t FRAC_MASK = 0x7fffffff;

#define print_bits(x)                                            \
  do {                                                           \
    unsigned long long a__ = (x);                                \
    size_t bits__ = sizeof(x) * 8;                               \
    printf(#x ": ");                                             \
    while (bits__--) putchar(a__ &(1ULL << bits__) ? '1' : '0'); \
    putchar('\n');                                               \
  } while (0)

int main() {
    
    /*
    fxpt_8_24 x = float_to_fxpt(6);
    int32_t y = signd(x);
    fxpt_8_24 z = unsignd(y);
    print_bits(*(int32_t*) &x);
    print_bits(*(int32_t*) &y);
    print_bits(z);
    */
    
    fxpt_8_24 x = float_to_fxpt(2);
    fxpt_8_24 y = float_to_fxpt(3);
    //fxpt_8_24 z = x + y;
    fxpt_8_24 w = mul(x, y);
    print_bits(x);
    print_bits(y);
    //print_bits(z);
    print_bits(w);
}()

uint32_t lt(fxpt_8_24 a, fxpt_8_24 b) {
    return a < b;
}

fxpt_8_24 abs(fxpt_8_24 x) {
    if (x < 0) {
        return -x;
    } else {
        return x;
    }
}

fxpt_8_24 mul(fxpt_8_24 a, fxpt_8_24 b) {
    uint32_t a_abs = abs(a);
    uint32_t b_abs = abs(b);
    
    uint32_t high_a = a_abs >> 16;
    uint32_t low_a = a_abs & 0xFFFF;
    uint32_t high_b = b_abs >> 16;
    uint32_t low_b = b_abs & 0xFFFF;
    
    uint64_t result = ((uint64_t)high_a * high_b) << 32;
    result += ((uint64_t)high_a * low_b) << 16;
    result += ((uint64_t)low_a * high_b) << 16;
    result += low_a * low_b;

    result >>= 28;
    uint32_t cropped = (uint32_t) result; // Crop the result

    if ((a < 0) ^ (b < 0)) {
        return -result;
    } else {
        return result;
    }
}

fxpt_8_24 mul2n(fxpt_8_24 a, uint32_t shift) {
    fxpt_8_24 a_abs = abs(a);                  // Take absolute value
    uint32_t shifted = * (uint32_t*) &a_abs;   // Unsign integer
    shifted <<= shift;                         // Shift by n
    fxpt_8_24 result = * (uint32_t*) &shifted; // Sign integer again

    // Fix sign
    if (a < 0) {
        return -result;
    } else {
        return result;
    }
}

fxpt_8_24 add(fxpt_8_24 a, fxpt_8_24 b) {
    return a + b;
}

fxpt_8_24 sub(fxpt_8_24 a, fxpt_8_24 b) {
    return a - b;
}

fxpt_8_24 float_to_fxpt(float x) {

    uint32_t as_int = * (uint32_t*) &x;
    uint32_t exponent = ((as_int >> 23) & 0xff) - 127; // Extract exponent from fp32
    
    uint32_t mantissa = as_int & 0x7FFFFF; // Extract mantissa
    mantissa += 0x800000; // Add missing 1 in front of mantissa
    mantissa <<= 5 + exponent; // Left shift

    // 2-complement if needed
    if (x < 0) {
        mantissa = SIGN_MASK | (~mantissa + 1);
    }

    // Interpret it as a signed integer
    return * (fxpt_8_24*) &mantissa;
}
