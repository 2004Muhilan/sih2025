	.file	"rsa_avr_modexp_8bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_modexp_8bit_avr
	.type	rsa_modexp_8bit_avr, @function
rsa_modexp_8bit_avr:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r24
	std Y+3,r22
	std Y+4,r20
	ldi r24,lo8(1)
	std Y+1,r24
	rjmp .L2
.L4:
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	andi r24,1
	clr r25
	or r24,r25
	breq .L3
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
	ldd r24,Y+4
	mov r18,r24
	ldi r19,0
	movw r24,r20
	movw r22,r18
	call __divmodhi4
	std Y+1,r24
.L3:
	ldd r24,Y+2
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
	ldd r24,Y+4
	mov r18,r24
	ldi r19,0
	movw r24,r20
	movw r22,r18
	call __divmodhi4
	std Y+2,r24
	ldd r24,Y+3
	lsr r24
	std Y+3,r24
.L2:
	ldd r24,Y+3
	tst r24
	brne .L4
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rsa_modexp_8bit_avr, .-rsa_modexp_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
