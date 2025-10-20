	.file	"sha256_sigma.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r22
	movw r18,r24
	lsr r19
	ror r18
	ror r17
	ror r16
	lsr r19
	ror r18
	ror r17
	ror r16
	movw r12,r22
	movw r14,r24
	ldi r21,30
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	dec r21
	brne 1b
	or r16,r12
	or r17,r13
	or r18,r14
	or r19,r15
	movw r12,r22
	movw r14,r24
	ldi r30,13
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r30
	brne 1b
	movw r8,r22
	movw r10,r24
	ldi r31,19
	1:
	lsl r8
	rol r9
	rol r10
	rol r11
	dec r31
	brne 1b
	or r12,r8
	or r13,r9
	or r14,r10
	or r15,r11
	eor r16,r12
	eor r17,r13
	eor r18,r14
	eor r19,r15
	movw r12,r22
	movw r14,r24
	ldi r26,10
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	dec r26
	brne 1b
	ldi r27,22
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r27
	brne 1b
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	sha256_sigma0, .-sha256_sigma0
.global	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
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
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (GNU) 7.3.0"
