#include <stdio.h>
#include <stdint.h>

typedef struct {
    uint32_t sign;        // 1 bit for sign
    uint32_t exponent;    // 8 bits for exponent
    uint32_t significand; // 23 bits for significand (mantissa)
} soft_float;

// Function to create a soft float from a float
soft_float float_to_soft_float(float value) {
    soft_float result;
    uint32_t bits = *((uint32_t*)&value);

    result.sign = (bits >> 31) & 0x1;
    result.exponent = (bits >> 23) & 0xFF;
    result.significand = bits & 0x7FFFFF;

    return result;
}

// Function to convert soft float to float
float soft_float_to_float(soft_float sf) {
    uint32_t bits = (sf.sign << 31) | (sf.exponent << 23) | sf.significand;
    return *((float*)&bits);
}

// Function to add two soft floats
soft_float add_soft_floats(soft_float a, soft_float b) {
    // Handle zero cases directly
    if (a.exponent == 0 && a.significand == 0) return b; // a is zero
    if (b.exponent == 0 && b.significand == 0) return a; // b is zero

    // Step 1: Align the significands
    if (a.exponent < b.exponent) {
        a.significand >>= (b.exponent - a.exponent);
        a.exponent = b.exponent;
    } else {
        b.significand >>= (a.exponent - b.exponent);
        b.exponent = a.exponent;
    }

    // Step 2: Perform the addition or subtraction
    uint32_t result_significand;
    if (a.sign == b.sign) {
        // Same sign, add significands
        result_significand = a.significand + b.significand;
        // Keep the sign
        result_significand |= 0x800000; // Set the implicit leading bit
    } else {
        // Different signs, subtract significands
        if (a.significand >= b.significand) {
            result_significand = a.significand - b.significand;
            result_significand |= 0x800000; // Set the implicit leading bit
        } else {
            result_significand = b.significand - a.significand;
            // Result takes sign of the larger magnitude
            a.sign = b.sign;
        }
    }

    // Step 3: Normalize the result
    soft_float result;
    if (result_significand == 0) {
        // Result is zero
        result.sign = 0;
        result.exponent = 0;
        result.significand = 0;
        return result;
    }

    // Find the position of the highest set bit
    int shift = 0;
    while ((result_significand & (1 << 23)) == 0) {
        result_significand <<= 1;
        shift++;
    }

    // Adjust exponent and significand
    result.exponent = a.exponent - shift + 127; // Adjust exponent to match IEEE 754 bias
    result.significand = result_significand >> 1; // Remove the implicit leading bit

    // Step 4: Handle rounding (Round to nearest)
    if (result.significand & (1 << (23 - 1))) { // Check the bit to round
        result.significand++;
        if (result.significand >> 23) {
            // Overflow in significand, increment exponent
            result.significand &= 0x7FFFFF; // Keep only lower 23 bits
            result.exponent++;
        }
    }

    // Set the sign
    result.sign = a.sign; // Result takes sign of the first operand

    return result;
}

// Test the soft float addition
int main() {
    float a_value = 1.5f; // Example value
    float b_value = 2.5f; // Example value

    soft_float a = float_to_soft_float(a_value);
    soft_float b = float_to_soft_float(b_value);
    soft_float result = add_soft_floats(a, b);

    float result_value = soft_float_to_float(result);
    printf("Result: %f\n", result_value);

    return 0;
}
