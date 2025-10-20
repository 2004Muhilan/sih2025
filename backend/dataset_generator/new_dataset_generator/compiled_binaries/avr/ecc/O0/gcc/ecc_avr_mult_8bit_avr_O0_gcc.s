	.file	"ecc_avr_mult_8bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_mult_8bit_avr
	.type	ecc_mult_8bit_avr, @function
ecc_mult_8bit_avr:
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
	std Y+4,r25
	std Y+3,r24
	std Y+5,r22
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L2
.L4:
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	andi r24,1
	clr r25
	or r24,r25
	breq .L3
	ldd r24,Y+1
	mov r18,r24
	ldi r19,0
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-5)
	ldi r19,0
	movw r22,r18
	call __divmodhi4
	std Y+1,r24
	ldd r24,Y+2
	mov r18,r24
	ldi r19,0
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-5)
	ldi r19,0
	movw r22,r18
	call __divmodhi4
	std Y+2,r24
.L3:
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	lsl r24
	rol r25
	ldi r18,lo8(-5)
	ldi r19,0
	movw r22,r18
	call __divmodhi4
	std Y+3,r24
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	lsl r24
	rol r25
	ldi r18,lo8(-5)
	ldi r19,0
	movw r22,r18
	call __divmodhi4
	std Y+4,r24
	ldd r24,Y+5
	lsr r24
	std Y+5,r24
.L2:
	ldd r24,Y+5
	tst r24
	brne .L4
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	ecc_mult_8bit_avr, .-ecc_mult_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
