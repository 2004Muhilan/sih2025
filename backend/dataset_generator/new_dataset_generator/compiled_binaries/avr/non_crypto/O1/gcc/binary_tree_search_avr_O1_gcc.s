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
	sbiw r24,0
	breq .L4
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	cp r18,r22
	cpc r19,r23
	breq .L5
	cp r22,r18
	cpc r23,r19
	brlt .L6
	ldd r24,Z+4
	ldd r25,Z+5
	call binary_tree_search
	ret
.L6:
	ldd r24,Z+2
	ldd r25,Z+3
	call binary_tree_search
	ret
.L4:
	ldi r25,0
	ldi r24,0
	ret
.L5:
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	ret
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (GNU) 7.3.0"
