	.arch armv8-a
	.file	"md5_padding.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_padding
	.type	md5_padding, %function
md5_padding:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x3, x2
	mov	x2, x1
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x1
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	mov	x3, x0
	mov	x20, 55
	add	x0, x19, 1
	sub	x20, x20, x19
	and	x20, x20, 63
	mov	w1, -128
	strb	w1, [x3, x19]
	add	x3, x3, x0
	mov	x2, x20
	mov	x0, x3
	lsl	x19, x19, 3
	mov	w1, 0
	bl	memset
	str	x19, [x0, x20]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
