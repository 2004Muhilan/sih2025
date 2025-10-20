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
	movw r30,r24
	movw r26,r24
	add r26,r22
	adc r27,r23
	ldi r25,0
	ldi r24,0
.L3:
	ld r18,Z+
	ld r19,-X
	movw r28,r30
	sbiw r28,1
	st Y,r19
	st X,r18
	adiw r24,1
	movw r18,r24
	com r18
	com r19
	add r18,r22
	adc r19,r23
	cp r24,r18
	cpc r25,r19
	brlo .L3
.L1:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (GNU) 7.3.0"
