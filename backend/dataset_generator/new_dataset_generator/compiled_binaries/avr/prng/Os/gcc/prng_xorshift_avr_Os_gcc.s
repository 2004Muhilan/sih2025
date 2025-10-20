	.file	"prng_xorshift.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_xorshift
	.type	prng_xorshift, @function
prng_xorshift:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r16,r24
	movw r18,r26
	ldi r20,13
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r20
	brne 1b
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	movw r26,r18
	movw r24,r16
	ldi r21,17
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r21
	brne 1b
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	movw r24,r18
	movw r22,r16
	ldi r26,5
	1:
	lsl r22
	rol r23
	rol r24
	rol r25
	dec r26
	brne 1b
	eor r22,r16
	eor r23,r17
	eor r24,r18
	eor r25,r19
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (GNU) 7.3.0"
