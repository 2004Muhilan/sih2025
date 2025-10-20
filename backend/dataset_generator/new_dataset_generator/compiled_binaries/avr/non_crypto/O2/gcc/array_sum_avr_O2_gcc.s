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
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L4
	movw r30,r24
	lsl r22
	rol r23
	lsl r22
	rol r23
	movw r20,r30
	add r20,r22
	adc r21,r23
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L3:
	ld r16,Z+
	ld r17,Z+
	ld r18,Z+
	ld r19,Z+
	add r22,r16
	adc r23,r17
	adc r24,r18
	adc r25,r19
	cp r30,r20
	cpc r31,r21
	brne .L3
/* epilogue start */
	pop r17
	pop r16
	ret
.L4:
	ldi r22,0
	ldi r23,0
	movw r24,r22
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	array_sum, .-array_sum
	.ident	"GCC: (GNU) 7.3.0"
