	.file	"xor_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r14,r20
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r12,r24
	movw r16,r24
	add r16,r22
	adc r17,r23
	movw r30,r24
.L3:
	movw r24,r30
	sub r24,r12
	sbc r25,r13
	ld r20,Z+
	movw r28,r30
	sbiw r28,1
	movw r22,r18
	call __udivmodhi4
	movw r26,r14
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r24,r20
	st Y,r24
	cp r30,r16
	cpc r31,r17
	brne .L3
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	xor_cipher_simple, .-xor_cipher_simple
.global	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r22
	movw r14,r20
	movw r12,r18
	movw r20,r22
	movw r22,r24
	movw r24,r16
	call memcpy
	movw r18,r12
	movw r20,r14
	movw r22,r28
	movw r24,r16
	call xor_cipher_simple
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	xor_encrypt_simple, .-xor_encrypt_simple
.global	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r22
	movw r14,r20
	movw r12,r18
	movw r20,r22
	movw r22,r24
	movw r24,r16
	call memcpy
	movw r18,r12
	movw r20,r14
	movw r22,r28
	movw r24,r16
	call xor_cipher_simple
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (GNU) 7.3.0"
