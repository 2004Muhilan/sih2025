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
	mov r26,r22
	mov r27,r23
	movw r20,r24
	subi r20,-16
	sbci r21,-1
.L2:
	ld r25,Z+
	ld r18,X+
	movw r28,r30
	sbiw r28,1
	eor r25,r18
	st Y,r25
	cp r30,r20
	cpc r31,r21
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (GNU) 7.3.0"
