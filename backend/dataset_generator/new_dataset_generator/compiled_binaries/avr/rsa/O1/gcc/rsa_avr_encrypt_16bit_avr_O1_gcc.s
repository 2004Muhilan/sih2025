	.file	"rsa_avr_encrypt_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_encrypt_16bit_avr
	.type	rsa_encrypt_16bit_avr, @function
rsa_encrypt_16bit_avr:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r18,r22
	movw r28,r20
	movw r22,r20
	call __udivmodhi4
	movw r30,r24
	ldi r16,lo8(1)
	ldi r17,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L1
	ldi r16,lo8(1)
	ldi r17,0
	rjmp .L4
.L3:
	mul r30,r30
	movw r24,r0
	mul r30,r31
	add r25,r0
	add r25,r0
	clr r1
	movw r22,r28
	call __udivmodhi4
	movw r30,r24
	lsr r19
	ror r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L1
.L4:
	sbrs r18,0
	rjmp .L3
	mul r16,r30
	movw r24,r0
	mul r16,r31
	add r25,r0
	mul r17,r30
	add r25,r0
	clr r1
	movw r22,r28
	call __udivmodhi4
	movw r16,r24
	rjmp .L3
.L1:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	rsa_encrypt_16bit_avr, .-rsa_encrypt_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"
