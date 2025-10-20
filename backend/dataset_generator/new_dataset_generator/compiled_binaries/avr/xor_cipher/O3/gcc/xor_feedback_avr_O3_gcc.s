	.file	"xor_feedback.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r10,r22
	movw r14,r20
	mov r13,__zero_reg__
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L2
	movw r30,r16
	ld r13,Z
.L2:
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L1
	movw r28,r24
	ldi r31,0
	ldi r30,0
.L4:
	ld r20,Y
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r14
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r24,r20
	eor r24,r13
	st Y+,r24
	adiw r30,1
	mov r13,r20
	cp r10,r30
	cpc r11,r31
	brne .L4
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.size	xor_cipher_feedback, .-xor_cipher_feedback
.global	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r28,r22
	movw r12,r20
	movw r10,r18
	mov r17,r16
	movw r20,r22
	movw r22,r24
	movw r24,r14
	call memcpy
	sbiw r28,0
	breq .L11
	movw r8,r14
	ldi r19,0
	ldi r18,0
.L13:
	movw r30,r8
	ld r20,Z
	movw r24,r18
	movw r22,r10
	call __udivmodhi4
	movw r30,r12
	add r30,r24
	adc r31,r25
	ld r16,Z
	eor r16,r20
	eor r16,r17
	movw r30,r8
	st Z+,r16
	movw r8,r30
	subi r18,-1
	sbci r19,-1
	mov r17,r20
	cp r28,r18
	cpc r29,r19
	brne .L13
.L11:
/* epilogue start */
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
	pop r9
	pop r8
	ret
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
.global	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r12,r22
	movw r10,r20
	mov r17,r16
	or r22,r23
	breq .L18
	movw r8,r24
	movw r28,r14
	ldi r31,0
	ldi r30,0
.L20:
	movw r26,r8
	ld r20,X+
	movw r8,r26
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r10
	add r26,r24
	adc r27,r25
	ld r16,X
	eor r16,r20
	eor r16,r17
	st Y+,r16
	adiw r30,1
	mov r17,r20
	cp r12,r30
	cpc r13,r31
	brne .L20
.L18:
/* epilogue start */
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
	pop r9
	pop r8
	ret
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (GNU) 7.3.0"
