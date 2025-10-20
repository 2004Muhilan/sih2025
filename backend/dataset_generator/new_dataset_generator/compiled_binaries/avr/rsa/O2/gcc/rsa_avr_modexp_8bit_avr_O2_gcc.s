	.file	"rsa_avr_modexp_8bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_modexp_8bit_avr
	.type	rsa_modexp_8bit_avr, @function
rsa_modexp_8bit_avr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r22
	ldi r30,lo8(1)
	tst r22
	breq .L1
	mov r28,r20
	ldi r29,0
	ldi r30,lo8(1)
.L4:
	sbrs r19,0
	rjmp .L3
	mul r30,r18
	movw r24,r0
	clr __zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r30,r24
.L3:
	mul r18,r18
	movw r24,r0
	clr __zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r18,r24
	lsr r19
	brne .L4
.L1:
	mov r24,r30
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rsa_modexp_8bit_avr, .-rsa_modexp_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
