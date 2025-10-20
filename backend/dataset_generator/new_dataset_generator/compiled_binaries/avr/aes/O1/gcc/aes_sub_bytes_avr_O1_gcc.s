	.file	"aes_sub_bytes.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	movw r18,r24
	subi r18,-16
	sbci r19,-1
.L2:
	ld r30,X+
	movw r28,r26
	sbiw r28,1
	ldi r31,0
	subi r30,lo8(-(sbox))
	sbci r31,hi8(-(sbox))
	ld r24,Z
	st Y,r24
	cp r26,r18
	cpc r27,r19
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	aes_sub_bytes, .-aes_sub_bytes
.global	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	movw r18,r24
	subi r18,-16
	sbci r19,-1
.L5:
	ld r30,X+
	movw r28,r26
	sbiw r28,1
	ldi r31,0
	subi r30,lo8(-(inv_sbox.1501))
	sbci r31,hi8(-(inv_sbox.1501))
	ld r24,Z
	st Y,r24
	cp r26,r18
	cpc r27,r19
	brne .L5
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.type	inv_sbox.1501, @object
	.size	inv_sbox.1501, 256
inv_sbox.1501:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.zero	248
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.zero	240
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
