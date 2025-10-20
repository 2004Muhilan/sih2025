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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	subi r22,1
	sbc r23,__zero_reg__
	breq .L1
.L2:
	movw r30,r24
	ldi r19,0
	ldi r18,0
.L5:
	ld r20,Z+
	ld r21,Z+
	subi r18,-1
	sbci r19,-1
	ld r26,Z
	ldd r27,Z+1
	cp r26,r20
	cpc r27,r21
	brge .L4
	movw r28,r30
	sbiw r28,2
	std Y+1,r27
	st Y,r26
	std Z+1,r21
	st Z,r20
.L4:
	cp r18,r22
	cpc r19,r23
	brne .L5
	subi r22,1
	sbc r23,__zero_reg__
	brne .L2
.L1:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (GNU) 7.3.0"
