	.file	"bubblesort.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	bubblesort
	.type	bubblesort, @function
bubblesort:
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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L6:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L3
.L5:
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	ldd r20,Y+7
	ldd r21,Y+8
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	cp r24,r18
	cpc r25,r19
	brge .L4
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	ldd r20,Y+7
	ldd r21,Y+8
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	ldd r19,Z+1
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	ldd r18,Y+5
	ldd r19,Y+6
	movw r30,r24
	std Z+1,r19
	st Z,r18
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+1
	ldd r25,Y+2
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	movw r24,r20
	sbiw r24,1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L5
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L6
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
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (GNU) 7.3.0"
