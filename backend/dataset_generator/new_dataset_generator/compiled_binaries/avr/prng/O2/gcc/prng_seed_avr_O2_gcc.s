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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
	movw r26,r22
	movw r24,r20
	ldi r18,101
	eor r24,r18
	ldi r18,137
	eor r25,r18
	ldi r18,7
	eor r26,r18
	ldi r18,108
	eor r27,r18
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	movw r26,r22
	movw r24,r20
	ldi r18,144
	eor r24,r18
	ldi r18,125
	eor r25,r18
	ldi r18,244
	eor r26,r18
	ldi r18,48
	eor r27,r18
	std Z+8,r24
	std Z+9,r25
	std Z+10,r26
	std Z+11,r27
	ldi r24,149
	eor r20,r24
	ldi r24,100
	eor r21,r24
	ldi r24,53
	eor r22,r24
	ldi r24,95
	eor r23,r24
	std Z+12,r20
	std Z+13,r21
	std Z+14,r22
	std Z+15,r23
/* epilogue start */
	ret
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (GNU) 7.3.0"
