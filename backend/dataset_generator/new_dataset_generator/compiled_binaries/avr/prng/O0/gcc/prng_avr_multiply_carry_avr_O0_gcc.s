	.file	"prng_avr_multiply_carry.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_mwc_avr
	.type	prng_mwc_avr, @function
prng_mwc_avr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r20,Z
	ldd r21,Z+1
	ldi r24,lo8(80)
	ldi r25,lo8(70)
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	mul r21,r24
	add r19,r0
	clr r1
	ldd r24,Y+7
	ldd r25,Y+8
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
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
	movw r24,r26
	clr r26
	clr r27
	movw r18,r24
	ldd r24,Y+7
	ldd r25,Y+8
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r18,Y+1
	ldd r19,Y+2
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
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	prng_mwc_avr, .-prng_mwc_avr
	.ident	"GCC: (GNU) 7.3.0"
