	.file	"quicksort.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	swap
	.type	swap, @function
swap:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	ldd r25,Y+6
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	nop
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	swap, .-swap
.global	partition
	.type	partition, @function
partition:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+11
	ldd r25,Y+12
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
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+9
	ldd r25,Y+10
	std Y+4,r25
	std Y+3,r24
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
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+5
	ldd r19,Y+6
	cp r24,r18
	cpc r25,r19
	brge .L4
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	movw r20,r18
	add r20,r24
	adc r21,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r22,r20
	call swap
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+11
	ldd r25,Y+12
	cp r18,r24
	cpc r19,r25
	brlt .L5
	ldd r24,Y+11
	ldd r25,Y+12
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	movw r20,r18
	add r20,r24
	adc r21,r25
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r22,r20
	call swap
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	partition, .-partition
.global	quicksort
	.type	quicksort, @function
quicksort:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brge .L9
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+3
	ldd r25,Y+4
	movw r22,r18
	call partition
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	movw r20,r24
	subi r20,1
	sbc r21,__zero_reg__
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+3
	ldd r25,Y+4
	movw r22,r18
	call quicksort
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	movw r22,r18
	call quicksort
.L9:
	nop
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	quicksort, .-quicksort
	.ident	"GCC: (GNU) 7.3.0"
