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
	or r22,r23
	brne .L3
	rjmp .L7
.L5:
	movw r18,r20
.L3:
	movw r22,r18
	call __udivmodhi4
	movw r20,r24
	movw r24,r18
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L5
	movw r24,r18
/* epilogue start */
	ret
.L7:
	movw r18,r24
	movw r24,r18
/* epilogue start */
	ret
	.size	rsa_gcd_avr, .-rsa_gcd_avr
	.ident	"GCC: (GNU) 7.3.0"
