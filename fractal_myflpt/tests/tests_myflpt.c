#include <stdio.h>
#include <stdint.h>

typedef uint32_t soft_float32;
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

    printf("Magnitude a with 1 : %x\n", magnitude_a);
    printf("Magnitude b with 1 : %x\n", magnitude_b);

    // Multiply the two magnitudes (result can be on 24 + 24 bits so 48 bits)
    // That's why we store it on uint64_t
    uint64_t magnitude_product = (uint64_t)magnitude_a * (uint64_t)magnitude_b;

    printf("Product : %lx\n", magnitude_product);
    // Sign of the result : - * + = + * - = - and + * + = - * - = +
    uint32_t sign_product = get_sign(a) ^ get_sign(b);

    // Add the exponents stored as exponent_a + 250 and exponent_b + 250
    // Thus exponent_product = exp_a + exp_b + 500 
    // We substract 250 so that we store the exponent with bias 250
    int32_t exponent_product = exponent_a + exponent_b - 250;
    printf("Exponent : %x\n", exponent_product);

    // If there is an overflow on the product of magnitude,
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

    printf("Magnitude product (after shift) : %lx\n", magnitude_product);

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


int main(){
    soft_float32 f1 = 0x200000FB; // 2.5 in the chosen format
    soft_float32 f2 = 0x700000FC; // 7.5 in the chosen format

    // result for f1 * f2 should be 18,75 d = 0x0160000FE (hex)

    printf("Sign f1: %x\n", get_sign(f1));
    printf("Sign f2: %x\n", get_sign(f2));
    printf("Exponent f1: %x\n", get_exponent(f1));
    printf("Exponent f2: %x\n", get_exponent(f2));
    printf("Magnitude f1: %x\n", get_magnitude(f1));
    printf("Magnitude f2: %x\n", get_magnitude(f2));

    soft_float32 f3 = soft_float_mul(f1, f2);
    printf("Sign f3: %x\n", get_sign(f3));
    printf("Exponent f3: %x\n", get_exponent(f3));
    printf("Magnitude f3: %x\n", get_magnitude(f3));

    printf("f3 : %x\n", f3);
}