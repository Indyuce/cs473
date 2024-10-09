#include <stdio.h>
#include <stdint.h>

typedef int32_t fxpt_8_24;

uint32_t SIGN_MASK = 0x80000000;
uint32_t FRAC_MASK = 0x7fffffff;

fxpt_8_24 float_to_fxpt(float x);

fxpt_8_24 abs(fxpt_8_24 x);
fxpt_8_24 add(fxpt_8_24 x1, fxpt_8_24 x2);
fxpt_8_24 mul(fxpt_8_24 a, fxpt_8_24 b);
fxpt_8_24 shl1(fxpt_8_24 a);

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
    
    fxpt_8_24 x = float_to_fxpt(3.5);
    fxpt_8_24 y = float_to_fxpt(3.5);
    //fxpt_8_24 z = x + y;
    fxpt_8_24 w = mul(x, y);
    print_bits(x);
    print_bits(y);
    //print_bits(z);
    print_bits(w);
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

fxpt_8_24 add(fxpt_8_24 x1, fxpt_8_24 x2) {
    return x1 + x2;
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
