	.file	"xor_rotating.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
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
	movw r14,r22
	movw r12,r20
	or r22,r23
	breq .L1
	mov r16,r24
	mov r17,r25
	ldi r29,0
	ldi r28,0
.L3:
	movw r24,r28
	movw r22,r18
	call __udivmodhi4
	movw r30,r12
	add r30,r24
	adc r31,r25
	ld r24,Z
	movw r26,r16
	ld r25,X
	eor r25,r24
	st X+,r25
	movw r16,r26
	lsl r24
	adc r24,__zero_reg__
	st Z,r24
	adiw r28,1
	cp r14,r28
	cpc r15,r29
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
	.size	xor_cipher_rotating, .-xor_cipher_rotating
.global	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
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
	dec r29
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 256 */
/* stack size = 266 */
.L__stack_usage = 266
	movw r14,r22
	movw r10,r20
	movw r12,r18
	movw r20,r22
	movw r22,r24
	movw r24,r16
	call memcpy
	movw r20,r12
	movw r22,r10
	movw r24,r28
	adiw r24,1
	call memcpy
	movw r18,r12
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r22,r14
	movw r24,r16
	call xor_cipher_rotating
/* epilogue start */
	inc r29
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
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
.global	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call xor_encrypt_rotating
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (GNU) 7.3.0"
