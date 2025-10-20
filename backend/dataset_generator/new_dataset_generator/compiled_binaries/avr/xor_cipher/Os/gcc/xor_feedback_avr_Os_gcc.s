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
/* stack size = 9 */
.L__stack_usage = 9
	movw r14,r22
	movw r12,r20
	ldi r20,0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L2
	movw r26,r16
	ld r20,X
.L2:
	movw r30,r24
	ldi r29,0
	ldi r28,0
.L3:
	cp r28,r14
	cpc r29,r15
	brne .L4
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
	ret
.L4:
	ld r11,Z+
	movw r16,r30
	subi r16,1
	sbc r17,__zero_reg__
	movw r24,r28
	movw r22,r18
	call __udivmodhi4
	movw r26,r12
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r24,r11
	eor r24,r20
	movw r26,r16
	st X,r24
	adiw r28,1
	mov r20,r11
	rjmp .L3
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
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r12,r22
	movw r10,r20
	movw r8,r18
	std Y+1,r16
	movw r20,r22
	movw r22,r24
	movw r24,r14
	call memcpy
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r18,r8
	movw r20,r10
	movw r22,r12
	movw r24,r14
	call xor_cipher_feedback
/* epilogue start */
	pop __tmp_reg__
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r12,r22
	movw r10,r20
	movw r8,r24
	movw r28,r14
	ldi r31,0
	ldi r30,0
.L8:
	cp r30,r12
	cpc r31,r13
	brne .L9
/* epilogue start */
	pop r29
	pop r28
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
.L9:
	movw r26,r8
	ld r20,X+
	movw r8,r26
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r10
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r24,r20
	eor r16,r24
	st Y+,r16
	adiw r30,1
	mov r16,r20
	rjmp .L8
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (GNU) 7.3.0"
