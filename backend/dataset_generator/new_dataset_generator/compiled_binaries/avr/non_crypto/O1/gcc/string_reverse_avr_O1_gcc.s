	.file	"string_reverse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	string_reverse
	.type	string_reverse, @function
string_reverse:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r22,1
	cpc r23,__zero_reg__
	breq .L1
	movw r26,r24
	movw r30,r24
	add r30,r22
	adc r31,r23
	ldi r19,0
	ldi r18,0
.L3:
	ld r24,X+
	ld r25,-Z
	movw r28,r26
	sbiw r28,1
	st Y,r25
	st Z,r24
	subi r18,-1
	sbci r19,-1
	movw r20,r18
	com r20
	com r21
	add r20,r22
	adc r21,r23
	cp r18,r20
	cpc r19,r21
	brlo .L3
.L1:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (GNU) 7.3.0"
