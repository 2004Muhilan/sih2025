	.file	"prng_avr_multiply_carry.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_mwc_avr
	.type	prng_mwc_avr, @function
prng_mwc_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r20,Z
	ldd r21,Z+1
	ldi r24,lo8(80)
	ldi r25,lo8(70)
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	mul r21,r24
	add r19,r0
	clr r1
	movw r26,r22
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r24,r18
	adc r25,r19
	st X+,__zero_reg__
	st X,__zero_reg__
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_mwc_avr, .-prng_mwc_avr
	.ident	"GCC: (GNU) 7.3.0"
