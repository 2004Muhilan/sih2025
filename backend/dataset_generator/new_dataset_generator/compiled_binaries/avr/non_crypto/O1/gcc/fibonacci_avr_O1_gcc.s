	.file	"fibonacci.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	fibonacci
	.type	fibonacci, @function
fibonacci:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r8,r22
	movw r10,r24
	ldi r24,2
	cp r8,r24
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brlo .L4
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L3:
	movw r18,r14
	movw r16,r12
	add r16,r24
	adc r17,r25
	adc r18,r26
	adc r19,r27
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	movw r12,r24
	movw r14,r26
	movw r26,r18
	movw r24,r16
	cp r8,r20
	cpc r9,r21
	cpc r10,r22
	cpc r11,r23
	brsh .L3
.L1:
	movw r24,r18
	movw r22,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L4:
	movw r18,r10
	movw r16,r22
	rjmp .L1
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (GNU) 7.3.0"
