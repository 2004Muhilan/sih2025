	.file	"prng_seed.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_seed
	.type	prng_seed, @function
prng_seed:
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
	std Y+2,r25
	std Y+1,r24
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldi r31,101
	eor r24,r31
	ldi r31,137
	eor r25,r31
	ldi r31,7
	eor r26,r31
	ldi r31,108
	eor r27,r31
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldi r31,144
	eor r24,r31
	ldi r31,125
	eor r25,r31
	ldi r31,244
	eor r26,r31
	ldi r31,48
	eor r27,r31
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	std Z+8,r24
	std Z+9,r25
	std Z+10,r26
	std Z+11,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldi r31,149
	eor r24,r31
	ldi r31,100
	eor r25,r31
	ldi r31,53
	eor r26,r31
	ldi r31,95
	eor r27,r31
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	std Z+12,r24
	std Z+13,r25
	std Z+14,r26
	std Z+15,r27
	nop
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
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (GNU) 7.3.0"
