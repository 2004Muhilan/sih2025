	.file	"xor_cbc_mode.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_cbc_mode
	.type	xor_cbc_mode, @function
xor_cbc_mode:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r14,r24
	movw r12,r20
	movw r10,r18
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r28,r24
	add r28,r22
	adc r29,r23
	movw r30,r24
.L3:
	movw r24,r30
	sub r24,r14
	sbc r25,r15
	ld r19,Z+
	movw r22,r10
	call __udivmodhi4
	movw r26,r12
	add r26,r24
	adc r27,r25
	ld r24,X
	eor r19,r24
	eor r16,r19
	movw r26,r30
	sbiw r26,1
	st X,r16
	cp r28,r30
	cpc r29,r31
	brne .L3
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	xor_cbc_mode, .-xor_cbc_mode
	.ident	"GCC: (GNU) 7.3.0"
