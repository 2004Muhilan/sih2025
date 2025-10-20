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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	subi r22,1
	sbc r23,__zero_reg__
	brne .L2
	ret
.L4:
	adiw r30,2
.L6:
	cp r18,r22
	cpc r19,r23
	brsh .L8
	ld r20,Z
	ldd r21,Z+1
	subi r18,-1
	sbci r19,-1
	ldd r26,Z+2
	ldd r27,Z+3
	cp r26,r20
	cpc r27,r21
	brge .L4
	std Z+1,r27
	st Z,r26
	std Z+3,r21
	std Z+2,r20
	rjmp .L4
.L8:
	subi r22,1
	sbc r23,__zero_reg__
	breq .L1
.L2:
	mov r30,r24
	mov r31,r25
	ldi r19,0
	ldi r18,0
	rjmp .L6
.L1:
/* epilogue start */
	ret
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (GNU) 7.3.0"
