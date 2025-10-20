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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L4:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brsh .L3
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	tst r24
	brne .L4
.L3:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L5
.L7:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r18,r24
	adc r19,r25
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L5:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brsh .L6
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	tst r24
	brne .L7
.L6:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,__zero_reg__
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	string_concat, .-string_concat
	.ident	"GCC: (GNU) 7.3.0"
