	.file	"rsa_avr_unpad_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_unpad_avr
	.type	rsa_unpad_avr, @function
rsa_unpad_avr:
	push r28
	push r29
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+3,r25
	std Y+2,r24
	std Y+1,__zero_reg__
	rjmp .L2
.L4:
	ldd r24,Y+1
	subi r24,lo8(-(1))
	std Y+1,r24
.L2:
	ldd r24,Y+1
	cpi r24,lo8(16)
	brsh .L3
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	cpi r24,lo8(-1)
	brne .L4
.L3:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rsa_unpad_avr, .-rsa_unpad_avr
	.ident	"GCC: (GNU) 7.3.0"
