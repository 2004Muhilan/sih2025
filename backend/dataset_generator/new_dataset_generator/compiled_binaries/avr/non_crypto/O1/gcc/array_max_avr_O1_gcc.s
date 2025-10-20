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
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r16,0
	ldi r17,0
	movw r18,r16
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	ldd r18,Z+2
	ldd r19,Z+3
	cpi r22,2
	cpc r23,__zero_reg__
	brlo .L1
	adiw r30,4
	lsl r22
	rol r23
	lsl r22
	rol r23
	add r24,r22
	adc r25,r23
	rjmp .L4
.L3:
	cp r30,r24
	cpc r31,r25
	breq .L1
.L4:
	ld r20,Z+
	ld r21,Z+
	ld r22,Z+
	ld r23,Z+
	cp r16,r20
	cpc r17,r21
	cpc r18,r22
	cpc r19,r23
	brge .L3
	movw r16,r20
	movw r18,r22
	rjmp .L3
.L1:
	movw r24,r18
	movw r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	array_max, .-array_max
	.ident	"GCC: (GNU) 7.3.0"
