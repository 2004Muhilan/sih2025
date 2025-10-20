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
	ld r20,Z
	ldd r21,Z+1
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	mul r21,r18
	add r25,r0
	clr r1
	movw r24,r24
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	movw r18,r24
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
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
	.size	prng_middle_square_avr, .-prng_middle_square_avr
	.ident	"GCC: (GNU) 7.3.0"
