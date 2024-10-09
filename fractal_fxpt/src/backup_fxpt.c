#include <stdio.h>
#include <stdint.h>

typedef uint32_t fxpt_8_24;

fxpt_8_24 int_to_fxpt(uint32_t x);
fxpt_8_24 float_to_fxpt(float x);
fxpt_8_24 add(fxpt_8_24 x1, fxpt_8_24 x2);

int32_t signd(fxpt_8_24 x);
fxpt_8_24 unsignd(int32_t x);

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
    fxpt_8_24 x = float_to_fxpt(-6);
    int32_t y = signd(x);
    fxpt_8_24 z = unsignd(y);
    print_bits(*(int32_t*) &x);
    print_bits(*(int32_t*) &y);
    print_bits(z);
    */

    fxpt_8_24 x = float_to_fxpt(-3.0f);
    fxpt_8_24 y = float_to_fxpt(2.0f);
    fxpt_8_24 z = add(x, y);
    print_bits(x);
    print_bits(y);
    print_bits(z);
}

fxpt_8_24 fxpt_one = 0x1000000;


/*
fxpt_8_24 signd(fxpt_8_24 x);
fxpt_8_24 unsignd(fxpt_8_24 x);

fxpt_8_24 signd(uint32_t x) {
    if (x & SIGN_MASK) {
        // x is negative
        return ~(x & FRAC_MASK) + 1;
    } else {
        // x is positive
        return x;
    }
}

fxpt_8_24 unsignd(fxpt_8_24 x) {
    if (x & SIGN_MASK) {
        // x is negative
        return (~x + 1) | SIGN_MASK;
    } else {
        // x is positive
        return x;
    }
}*/


int32_t signd(fxpt_8_24 x) {
    if (x & 0x80000000) {
        // x is negative
        return -((int32_t) (x & 0x7fffffff));
    } else {
        // x is positive
        return (int32_t) x;
    }
}

fxpt_8_24 unsignd(int32_t x) {
    if (x & 0x80000000) {
        // x is negative
        return ((uint32_t) -x) | 0x80000000;
    } else {
        // x is positive
        return (uint32_t) x;
    }
}

fxpt_8_24 add(fxpt_8_24 x1, fxpt_8_24 x2) {
    return unsignd(signd(x1) + signd(x2));
}

fxpt_8_24 add(fxpt_8_24 x1, fxpt_8_24 x2) {
    return unsignd(signd(x1) + signd(x2));
    /*

    uint32_t x1_neg = x1 & 0x80000000;
    uint32_t x2_neg = x2 & 0x80000000;

    if (!x1_neg && !x2_neg) {

        // Simply add
        return x1 + x2;
    } else if (x1_neg && x2_neg) {
        
        // Add and switch back on the sign bit
        return (x1 + x2) | 0x80000000;
    } else if (!x1_neg && x2_neg) {

        // convertir n.2^23 en entiers signé
        // soustraction
        // entier signé => fixed point
        return x1 + (~(x2 & 0x7fffffff) + fxpt_one);
    } else {

        printf("ta mere\n");

        // Permute x1 and x2 in previous case
        return x2 + (~(x1 & 0x7fffffff) + fxpt_one);
    }
    */
}

fxpt_8_24 int_to_fxpt(uint32_t x) {
    return x << 28;
}

fxpt_8_24 float_to_fxpt(float x) {

    uint32_t float_as_int = * (uint32_t*) &x;
    uint32_t exponent = ((float_as_int >> 23) & 0xff) - 127;
    
    uint32_t mantissa = float_as_int & 0x7FFFFF; // extract mantissa
    mantissa += 0x800000; // add missing 1 in front of mantissa
    mantissa <<= 5 + exponent; // left shift

    // sign bit
    if (x < 0) {
        mantissa |= 0x80000000;
    }

    return mantissa;
}

