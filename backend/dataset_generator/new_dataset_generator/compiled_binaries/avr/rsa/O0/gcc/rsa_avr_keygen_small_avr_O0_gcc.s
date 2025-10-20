	.file	"rsa_avr_keygen_small.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_keygen_small_avr
	.type	rsa_keygen_small_avr, @function
rsa_keygen_small_avr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldi r24,lo8(17)
	std Y+1,r24
	ldi r24,lo8(19)
	std Y+2,r24
	ldd r24,Y+1
	mov r18,r24
	ldi r19,0
	ldd r24,Y+2
	mov r24,r24
	ldi r25,0
	mul r18,r24
	movw r20,r0
	mul r18,r25
	add r21,r0
	mul r19,r24
	add r21,r0
	clr r1
	movw r18,r20
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+5
	ldd r25,Y+6
	ldi r18,lo8(7)
	ldi r19,0
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r18,lo8(103)
	ldi r19,0
	movw r30,r24
	std Z+1,r19
	st Z,r18
	nop
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rsa_keygen_small_avr, .-rsa_keygen_small_avr
	.ident	"GCC: (GNU) 7.3.0"
