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
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	movw r14,r20
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L9
	movw r28,r16
	ld r24,Y
	tst r24
	breq .L10
	movw r18,r16
	subi r18,-1
	sbci r19,-1
	ldi r31,0
	ldi r30,0
	rjmp .L7
.L4:
	subi r18,-1
	sbci r19,-1
	ld r24,X
	tst r24
	breq .L3
.L7:
	adiw r30,1
	movw r26,r18
	cp r20,r30
	cpc r21,r31
	brne .L4
.L5:
	st X,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L10:
	movw r26,r16
	ldi r31,0
	ldi r30,0
.L3:
	cp r30,r14
	cpc r31,r15
	brsh .L5
.L2:
	movw r28,r22
	ld r25,Y
	add r30,r16
	adc r31,r17
	adiw r28,1
	cpse r25,__zero_reg__
	rjmp .L8
	rjmp .L5
.L15:
	ld r25,Y+
	tst r25
	breq .L5
.L8:
	st Z+,r25
	movw r26,r30
	movw r18,r30
	sub r18,r16
	sbc r19,r17
	cp r18,r14
	cpc r19,r15
	brlo .L15
	st X,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L9:
	movw r26,r16
	ldi r31,0
	ldi r30,0
	rjmp .L2
	.size	string_concat, .-string_concat
	.ident	"GCC: (GNU) 7.3.0"
