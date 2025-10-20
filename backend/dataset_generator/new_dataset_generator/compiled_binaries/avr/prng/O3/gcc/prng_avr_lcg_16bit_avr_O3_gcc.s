	.file	"prng_avr_lcg_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_lcg_16bit_avr
	.type	prng_lcg_16bit_avr, @function
prng_lcg_16bit_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r20,Z
	ldd r21,Z+1
	ldi r24,lo8(85)
	ldi r25,lo8(98)
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	mul r21,r24
	add r19,r0
	clr r1
	movw r24,r18
	subi r24,-25
	sbci r25,-55
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_lcg_16bit_avr, .-prng_lcg_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"
