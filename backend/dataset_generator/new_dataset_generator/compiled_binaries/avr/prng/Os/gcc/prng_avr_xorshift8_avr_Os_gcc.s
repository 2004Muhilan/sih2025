	.file	"prng_avr_xorshift8.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_xorshift8_avr
	.type	prng_xorshift8_avr, @function
prng_xorshift8_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r25,Z
	ldi r24,lo8(8)
	mul r25,r24
	movw r18,r0
	clr __zero_reg__
	eor r18,r25
	mov r25,r18
	swap r25
	lsr r25
	andi r25,lo8(7)
	eor r25,r18
	ldi r24,lo8(16)
	mul r25,r24
	movw r18,r0
	clr __zero_reg__
	mov r24,r25
	eor r24,r18
	st Z,r24
/* epilogue start */
	ret
	.size	prng_xorshift8_avr, .-prng_xorshift8_avr
	.ident	"GCC: (GNU) 7.3.0"
