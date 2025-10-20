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
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r30,r20
	st Z,__zero_reg__
	ldi r20,lo8(2)
	std Z+1,r20
	movw r26,r30
	adiw r26,2
	sub r18,r22
	sbc r19,r23
	movw r20,r18
	subi r20,1
	sbc r21,__zero_reg__
	ldi r17,lo8(-1)
.L2:
	movw r28,r26
	sub r28,r30
	sbc r29,r31
	cp r28,r20
	cpc r29,r21
	brlo .L3
	add r20,r30
	adc r21,r31
	movw r26,r20
	st X,__zero_reg__
	movw r20,r22
	movw r22,r24
	movw r24,r30
	add r24,r18
	adc r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	jmp memcpy
.L3:
	st X+,r17
	rjmp .L2
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (GNU) 7.3.0"
