	.file	"prng_lcg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_lcg
	.type	prng_lcg, @function
prng_lcg:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r18,r24
	movw r20,r26
	ldi r22,lo8(109)
	ldi r23,lo8(78)
	ldi r24,lo8(-58)
	ldi r25,lo8(65)
	call __mulsi3
	movw r26,r24
	movw r24,r22
	subi r24,-57
	sbci r25,-49
	sbci r26,-1
	sbci r27,-1
	andi r27,127
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r22,r24
	movw r24,r26
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (GNU) 7.3.0"
