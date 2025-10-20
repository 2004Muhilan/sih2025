	.file	"rsa_pkcs1_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
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
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	ldd r24,Y+7
	ldd r25,Y+8
	movw r30,r24
	st Z,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	ldi r18,lo8(2)
	movw r30,r24
	st Z,r18
	ldi r24,lo8(2)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	rjmp .L2
.L3:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-1)
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+5
	ldd r25,Y+6
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	movw r24,r20
	sbiw r24,1
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brlo .L3
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r18
	sub r30,r24
	sbc r31,r25
	movw r24,r30
	sbiw r24,1
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,__zero_reg__
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+5
	ldd r25,Y+6
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	movw r24,r20
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r18,Y+3
	ldd r19,Y+4
	movw r22,r18
	call memcpy
	nop
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
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (GNU) 7.3.0"
