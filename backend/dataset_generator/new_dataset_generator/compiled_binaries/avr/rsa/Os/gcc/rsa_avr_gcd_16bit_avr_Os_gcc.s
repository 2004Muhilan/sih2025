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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r22
.L2:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L3
/* epilogue start */
	ret
.L3:
	movw r22,r18
	call __udivmodhi4
	mov r21,r24
	mov r20,r25
	movw r24,r18
	mov r18,r21
	mov r19,r20
	rjmp .L2
	.size	rsa_gcd_avr, .-rsa_gcd_avr
	.ident	"GCC: (GNU) 7.3.0"
