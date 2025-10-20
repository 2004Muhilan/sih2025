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
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r23
	ldi r23,13
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r23
	brne 1b
	mov r23,r0
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r23
	ldi r23,17
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	movw r18,r24
	movw r20,r26
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (GNU) 7.3.0"
