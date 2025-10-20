	.file	"aes_add_round_key.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	movw r20,r24
	subi r20,-16
	sbci r21,-1
.L2:
	movw r26,r24
	ld r18,X+
	movw r24,r26
	ld r19,Z+
	sbiw r26,1
	eor r18,r19
	st X,r18
	cp r24,r20
	cpc r25,r21
	brne .L2
/* epilogue start */
	ret
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (GNU) 7.3.0"
