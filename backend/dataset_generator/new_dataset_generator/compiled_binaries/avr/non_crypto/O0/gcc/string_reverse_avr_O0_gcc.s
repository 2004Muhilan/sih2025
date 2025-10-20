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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 11 */
.L__stack_usage = 11
	std Y+7,r25
	std Y+6,r24
	std Y+9,r23
	std Y+8,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	ldd r24,Y+8
	ldd r25,Y+9
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	rjmp .L2
.L3:
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+5,r24
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+3
	ldd r25,Y+4
	add r18,r24
	adc r19,r25
	ldd r20,Y+6
	ldd r21,Y+7
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	ldd r18,Y+5
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L3
	nop
/* epilogue start */
	adiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (GNU) 7.3.0"
