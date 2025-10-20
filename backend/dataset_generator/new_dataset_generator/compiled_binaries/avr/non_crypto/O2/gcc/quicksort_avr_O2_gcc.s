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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	movw r30,r22
	ld r20,Z
	ldd r21,Z+1
	movw r30,r24
	std Z+1,r21
	st Z,r20
	movw r30,r22
	std Z+1,r19
	st Z,r18
/* epilogue start */
	ret
	.size	swap, .-swap
.global	partition
	.type	partition, @function
partition:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r24
	movw r28,r20
	lsl r28
	rol r29
	add r28,r24
	adc r29,r25
	ld r14,Y
	ldd r15,Y+1
	movw r12,r22
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brge .L7
	movw r30,r22
	lsl r30
	rol r31
	add r30,r16
	adc r31,r17
.L6:
	ld r18,Z+
	ld r19,Z+
	movw r24,r22
	cp r18,r14
	cpc r19,r15
	brge .L5
	movw r26,r22
	lsl r26
	rol r27
	add r26,r16
	adc r27,r17
	ld r24,X+
	ld r25,X
	sbiw r26,1
	st X+,r18
	st X,r19
	movw r26,r30
	sbiw r26,2
	st X+,r24
	st X,r25
	movw r24,r12
	adiw r24,2
	movw r12,r22
	subi r22,-1
	sbci r23,-1
.L5:
	cp r28,r30
	cpc r29,r31
	brne .L6
	ld r14,Y
	ldd r15,Y+1
.L4:
	lsl r22
	rol r23
	movw r30,r16
	add r30,r22
	adc r31,r23
	ld r18,Z
	ldd r19,Z+1
	std Z+1,r15
	st Z,r14
	std Y+1,r19
	st Y,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L7:
	movw r24,r22
	rjmp .L4
	.size	partition, .-partition
.global	quicksort
	.type	quicksort, @function
quicksort:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r28,r22
	movw r14,r20
	cp r22,r20
	cpc r23,r21
	brge .L9
.L11:
	movw r20,r14
	movw r22,r28
	movw r24,r12
	call partition
	movw r16,r24
	movw r20,r24
	subi r20,1
	sbc r21,__zero_reg__
	movw r22,r28
	movw r24,r12
	call quicksort
	movw r28,r16
	adiw r28,1
	cp r28,r14
	cpc r29,r15
	brlt .L11
.L9:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	quicksort, .-quicksort
	.ident	"GCC: (GNU) 7.3.0"
