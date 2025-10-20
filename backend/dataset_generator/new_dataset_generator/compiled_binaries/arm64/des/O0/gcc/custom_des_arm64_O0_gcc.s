	.arch armv8-a
	.file	"custom_des.c"
	.text
	.section	.rodata
	.align	3
	.type	sbox, %object
	.size	sbox, 512
sbox:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.string	"\007"
	.string	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.zero	448
	.text
	.align	2
	.global	des_encrypt
	.type	des_encrypt, %function
des_encrypt:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 56]
	str	wzr, [sp, 32]
	b	.L2
.L3:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x1, x0, 255
	mov	w2, 7
	ldr	w0, [sp, 32]
	sub	w0, w2, w0
	lsl	w0, w0, 3
	lsl	x0, x1, x0
	ldr	x1, [sp, 56]
	orr	x0, x1, x0
	str	x0, [sp, 56]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w0, [sp, 32]
	cmp	w0, 7
	ble	.L3
	str	wzr, [sp, 36]
	b	.L4
.L5:
	ldr	x0, [sp, 56]
	str	w0, [sp, 44]
	ldr	x0, [sp, 56]
	lsr	x0, x0, 32
	str	w0, [sp, 48]
	ldr	w0, [sp, 36]
	negs	w1, w0
	and	w0, w0, 7
	and	w1, w1, 7
	csneg	w0, w0, w1, mi
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	eor	w0, w0, w1
	str	w0, [sp, 52]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	eor	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 44]
	lsl	x1, x0, 32
	ldr	w0, [sp, 48]
	orr	x0, x1, x0
	str	x0, [sp, 56]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 36]
	cmp	w0, 15
	ble	.L5
	str	wzr, [sp, 40]
	b	.L6
.L7:
	mov	w1, 7
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	lsl	w0, w0, 3
	ldr	x1, [sp, 56]
	lsr	x2, x1, x0
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 40]
	cmp	w0, 7
	ble	.L7
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
