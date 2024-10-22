#include "fractal_myflpt.h"
#include <swap.h>
#include <string.h>
#include <stdio.h>

/* SOFT LIB FUNCTIONS IMPLEMENTATION */

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

// Function to multiply by two
soft_float32 soft_float_mul_two(soft_float32 f) {
    uint32_t exponent_f = get_exponent(f);

    exponent_f++;

    // If the exponent has bits over the 8 bits : overflow
    // In the IEEE754 infinity is represented by 255 in exponent 
    // and 0 in mantissa here we will return 0 in magnitude
    // and 255 in exponent which gives : 0x[01]00000FF (depending on sign)
    if (exponent_f >= 255) {
        return set_sign(0x000000FF, get_sign(f));
    }

    // If the exponent is negative and this <= 0 when bias applied, result is 0
    // Should never happen
    if (exponent_f <= 0) {
        return set_sign(0, get_sign(f));
    }

    // Encode the result into a uint32_t soft-float
    soft_float32 result = f;
    result = set_exponent(result, exponent_f);
    return result;
}

// Function to add two soft-floats
soft_float32 soft_float_add(soft_float32 a, soft_float32 b) {
    uint32_t sign_a = get_sign(a);
    uint32_t sign_b = get_sign(b);
    int32_t exponent_a = get_exponent(a);
    int32_t exponent_b = get_exponent(b);
    uint32_t magnitude_a = get_magnitude(a);
    uint32_t magnitude_b = get_magnitude(b);

    // If one of the two soft-floats is 0 return the other
    if (exponent_a == 0 && magnitude_a == 0) return b;
    if (exponent_b == 0 && magnitude_b == 0) return a;

    // Set the implicit 1 in bit 23 (24th bit)
    if (exponent_a != 0) magnitude_a |= (1 << 23);
    if (exponent_b != 0) magnitude_b |= (1 << 23);

    // Align the two soft-floats so that their comma is aligned
    if (exponent_a > exponent_b) {
        magnitude_b >>= (exponent_a - exponent_b);
        exponent_b = exponent_a;
    } else if (exponent_b > exponent_a) {
        magnitude_a >>= (exponent_b - exponent_a);
        exponent_a = exponent_b;
    } else  {
        // Already aligned
    }

    // Add or substract magnitudes
    uint32_t sign_add = sign_a;
    uint32_t magnitude_add = magnitude_a;

    if (sign_a == sign_b) {
        // Both have the same sign so just add magnitudes
        magnitude_add = magnitude_a + magnitude_b;
    } else {
        // In this case, soft floats don't have the same sign so we need to substract
        // The sign will be the sign of the largest magnitude float
        if (magnitude_a >= magnitude_b) {
            // The sign is taken from a
            magnitude_add = magnitude_a - magnitude_b;
        } else {
            // The sign is taken from b
            sign_add = sign_b;
            magnitude_add = magnitude_b - magnitude_a;
        }
    }

    // In IEEE754, 0 has exponent 0, let's keep this convention here
    // for our implementation
    // In the case where the mantissa is 0, return only zeros
    if (magnitude_add == 0) {
        return 0; 
    }

    // If there is an overflow in the add, bit 25 is set and we want to get rid of it
    // so we increment exponent and shift to the right (multiply and divide by 2)
    int32_t exponent_add = exponent_a;
    if (magnitude_add & (1 << 24)) {
        magnitude_add >>= 1;
        exponent_add++;
    } else {
        // Here we almost have the final result but it can still have 
        // 0s in the magnitude that we want to get rid of by normalizing 
        // We check each time is there is a zero at the end
        while((magnitude_add & 0x800000) == 0){
            magnitude_add <<= 1;
            exponent_add--;
        }        
    }

    // If the exponent has bits over the 8 bits : overflow
    // In the IEEE754 infinity is represented by 255 in exponent 
    // and 0 in mantissa here we will return 0 in magnitude
    // and 255 in exponent which gives : 0x[01]00000FF (depending on sign)
    if (exponent_add >= 255) {
        return set_sign(0x000000FF, sign_add); // Return infinity
    }

    // Rebuild the soft_float
    soft_float32 result = 0;
    result = set_sign(result, sign_add);
    result = set_exponent(result, exponent_add);
    result = set_magnitude(result, magnitude_add & 0x7FFFFF);

    return result;
}

// Converters from float to soft_float32

// Float to soft_float : our type is really close to float (ieee754)
// Thus let's extract each part and solely adapt exponent 
soft_float32 float_to_soft_float32(float f) {
    uint32_t float_start;

    // Copy bits from f to float_start
    memcpy(&float_start, &f, sizeof(float));

    // Extract each part of the float
    uint32_t sign = (float_start >> 31) & 0x1;
    uint32_t float_exponent = (float_start >> 23) & 0xFF;
    uint32_t float_mantissa = float_start & 0x7FFFFF;

    // Here we only need to change the exponent so that it is 
    // 250 excess instead of 127 excess
    int32_t soft_float32_exponent = float_exponent - 127 + 250;

    // Special cases : +0 -0 +inf -inf

    // +inf -inf
    if (float_exponent == 0xFF) {
        return (sign << 31) | (float_mantissa << 8) | float_exponent;
    
    // -0 +0
    } else if (float_exponent == 0 && float_mantissa == 0) { 
        return (sign << 31); // +0 or -0 depending on sign
    }
    // OK
    else {
        // Just change the place of exponent and magnitude since 
        // we kept IEEE754 standards
        soft_float32 result = (soft_float32) (sign << 31) | (float_mantissa << 8) | (soft_float32_exponent);
        return result;
    }
}

// Soft_float to float: our type is really close to float (ieee754)
// Thus let's extract each part and solely adapt exponent 
float soft_float32_to_float(soft_float32 f) {
    uint32_t float_start;

    // Copy bits from f to float_start
    memcpy(&float_start, &f, sizeof(uint32_t));

    // Extract each part of the soft_float
    uint32_t sign = get_sign(f);
    // printf("Sign : %d \n ", sign);
    uint32_t exponent = get_exponent(f);
    // printf("Exponent : %x \n", exponent);
    uint32_t magnitude = get_magnitude(f);
    // printf("Magnitude : %x \n", magnitude);

    // Here we only need to change the exponent so that it is 
    // 127 excess instead of 250 excess
    int32_t float_exponent = exponent - 250 + 127;
    // printf("Float Exponent : %x \n", float_exponent);
    // Special cases : +0 -0 +inf -inf

    // +inf -inf
    if (exponent == 0xFF) {
        return (sign << 31) | ((exponent & 0xFF) <<23) | (magnitude & 0x7FFFFF);
    
    // -0 +0
    } else if (exponent == 0 && magnitude == 0) { 
        return (sign << 31); // +0 or -0 depending on sign
    }
    // OK
    else {
        // Just change the place of exponent and magnitude since 
        // we kept IEEE754 standards
        uint32_t result = ((sign << 31) | ((float_exponent & 0xFF) << 23) | (magnitude & 0x7FFFFF));
        //print_binary(result);
        // CANT CAST UINT32T TO FLOAT WITHOUT IMPLICIT CONVERSION 
        float fl;
        memcpy(&fl, &result, sizeof(float));
        return fl;
    }
}



// Function to compare two soft_float
int soft_float_less_than(soft_float32 a, soft_float32 b) {
    uint32_t sign_a = get_sign(a);
    uint32_t sign_b = get_sign(b);

    // Negative number always inferior to positive number
    if (sign_a != sign_b) {
        return sign_a > sign_b;
    }

    // Soft_floats have the same sign, compare exponents and magnitude

    // If both are positive or both are negative, we compare magnitude

    // If both are positive, the regular comparison works (higher value is larger)
    // If both are negative, we need to reverse the comparison logic
    int reverse = (sign_a == 1); // Reverse logic for negative numbers

    // Compare exponents
    uint32_t exponent_a = get_exponent(a);
    uint32_t exponent_b = get_exponent(b);
    
    if (exponent_a != exponent_b) {
        // If exponents are different, compare normally unless we're in reverse mode
        return reverse ? (exponent_a > exponent_b) : (exponent_a < exponent_b);
    }

    // If exponents are the same, compare mantissas
    uint32_t magnitude_a = get_magnitude(a);
    uint32_t magnitude_b = get_magnitude(b);
    
    return reverse ? (magnitude_a > magnitude_b) : (magnitude_a < magnitude_b);
}

//! \brief  Mandelbrot fractal point calculation function
//! \param  cx    x-coordinate
//! \param  cy    y-coordinate
//! \param  n_max maximum number of iterations
//! \return       number of performed iterations at coordinate (cx, cy)
uint16_t calc_mandelbrot_point_soft(soft_float32 cx, soft_float32 cy, uint16_t n_max) {
  soft_float32 x = cx;
  soft_float32 y = cy;
  uint16_t n = 0;
  //soft_float32 two = 0x000000fb; // 2 in our format is 0x000000fb
  soft_float32 four = 0x000000fc; // 4 in our format is 0x000000fc
  // We could optimise multiplication by 2 by using shift and exponent modification
  soft_float32 xx, yy, xy, two_xy, xxyy, minusyy, xxplusyy;
  do {
    xx = soft_float_mul(x,x);
    yy = soft_float_mul(y,y);
    xy = soft_float_mul(x,y);
    two_xy = soft_float_mul_two(xy);
    minusyy = soft_float_change_sign(yy);
    xxyy = soft_float_add(xx, minusyy);
    x = soft_float_add(xxyy, cx);
    y = soft_float_add(two_xy, cy);
    ++n;
    //printf("n value : %d\n", n);
    xxplusyy = soft_float_add(xx,yy);
    //printf("xxplusyy : %x \n", xxplusyy);
    
  } while ((soft_float_less_than(xxplusyy, four)) && (n < n_max));
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
                  soft_float32 cx_0, soft_float32 cy_0, soft_float32 delta, uint16_t n_max) {
  rgb565 *pixel = fbuf;
  soft_float32 cy = cy_0;
  for (int k = 0; k < height; ++k) {
    soft_float32 cx = cx_0;
    for(int i = 0; i < width; ++i) {
      uint16_t n_iter = (*cfp_p)(cx, cy, n_max);
      rgb565 colour = (*i2c_p)(n_iter, n_max);
      *(pixel++) = colour;
      cx = soft_float_add(cx, delta);
    }
    cy = soft_float_add(cy, delta);
  }
}
