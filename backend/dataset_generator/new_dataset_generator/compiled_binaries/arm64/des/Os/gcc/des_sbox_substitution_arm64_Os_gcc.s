	.arch armv8-a
	.file	"des_sbox_substitution.c"
	.text
	.align	2
	.global	des_sbox
	.type	des_sbox, %function
des_sbox:
.LFB0:
	.cfi_startproc
	and	w1, w0, 32
	ubfx	x2, x0, 1, 4
	and	w0, w0, 1
	orr	w1, w0, w1, lsr 4
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	ubfiz	x1, x1, 4, 2
	add	x0, x0, x1
	ldrb	w0, [x0, x2]
	ret
	.cfi_endproc
.LFE0:
	.size	des_sbox, .-des_sbox
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	S1, %object
	.size	S1, 64
S1:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.ascii	"\007"
	.string	""
	.ascii	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.string	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
