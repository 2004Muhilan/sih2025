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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldi r22,lo8(109)
	ldi r23,lo8(78)
	ldi r24,lo8(-58)
	ldi r25,lo8(65)
	call __mulsi3
	subi r22,-57
	sbci r23,-49
	sbci r24,-1
	sbci r25,-1
	andi r25,127
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
/* epilogue start */
	ret
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (GNU) 7.3.0"
