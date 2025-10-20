	.file	"array_max.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	array_max
	.type	array_max, @function
array_max:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r20,r22
	or r22,r23
	breq .L6
	movw r30,r24
	ld r22,Z+
	ld r23,Z+
	ld r24,Z+
	ld r25,Z+
	ldi r18,lo8(1)
	ldi r19,0
.L3:
	cp r18,r20
	cpc r19,r21
	brne .L5
.L1:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L5:
	ld r12,Z+
	ld r13,Z+
	ld r14,Z+
	ld r15,Z+
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	brge .L4
	movw r24,r14
	movw r22,r12
.L4:
	subi r18,-1
	sbci r19,-1
	rjmp .L3
.L6:
	ldi r22,0
	ldi r23,0
	movw r24,r22
	rjmp .L1
	.size	array_max, .-array_max
	.ident	"GCC: (GNU) 7.3.0"
