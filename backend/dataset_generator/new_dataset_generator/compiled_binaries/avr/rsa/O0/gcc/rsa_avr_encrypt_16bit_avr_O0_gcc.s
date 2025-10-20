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
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r18,Y+9
	ldd r19,Y+10
	movw r22,r18
	call __udivmodhi4
	std Y+4,r25
	std Y+3,r24
	rjmp .L2
.L4:
	ldd r24,Y+7
	ldd r25,Y+8
	andi r24,1
	clr r25
	or r24,r25
	breq .L3
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	mul r18,r24
	movw r20,r0
	mul r18,r25
	add r21,r0
	mul r19,r24
	add r21,r0
	clr r1
	ldd r18,Y+9
	ldd r19,Y+10
	movw r24,r20
	movw r22,r18
	call __udivmodhi4
	std Y+2,r25
	std Y+1,r24
.L3:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+3
	ldd r25,Y+4
	mul r18,r24
	movw r20,r0
	mul r18,r25
	add r21,r0
	mul r19,r24
	add r21,r0
	clr r1
	ldd r18,Y+9
	ldd r19,Y+10
	movw r24,r20
	movw r22,r18
	call __udivmodhi4
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+7
	ldd r25,Y+8
	lsr r25
	ror r24
	std Y+8,r25
	std Y+7,r24
.L2:
	ldd r24,Y+7
	ldd r25,Y+8
	or r24,r25
	brne .L4
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rsa_encrypt_16bit_avr, .-rsa_encrypt_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"
