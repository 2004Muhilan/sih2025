	.file	"linked_list_insert.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	linked_list_insert
	.type	linked_list_insert, @function
linked_list_insert:
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
	ldd r24,Y+1
	ldd r25,Y+2
	or r24,r25
	breq .L6
	rjmp .L4
.L5:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
	std Y+2,r25
	std Y+1,r24
.L4:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
	or r24,r25
	brne .L5
	rjmp .L1
.L6:
	nop
.L1:
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
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (GNU) 7.3.0"
