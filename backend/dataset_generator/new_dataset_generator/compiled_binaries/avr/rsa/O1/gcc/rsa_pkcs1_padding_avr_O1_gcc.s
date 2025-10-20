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
	movw r26,r20
	st X,__zero_reg__
	ldi r24,lo8(2)
	adiw r26,1
	st X,r24
	sbiw r26,1
	sub r18,r22
	sbc r19,r23
	movw r28,r18
	sbiw r28,1
	cpi r28,3
	cpc r29,__zero_reg__
	brlo .L2
	movw r30,r20
	adiw r30,2
	add r20,r28
	adc r21,r29
	ldi r25,lo8(-1)
.L3:
	st Z+,r25
	cp r30,r20
	cpc r31,r21
	brne .L3
.L2:
	add r28,r26
	adc r29,r27
	st Y,__zero_reg__
	movw r20,r22
	movw r22,r16
	movw r24,r26
	add r24,r18
	adc r25,r19
	call memcpy
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (GNU) 7.3.0"
