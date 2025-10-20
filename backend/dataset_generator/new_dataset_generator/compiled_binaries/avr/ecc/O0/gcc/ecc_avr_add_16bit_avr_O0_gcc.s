	.file	"ecc_avr_add_16bit.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_add_16bit_avr
	.type	ecc_add_16bit_avr, @function
ecc_add_16bit_avr:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 16 */
.L__stack_usage = 16
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	add r18,r24
	adc r19,r25
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
	std Y+2,r25
	std Y+1,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	add r18,r24
	adc r19,r25
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,-15
	ldi r17,-1
	cpc r19,r17
	brsh .L3
	ldi r24,0
	ldi r25,0
.L3:
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
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	ecc_add_16bit_avr, .-ecc_add_16bit_avr
	.ident	"GCC: (GNU) 7.3.0"
