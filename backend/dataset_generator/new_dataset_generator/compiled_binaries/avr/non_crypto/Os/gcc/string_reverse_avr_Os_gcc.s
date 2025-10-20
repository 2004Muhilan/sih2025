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
	movw r18,r22
	subi r18,1
	sbc r19,__zero_reg__
	movw r30,r24
	add r30,r22
	adc r31,r23
	movw r26,r24
.L2:
	movw r20,r26
	sub r20,r24
	sbc r21,r25
	cp r20,r18
	cpc r21,r19
	brlo .L3
/* epilogue start */
	pop r29
	pop r28
	ret
.L3:
	ld r20,X+
	ld r21,-Z
	movw r28,r26
	sbiw r28,1
	st Y,r21
	st Z,r20
	subi r18,1
	sbc r19,__zero_reg__
	rjmp .L2
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (GNU) 7.3.0"
