	.file	"binary_tree_search.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	or r24,r25
	brne .L2
	ldi r24,0
	ldi r25,0
	rjmp .L3
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brne .L4
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L3
.L4:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brge .L5
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
	ldd r18,Y+3
	ldd r19,Y+4
	movw r22,r18
	call binary_tree_search
	rjmp .L3
.L5:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	ldd r18,Y+3
	ldd r19,Y+4
	movw r22,r18
	call binary_tree_search
.L3:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (GNU) 7.3.0"
