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
	push r4
	push r5
	push r6
	push r7
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
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r22
	movw r6,r24
	ldi r24,2
	cp r4,r24
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	brlo .L4
	ldi r16,lo8(2)
	ldi r17,0
	ldi r18,0
	ldi r19,0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.L3:
	movw r24,r10
	movw r22,r8
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
	subi r16,-1
	sbci r17,-1
	sbci r18,-1
	sbci r19,-1
	movw r8,r12
	movw r10,r14
	movw r12,r22
	movw r14,r24
	cp r4,r16
	cpc r5,r17
	cpc r6,r18
	cpc r7,r19
	brsh .L3
.L1:
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L4:
	movw r24,r6
	rjmp .L1
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (GNU) 7.3.0"
