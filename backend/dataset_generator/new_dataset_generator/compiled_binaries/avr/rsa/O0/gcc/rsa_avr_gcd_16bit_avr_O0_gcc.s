	.file	"rsa_avr_gcd_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_gcd_avr
	.type	rsa_gcd_avr, @function
rsa_gcd_avr:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	rjmp .L2
.L3:
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+5
	ldd r19,Y+6
	movw r22,r18
	call __udivmodhi4
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	std Y+4,r25
	std Y+3,r24
.L2:
	ldd r24,Y+5
	ldd r25,Y+6
	or r24,r25
	brne .L3
	ldd r24,Y+3
	ldd r25,Y+4
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rsa_gcd_avr, .-rsa_gcd_avr
	.ident	"GCC: (GNU) 7.3.0"
