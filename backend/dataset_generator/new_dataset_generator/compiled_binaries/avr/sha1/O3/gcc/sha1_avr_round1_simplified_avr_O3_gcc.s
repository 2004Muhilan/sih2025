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
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r30,r24
	ldd r24,Z+12
	ldd r25,Z+13
	ldd r26,Z+14
	ldd r27,Z+15
	ldd r16,Z+8
	ldd r17,Z+9
	ldd r18,Z+10
	ldd r19,Z+11
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	ldd r12,Z+4
	ldd r13,Z+5
	ldd r14,Z+6
	ldd r15,Z+7
	and r16,r12
	and r17,r13
	and r18,r14
	and r19,r15
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	movw r22,r18
	movw r20,r16
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	sha1_round1_avr, .-sha1_round1_avr
	.ident	"GCC: (GNU) 7.3.0"
