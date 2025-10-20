	.file	"sha1_avr_round1_simplified.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round1_avr
	.type	sha1_round1_avr, @function
sha1_round1_avr:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+6,r25
	std Y+5,r24
	std Y+7,r20
	std Y+8,r21
	std Y+9,r22
	std Y+10,r23
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,4
	movw r30,r24
	ld r14,Z
	ldd r15,Z+1
	ldd r16,Z+2
	ldd r17,Z+3
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,8
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	and r14,r24
	and r15,r25
	and r16,r26
	and r17,r27
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,4
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r10,r24
	movw r12,r26
	com r10
	com r11
	com r12
	com r13
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,12
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	and r24,r10
	and r25,r11
	and r26,r12
	and r27,r13
	or r24,r14
	or r25,r15
	or r26,r16
	or r27,r17
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
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
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	sha1_round1_avr, .-sha1_round1_avr
	.ident	"GCC: (GNU) 7.3.0"
