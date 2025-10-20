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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	movw r26,r22
	movw r18,r24
	subi r18,-16
	sbci r19,-1
.L2:
	ld r24,Z+
	ld r25,X+
	movw r28,r30
	sbiw r28,1
	eor r24,r25
	st Y,r24
	cp r30,r18
	cpc r31,r19
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (GNU) 7.3.0"
