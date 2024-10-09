#include <stdio.h>
#include <stdint.h>

typedef int32_t fxpt_8_24;

uint32_t SIGN_MASK = 0x80000000;
uint32_t FRAC_MASK = 0x7fffffff;

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
}

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
