	.file	"sha256_avr_sigma1.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_sigma1_avr
	.type	sha256_sigma1_avr, @function
sha256_sigma1_avr:
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
	movw r20,r22
	movw r22,r24
	movw r16,r20
	movw r18,r24
	ldi r24,6
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r24
	brne 1b
	movw r26,r22
	movw r24,r20
	ldi r30,26
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r30
	brne 1b
	or r16,r24
	or r17,r25
	or r18,r26
	or r19,r27
	movw r26,r22
	movw r24,r20
	ldi r31,11
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r31
	brne 1b
	movw r12,r20
	movw r14,r22
	ldi r30,21
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	dec r30
	brne 1b
	or r24,r12
	or r25,r13
	or r26,r14
	or r27,r15
	eor r16,r24
	eor r17,r25
	eor r18,r26
	eor r19,r27
	movw r26,r22
	movw r24,r20
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	ldi r31,25
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r31
	brne 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	movw r22,r24
	movw r24,r26
	eor r22,r16
	eor r23,r17
	eor r24,r18
	eor r25,r19
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	sha256_sigma1_avr, .-sha256_sigma1_avr
	.ident	"GCC: (GNU) 7.3.0"
