	.file	"hmac_verify.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 11 */
.L__stack_usage = 11
	std Y+5,r25
	std Y+4,r24
	std Y+7,r23
	std Y+6,r22
	std Y+9,r21
	std Y+8,r20
	std Y+1,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L2
.L3:
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	eor r24,r20
	ldd r25,Y+1
	or r24,r25
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,1
	std Y+3,r25
	std Y+2,r24
.L2:
	ldd r18,Y+2
	ldd r19,Y+3
	ldd r24,Y+8
	ldd r25,Y+9
	cp r18,r24
	cpc r19,r25
	brlo .L3
	ldi r24,lo8(1)
	ldd r25,Y+1
	tst r25
	breq .L5
	ldi r24,0
.L5:
/* epilogue start */
	adiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (GNU) 7.3.0"
