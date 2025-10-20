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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r20
	st Y,__zero_reg__
	ldi r24,lo8(2)
	std Y+1,r24
	sub r18,r22
	sbc r19,r23
	movw r26,r18
	sbiw r26,1
	cpi r26,3
	cpc r27,__zero_reg__
	brlo .L8
	movw r30,r20
	adiw r30,2
	add r26,r20
	adc r27,r21
	ldi r25,lo8(-1)
.L3:
	st Z+,r25
	cp r30,r26
	cpc r31,r27
	brne .L3
.L2:
	st X,__zero_reg__
	movw r20,r22
	movw r22,r16
	movw r24,r28
	add r24,r18
	adc r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp memcpy
.L8:
	add r26,r20
	adc r27,r21
	rjmp .L2
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (GNU) 7.3.0"
