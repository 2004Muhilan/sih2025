	.arch armv8-a
	.file	"des_sbox_substitution.c"
	.text
	.section	.rodata
	.align	3
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
	.text
	.align	2
	.global	des_sbox
	.type	des_sbox, %function
des_sbox:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, 15]
	str	w1, [sp, 8]
	ldrb	w0, [sp, 15]
	asr	w0, w0, 4
	and	w1, w0, 2
	ldrb	w0, [sp, 15]
	and	w0, w0, 1
	orr	w0, w1, w0
	str	w0, [sp, 24]
	ldrb	w0, [sp, 15]
	asr	w0, w0, 1
	and	w0, w0, 15
	str	w0, [sp, 28]
	adrp	x0, S1
	add	x2, x0, :lo12:S1
	ldrsw	x0, [sp, 28]
	ldrsw	x1, [sp, 24]
	lsl	x1, x1, 4
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_sbox, .-des_sbox
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
