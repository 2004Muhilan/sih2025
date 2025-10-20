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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L7
	ld r24,Y
	tst r24
	breq .L8
	movw r30,r28
	adiw r30,1
	ldi r19,0
	ldi r18,0
.L4:
	subi r18,-1
	sbci r19,-1
	cp r20,r18
	cpc r21,r19
	breq .L3
	ld r24,Z+
	cpse r24,__zero_reg__
	rjmp .L4
.L3:
	subi r20,1
	sbc r21,__zero_reg__
	cp r18,r20
	cpc r19,r21
	brsh .L5
.L2:
	movw r30,r22
	ld r25,Z
	tst r25
	breq .L5
	movw r26,r28
	add r26,r18
	adc r27,r19
	adiw r30,1
.L6:
	st X+,r25
	subi r18,-1
	sbci r19,-1
	cp r18,r20
	cpc r19,r21
	brsh .L5
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L6
.L5:
	add r28,r18
	adc r29,r19
	st Y,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	ret
.L8:
	ldi r19,0
	ldi r18,0
	rjmp .L3
.L7:
	movw r18,r20
	ldi r20,lo8(-1)
	ldi r21,lo8(-1)
	rjmp .L2
	.size	string_concat, .-string_concat
	.ident	"GCC: (GNU) 7.3.0"
