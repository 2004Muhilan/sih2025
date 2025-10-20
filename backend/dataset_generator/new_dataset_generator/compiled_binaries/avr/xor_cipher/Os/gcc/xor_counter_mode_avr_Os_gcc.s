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
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r22
	movw r14,r20
	movw r28,r24
	ldi r31,0
	ldi r30,0
.L2:
	cp r30,r16
	cpc r31,r17
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r10
	ret
.L3:
	ld r20,Y+
	movw r12,r28
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	movw r24,r30
	movw r22,r18
	call __udivmodhi4
	movw r26,r14
	add r26,r24
	adc r27,r25
	mov r24,r10
	add r24,r30
	ld r25,X
	eor r24,r25
	eor r24,r20
	movw r26,r12
	st X,r24
	adiw r30,1
	rjmp .L2
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (GNU) 7.3.0"
