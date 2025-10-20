	.file	"string_concat.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	string_concat
	.type	string_concat, @function
string_concat:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ldi r31,0
	ldi r30,0
.L2:
	cp r30,r20
	cpc r31,r21
	brne .L3
.L6:
	add r30,r24
	adc r31,r25
	movw r26,r22
	subi r20,1
	sbc r21,__zero_reg__
.L4:
	movw r18,r30
	sub r18,r24
	sbc r19,r25
	cp r18,r20
	cpc r19,r21
	brsh .L7
	ld r18,X+
	cpse r18,__zero_reg__
	rjmp .L8
.L7:
	st Z,__zero_reg__
/* epilogue start */
	ret
.L3:
	ld r18,X+
	tst r18
	breq .L6
	adiw r30,1
	rjmp .L2
.L8:
	st Z+,r18
	rjmp .L4
	.size	string_concat, .-string_concat
	.ident	"GCC: (GNU) 7.3.0"
