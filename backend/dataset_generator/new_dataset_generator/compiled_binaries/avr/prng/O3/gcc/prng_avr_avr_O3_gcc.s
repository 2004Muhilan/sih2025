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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,r23
	st Z,r22
/* epilogue start */
	ret
	.size	prng_avr_seed, .-prng_avr_seed
.global	prng_avr_rand
	.type	prng_avr_rand, @function
prng_avr_rand:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r20,Z
	ldd r21,Z+1
	ldi r24,lo8(77)
	ldi r25,lo8(124)
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	mul r21,r24
	add r19,r0
	clr r1
	movw r24,r18
	subi r24,-25
	sbci r25,-55
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_avr_rand, .-prng_avr_rand
.global	prng_avr_xorshift
	.type	prng_avr_xorshift, @function
prng_avr_xorshift:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r20,r18
	lsr r21
	mov r21,r20
	clr r20
	ror r21
	ror r20
	eor r18,r20
	eor r19,r21
	movw r20,r18
	mov r20,r21
	clr r21
	lsr r20
	eor r20,r18
	eor r21,r19
	mov r25,r20
	clr r24
	eor r24,r20
	eor r25,r21
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	prng_avr_xorshift, .-prng_avr_xorshift
	.ident	"GCC: (GNU) 7.3.0"
