/*
 * From wikipedia, implmentation by John Regehr
 * Shift opperations in C are only defined for shift values which are
 * not negative and smaller than sizeof(value) * CHAR_BIT.
 * The mask, used with bitwise-and (&), prevents undefined behaviour
 * when the shift count is 0 or >= the width of the unsigned int.
 */

#include <stdint.h> // for uing32_t, to get 32-bit-wide rotates, regardless of
		    // the size of int
#include <limits.h> // for CHAR_BIT

uint32_t rotl32 (uint32_t value, unsigned int count) {
	const unsigned int mask = CHAR_BIT * sizeof(value) - 1;
	count &= mask;
	return (value << count) | (value >> (-count & mask));
}

uint32_t rotr32 (uint32_t value, unsigned int count) {
	const unsigned int mask = CHAR_BIT * sizeof(value) - 1;
	count &= mask;
	return (value >> count) | (value << (-count & mask));
}
