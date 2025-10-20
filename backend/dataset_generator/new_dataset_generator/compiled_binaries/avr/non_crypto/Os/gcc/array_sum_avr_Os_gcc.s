	.file	"array_sum.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	array_sum
	.type	array_sum, @function
array_sum:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r20,r22
	movw r30,r24
	ldi r19,0
	ldi r18,0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L2:
	cp r18,r20
	cpc r19,r21
	brne .L3
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L3:
	ld r12,Z+
	ld r13,Z+
	ld r14,Z+
	ld r15,Z+
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
	subi r18,-1
	sbci r19,-1
	rjmp .L2
	.size	array_sum, .-array_sum
	.ident	"GCC: (GNU) 7.3.0"
