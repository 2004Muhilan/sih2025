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
	mov r30,r22
	ldi r19,lo8(1)
	mov r28,r20
	ldi r29,0
.L2:
	cpse r30,__zero_reg__
	rjmp .L4
	mov r24,r19
/* epilogue start */
	pop r29
	pop r28
	ret
.L4:
	sbrs r30,0
	rjmp .L3
	mul r19,r18
	movw r24,r0
	clr __zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r19,r24
.L3:
	mul r18,r18
	movw r24,r0
	clr __zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r18,r24
	lsr r30
	rjmp .L2
	.size	rsa_modexp_8bit_avr, .-rsa_modexp_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
