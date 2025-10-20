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
	movw r18,r20
	lsl r18
	rol r19
	movw r28,r24
	add r28,r18
	adc r29,r19
	ld r14,Y
	ldd r15,Y+1
	movw r16,r22
	subi r16,1
	sbc r17,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brge .L3
	lsl r22
	rol r23
	movw r30,r24
	add r30,r22
	adc r31,r23
	movw r20,r28
	rjmp .L5
.L4:
	cp r30,r20
	cpc r31,r21
	breq .L3
.L5:
	ld r18,Z+
	ld r19,Z+
	cp r18,r14
	cpc r19,r15
	brge .L4
	subi r16,-1
	sbci r17,-1
	movw r26,r16
	lsl r26
	rol r27
	add r26,r24
	adc r27,r25
	ld r22,X+
	ld r23,X
	sbiw r26,1
	st X+,r18
	st X,r19
	movw r26,r30
	sbiw r26,2
	st X+,r22
	st X,r23
	rjmp .L4
.L3:
	subi r16,-1
	sbci r17,-1
	movw r30,r16
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	ld r20,Y
	ldd r21,Y+1
	std Z+1,r21
	st Z,r20
	std Y+1,r25
	st Y,r24
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
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
	cp r22,r20
	cpc r23,r21
	brlt .L9
.L7:
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
.L9:
	movw r16,r20
	movw r28,r22
	movw r14,r24
	call partition
	movw r12,r24
	movw r20,r24
	subi r20,1
	sbc r21,__zero_reg__
	movw r22,r28
	movw r24,r14
	call quicksort
	movw r22,r12
	subi r22,-1
	sbci r23,-1
	movw r20,r16
	movw r24,r14
	call quicksort
	rjmp .L7
	.size	quicksort, .-quicksort
	.ident	"GCC: (GNU) 7.3.0"
