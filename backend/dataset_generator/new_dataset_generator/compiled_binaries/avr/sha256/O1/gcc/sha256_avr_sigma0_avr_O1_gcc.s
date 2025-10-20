	.file	"sha256_avr_sigma0.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_sigma0_avr
	.type	sha256_sigma0_avr, @function
sha256_sigma0_avr:
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
	mov r0,r27
	ldi r27,30
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	dec r27
	brne 1b
	mov r27,r0
	or r16,r12
	or r17,r13
	or r18,r14
	or r19,r15
	movw r12,r22
	movw r14,r24
	mov r0,r27
	ldi r27,13
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r27
	brne 1b
	mov r27,r0
	movw r8,r22
	movw r10,r24
	mov r0,r23
	ldi r23,19
	1:
	lsl r8
	rol r9
	rol r10
	rol r11
	dec r23
	brne 1b
	mov r23,r0
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
	mov r0,r27
	ldi r27,10
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	dec r27
	brne 1b
	mov r27,r0
	mov r0,r21
	ldi r21,22
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r21
	brne 1b
	mov r21,r0
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
	.size	sha256_sigma0_avr, .-sha256_sigma0_avr
	.ident	"GCC: (GNU) 7.3.0"
