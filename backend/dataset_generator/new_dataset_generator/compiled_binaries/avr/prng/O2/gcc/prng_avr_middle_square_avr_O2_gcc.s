	.file	"prng_avr_middle_square.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_middle_square_avr
	.type	prng_middle_square_avr, @function
prng_middle_square_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	mul r24,r24
	movw r18,r0
	mul r24,r25
	add r19,r0
	add r19,r0
	clr r1
	movw r24,r18
	ldi r27,0
	ldi r26,0
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_middle_square_avr, .-prng_middle_square_avr
	.ident	"GCC: (GNU) 7.3.0"
