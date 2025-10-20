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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	or r24,r25
	breq .L8
	ld r24,Z
	ldd r25,Z+1
	cp r22,r24
	cpc r23,r25
	brne .L3
	rjmp .L9
.L11:
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	sbiw r30,0
	breq .L8
.L12:
	ld r24,Z
	ldd r25,Z+1
	cp r24,r22
	cpc r25,r23
	breq .L9
.L3:
	cp r22,r24
	cpc r23,r25
	brlt .L11
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	sbiw r30,0
	brne .L12
.L8:
	ldi r25,0
	ldi r24,0
	ret
.L9:
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	ret
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (GNU) 7.3.0"
