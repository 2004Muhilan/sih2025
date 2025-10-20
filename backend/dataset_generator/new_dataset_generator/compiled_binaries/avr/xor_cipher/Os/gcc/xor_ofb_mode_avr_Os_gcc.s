	.file	"xor_ofb_mode.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_ofb_mode
	.type	xor_ofb_mode, @function
xor_ofb_mode:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r22
	movw r12,r20
	movw r28,r24
	ldi r31,0
	ldi r30,0
.L2:
	cp r30,r14
	cpc r31,r15
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L3:
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r12
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r16,r24
	ld r24,Y+
	movw r26,r28
	sbiw r26,1
	eor r24,r16
	st X,r24
	adiw r30,1
	rjmp .L2
	.size	xor_ofb_mode, .-xor_ofb_mode
	.ident	"GCC: (GNU) 7.3.0"
