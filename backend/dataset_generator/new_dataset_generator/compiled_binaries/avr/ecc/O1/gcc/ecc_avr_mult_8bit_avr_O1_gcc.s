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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r20,r22
	mov r18,r24
	mov r19,r25
	tst r22
	breq .L5
	ldi r28,0
	ldi r29,0
	ldi r30,lo8(-5)
	ldi r31,0
	rjmp .L4
.L3:
	mov r24,r18
	ldi r25,0
	lsl r24
	rol r25
	movw r22,r30
	call __divmodhi4
	mov r18,r24
	mov r24,r19
	ldi r25,0
	lsl r24
	rol r25
	movw r22,r30
	call __divmodhi4
	mov r19,r24
	lsr r20
	breq .L2
.L4:
	sbrs r20,0
	rjmp .L3
	mov r22,r29
	add r22,r18
	clr r23
	rol r23
	movw r24,r22
	movw r22,r30
	call __divmodhi4
	mov r29,r24
	mov r22,r28
	add r22,r19
	clr r23
	rol r23
	movw r24,r22
	movw r22,r30
	call __divmodhi4
	mov r28,r24
	rjmp .L3
.L5:
	ldi r28,0
	ldi r29,0
.L2:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ecc_mult_8bit_avr, .-ecc_mult_8bit_avr
	.ident	"GCC: (GNU) 7.3.0"
