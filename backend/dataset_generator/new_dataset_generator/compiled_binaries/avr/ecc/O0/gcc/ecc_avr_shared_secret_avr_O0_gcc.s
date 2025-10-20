	.file	"ecc_avr_shared_secret.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_shared_avr
	.type	ecc_shared_avr, @function
ecc_shared_avr:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r20
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	mul r21,r24
	add r19,r0
	clr r1
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,-15
	ldi r16,-1
	cpc r19,r16
	brsh .L2
	ldi r24,0
	ldi r25,0
.L2:
	ldi r22,lo8(-15)
	movw r16,r24
	mulsu r22,r16
	movw r20,r0
	mul r22,r17
	add r21,r0
	clr __zero_reg__
	movw r24,r18
	sub r24,r20
	sbc r25,r21
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	ecc_shared_avr, .-ecc_shared_avr
	.ident	"GCC: (GNU) 7.3.0"
