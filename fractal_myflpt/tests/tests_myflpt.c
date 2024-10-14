#include <stdio.h>
#include <stdint.h>
#include <string.h>

typedef uint32_t soft_float32;
/* SOFT LIB FUNCTIONS IMPLEMENTATION */

// Accessors and set functions to simplify interactions with soft_float32 type

// float are automatically converted to double in C WTF
union FloatBits {
    float f;
    uint32_t i;
};

void printFloatBits(float f) {
    union FloatBits fb;
    fb.f = f;
    printf("f : ");
    for (int i = 31; i >= 0; i--) {
        printf("%d", (fb.i >> i) & 1);
        if (i == 31 || i == 23) printf(" "); // Space after sign and exponent
    }
    printf("\n");
}

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

// Converters from float to soft_float32

// Float to soft_float : our type is really close to float (ieee754)
// Thus let's extract each part and solely adapt exponent 
soft_float32 float_to_soft_float32(float f) {
    uint32_t float_start;

    // Copy bits from f to float_start
    memcpy(&float_start, &f, sizeof(float));

    // Extract each part of the float
    // printFloatBits(float_start);
    uint32_t sign = (float_start >> 31) & 0x1;
    uint32_t float_exponent = (float_start >> 23) & 0xFF;
    // printf("Float exponent before conv : %x \n", float_exponent);
    uint32_t float_mantissa = float_start & 0x7FFFFF;
    // printf("Mantissa : %x\n", float_mantissa);

    // Here we only need to change the exponent so that it is 
    // 250 excess instead of 127 excess
    uint32_t soft_float32_exponent = float_exponent - 127 + 250;
    // printf("Soft float exponent : %x \n", soft_float32_exponent);
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

    // Rebuild the soft_float
    soft_float32 result = 0;
    result = set_sign(result, sign_product);
    result = set_exponent(result, exponent_product);
    result = set_magnitude(result, (uint32_t) magnitude_product); // Store only 23 bits

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



// Function to flip the MSB to change sign (avoid mul by -1)
soft_float32 soft_float_change_sign(soft_float32 f) {
    return f ^ 0x80000000;
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

void print_binary(uint32_t value) {
    for (int i = 31; i >= 0; i--) {
        printf("%d", (value >> i) & 1);
    }
    printf("\n");
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

int main(){
    // soft_float32 f1 = 0x200000FB; // 2.5 in the chosen format
    // soft_float32 f2 = 0x700000FC; // 7.5 in the chosen format

    // // result for f1 * f2 should be 18,75 d = 0x160000FE (hex)
    // // result for f1 + f2 should be 10 d = 0x20000FD (hex)

    // printf("Sign f1: %x\n", get_sign(f1));
    // printf("Sign f2: %x\n", get_sign(f2));
    // printf("Exponent f1: %x\n", get_exponent(f1));
    // printf("Exponent f2: %x\n", get_exponent(f2));
    // printf("Magnitude f1: %x\n", get_magnitude(f1));
    // printf("Magnitude f2: %x\n", get_magnitude(f2));

    // soft_float32 f3 = soft_float_mul(f1, f2);
    // printf("Sign f3: %x\n", get_sign(f3));
    // printf("Exponent f3: %x\n", get_exponent(f3));
    // printf("Magnitude f3: %x\n", get_magnitude(f3));

    // printf("f3 : %x\n", f3);

    // soft_float32 f4 = soft_float_add(f1, f2);
    // printf("Sign f4: %x\n", get_sign(f4));
    // printf("Exponent f4: %x\n", get_exponent(f4));
    // printf("Magnitude f4: %x\n", get_magnitude(f4));

    // printf("f4 : %x\n", f4);

    // float f5 = 3.5f; // 0x40600000 in IEEE754
    // printFloatBits(f5);

    // // The result in our representation should be 0x600000FB in the chosen format
    // soft_float32 f6 = float_to_soft_float32(f5);
    // printf("f6 : %x\n", f6);

    // float f7 = 2.0f; // 0x40000000 in IEEE754
    // printFloatBits(f7);

    // // The result in our representation should be in the chosen format
    // soft_float32 f8 = float_to_soft_float32(f7);
    // //f8 = soft_float_change_sign(f8);
    // printf("f8 : %x\n", f8);

    // printf("Is f8 inferior to f6 ? %d\n", soft_float_less_than(f8, f6));

    float f = -4.0f;
    float f10 = 4.0f;
    int i = 0;
    int j = 0;
    for(i = 0; i < 1000000; i++){
        f += 1e-1f;
        for(j=0; j < 1000000; j++){
            f10 -= 1e-1f;
            printf("f : %f\n", f);
            printFloatBits(f);
            printf("f10 : %f\n", f10);
            printFloatBits(f10);
            soft_float32 sf = float_to_soft_float32(f);
            soft_float32 sf10 = float_to_soft_float32(f10);

            soft_float32 addsf = soft_float_add(sf, sf10);
            
            if ((f + f10) != soft_float32_to_float(addsf)){
                printf("Error in addition :\n");
                printf("Addition float : \n");
                printFloatBits(f+f10);
                printf("Addition soft float : \n");
                printf("Addsf soft : %x \n", addsf);
                printFloatBits(soft_float32_to_float(addsf));
                return 1;
            }
        }


        // float sf = soft_float32_to_float(float_to_soft_float32(f));
        // if (f != sf) {
        //     printf("Error transcoding :");
        //     printf("f = %f\n", f);
        //     printFloatBits(f);
        //     printf("softfloat = %x\n", float_to_soft_float32(f));
        //     printf("sf = %f\n", sf);
        //     printFloatBits(sf);
        //     return 1;
        // }
        // printf(" --- float : %f\n", f);
        // printf(" --- Soft float : %f \n", sf);
    }
    printf("Transcoding OK\n");

    // Why does the number is already >= 4 ?

}