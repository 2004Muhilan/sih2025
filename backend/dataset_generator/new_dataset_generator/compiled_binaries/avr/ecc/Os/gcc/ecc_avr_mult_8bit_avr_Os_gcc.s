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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r30,r24
	ldi r20,0
	ldi r17,0
	ldi r28,lo8(-5)
	ldi r29,0
.L2:
	cpse r16,__zero_reg__
	rjmp .L4
	mov r24,r17
	mov r25,r20
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L4:
	ldi r31,0
	mov r18,r25
	ldi r19,0
	sbrs r16,0
	rjmp .L3
	movw r24,r30
	add r24,r17
	adc r25,__zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r17,r24
	movw r24,r18
	add r24,r20
	adc r25,__zero_reg__
	movw r22,r28
	call __divmodhi4
	mov r20,r24
.L3:
	movw r24,r30
	lsl r24
	rol r25
	movw r22,r28
	call __divmodhi4
	mov r30,r24
	movw r24,r18
	lsl r24
	rol r25
	movw r22,r28
	call __divmodhi4
	mov r25,r24
	lsr r16
	rjmp .L2
	.size	ecc_mult_8bit_avr, .-ecc_mult_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
