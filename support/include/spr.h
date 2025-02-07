#ifndef SPR_H_INCLUDED
#define SPR_H_INCLUDED

#include <defs.h>
#include <stdint.h>

/**
 * @brief Read a special purpose register.
 * `id` should be an integer literal.
 *
 */
#define SPR_READ(id) ({                                                   \
    uint32_t r;                                                           \
    asm volatile("l.mfspr %[out1],r0," STRINGIZE(id) : [out1] "=r"(r) :); \
    r;                                                                    \
})

/**
 * @brief Read a special purpose register. `id` will be ORed with `extra`.
 * `id` should be an integer literal, `extra` can be a variable.
 *
 */
#define SPR_READ2(id, extra) ({                                                                \
    uint32_t r;                                                                                \
    asm volatile("l.mfspr %[out1],%[in1]," STRINGIZE(id) : [out1] "=r"(r) : [in1] "r"(extra)); \
    r;                                                                                         \
})

/**
 * @brief Writes a special purpose register.
 * `id` should be an integer literal.
 *
 */
#define SPR_WRITE(id, r) \
    asm volatile("l.mtspr r0,%[in1]," STRINGIZE(id)::[in1] "r"(r))

/**
 * @brief Writes a special purpose register. `id` will be ORed with `extra`.
 * `id` should be an integer literal, `extra` can be a variable.
 *
 */
#define SPR_WRITE2(id, extra, r) \
    asm volatile("l.mtspr %[in1],%[in2]," STRINGIZE(id)::[in1] "r"(extra), [in2] "r"(r))


// A 16-bit SPR address is made of 5-bit group index (bits 15-11) and 11-bit register index (bits 10-0)
#define SPR_EEA 0x30
#define SPR_EPC 0x20
#define SPR_ESR 0x40
#define SPR_SR  0x11 // Reg 17
#define SPR_PICMR 0x4800 // Group 9 reg 0

#endif /* SPR_H_INCLUDED */
