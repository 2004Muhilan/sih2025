	.file	"prng_avr_lcg_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_lcg_16bit_avr
	.type	prng_lcg_16bit_avr, @function
prng_lcg_16bit_avr:
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
	ldi r18,lo8(85)
	ldi r19,lo8(98)
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
	.size	prng_lcg_16bit_avr, .-prng_lcg_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"
