	.file	"prng_avr_lfsr16.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_lfsr16_avr
	.type	prng_lfsr16_avr, @function
prng_lfsr16_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r24,r18
	lsr r25
	ror r24
	sbrs r18,0
	rjmp .L4
	ldi r18,180
	eor r25,r18
.L4:
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_lfsr16_avr, .-prng_lfsr16_avr
	.ident	"GCC: (GNU) 7.3.0"
