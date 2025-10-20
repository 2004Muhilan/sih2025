	.file	"ecc_avr_keygen.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_keygen_avr
	.type	ecc_keygen_avr, @function
ecc_keygen_avr:
	push r28
	push r29
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	std Y+5,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	ldi r20,lo8(123)
	mul r20,r24
	movw r18,r0
	mul r20,r25
	add r19,r0
	clr __zero_reg__
	movw r24,r18
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	mov r18,r24
	ldi r19,0
	ldi r24,lo8(-56)
	ldi r25,lo8(1)
	mul r18,r24
	movw r20,r0
	mul r18,r25
	add r21,r0
	mul r19,r24
	add r21,r0
	clr r1
	movw r24,r20
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	ecc_keygen_avr, .-ecc_keygen_avr
	.ident	"GCC: (GNU) 7.3.0"
