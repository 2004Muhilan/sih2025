	.file	"xor_counter_mode.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_counter_mode
	.type	xor_counter_mode, @function
xor_counter_mode:
	push r10
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r22
	movw r14,r20
	or r22,r23
	breq .L1
	mov r28,r24
	mov r29,r25
	ldi r31,0
	ldi r30,0
.L3:
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r14
	add r26,r24
	adc r27,r25
	ld r25,Y
	eor r25,r10
	ld r24,X
	eor r24,r25
	st Y+,r24
	adiw r30,1
	inc r10
	cp r16,r30
	cpc r17,r31
	brne .L3
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r10
	ret
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (GNU) 7.3.0"
