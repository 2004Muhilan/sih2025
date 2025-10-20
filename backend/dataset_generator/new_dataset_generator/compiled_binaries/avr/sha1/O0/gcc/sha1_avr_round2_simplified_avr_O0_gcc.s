	.file	"sha1_avr_round2_simplified.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round2_avr
	.type	sha1_round2_avr, @function
sha1_round2_avr:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+2,r25
	std Y+1,r24
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,4
	movw r30,r24
	ld r14,Z
	ldd r15,Z+1
	ldd r16,Z+2
	ldd r17,Z+3
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,8
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	eor r14,r24
	eor r15,r25
	eor r16,r26
	eor r17,r27
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,12
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	eor r24,r14
	eor r25,r15
	eor r26,r16
	eor r27,r17
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
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
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	sha1_round2_avr, .-sha1_round2_avr
	.ident	"GCC: (GNU) 7.3.0"
