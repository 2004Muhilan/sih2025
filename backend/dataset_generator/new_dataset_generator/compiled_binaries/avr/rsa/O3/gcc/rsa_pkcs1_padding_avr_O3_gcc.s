	.file	"rsa_pkcs1_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
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
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	movw r12,r22
	movw r16,r20
	movw r30,r20
	st Z,__zero_reg__
	ldi r24,lo8(2)
	std Z+1,r24
	movw r28,r18
	sub r28,r22
	sbc r29,r23
	movw r14,r28
	ldi r31,1
	sub r14,r31
	sbc r15,__zero_reg__
	ldi r24,3
	cp r14,r24
	cpc r15,__zero_reg__
	brlo .L2
	movw r20,r28
	subi r20,3
	sbc r21,__zero_reg__
	ldi r22,lo8(-1)
	ldi r23,0
	movw r24,r16
	adiw r24,2
	call memset
.L2:
	movw r30,r16
	add r30,r14
	adc r31,r15
	st Z,__zero_reg__
	movw r20,r12
	movw r22,r10
	movw r24,r16
	add r24,r28
	adc r25,r29
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
	jmp memcpy
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (GNU) 7.3.0"
