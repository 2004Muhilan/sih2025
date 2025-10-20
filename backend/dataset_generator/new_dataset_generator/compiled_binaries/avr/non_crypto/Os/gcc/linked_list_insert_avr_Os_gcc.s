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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
.L8:
	sbiw r30,0
	breq .L1
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	rjmp .L8
.L1:
/* epilogue start */
	ret
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (GNU) 7.3.0"
