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
	movw r18,r24
	movw r26,r20
	lsl r26
	rol r27
	add r26,r18
	adc r27,r19
	ld r14,X+
	ld r15,X
	sbiw r26,1
	movw r28,r22
	sbiw r28,1
	movw r30,r22
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
.L3:
	movw r24,r28
	adiw r24,1
	cp r22,r20
	cpc r23,r21
	brlt .L5
	movw r30,r24
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	ld r18,Z
	ldd r19,Z+1
	ld r20,X+
	ld r21,X
	sbiw r26,1
	std Z+1,r21
	st Z,r20
	st X+,r18
	st X,r19
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
.L5:
	ld r16,Z+
	ld r17,Z+
	cp r16,r14
	cpc r17,r15
	brge .L4
	movw r28,r24
	lsl r28
	rol r29
	add r28,r18
	adc r29,r19
	ld r12,Y
	ldd r13,Y+1
	std Y+1,r17
	st Y,r16
	movw r28,r30
	sbiw r28,2
	std Y+1,r13
	st Y,r12
	movw r28,r24
.L4:
	subi r22,-1
	sbci r23,-1
	rjmp .L3
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
	movw r14,r24
	movw r28,r22
	movw r12,r20
.L8:
	cp r28,r12
	cpc r29,r13
	brge .L6
	movw r20,r12
	movw r22,r28
	movw r24,r14
	call partition
	movw r16,r24
	movw r20,r24
	subi r20,1
	sbc r21,__zero_reg__
	movw r22,r28
	movw r24,r14
	call quicksort
	movw r28,r16
	adiw r28,1
	rjmp .L8
.L6:
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
