	.file	"prng_avr.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_avr_seed
	.type	prng_avr_seed, @function
prng_avr_seed:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	movw r30,r24
	std Z+1,r19
	st Z,r18
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_avr_seed, .-prng_avr_seed
.global	prng_avr_rand
	.type	prng_avr_rand, @function
prng_avr_rand:
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
	ld r20,Z
	ldd r21,Z+1
	ldi r18,lo8(77)
	ldi r19,lo8(124)
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	mul r21,r18
	add r25,r0
	clr r1
	movw r18,r24
	subi r18,-25
	sbci r19,-55
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_avr_rand, .-prng_avr_rand
.global	prng_avr_xorshift
	.type	prng_avr_xorshift, @function
prng_avr_xorshift:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	lsr r25
	mov r25,r24
	clr r24
	ror r25
	ror r24
	ldd r18,Y+1
	ldd r19,Y+2
	eor r24,r18
	eor r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r24,r25
	clr r25
	lsr r24
	ldd r18,Y+1
	ldd r19,Y+2
	eor r24,r18
	eor r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r25,r24
	clr r24
	ldd r18,Y+1
	ldd r19,Y+2
	eor r24,r18
	eor r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_avr_xorshift, .-prng_avr_xorshift
	.ident	"GCC: (GNU) 7.3.0"
