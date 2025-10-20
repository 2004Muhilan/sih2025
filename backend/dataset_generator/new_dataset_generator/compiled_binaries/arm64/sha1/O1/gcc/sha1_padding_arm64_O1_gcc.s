	.arch armv8-a
	.file	"sha1_padding.c"
	.text
	.align	2
	.global	sha1_padding
	.type	sha1_padding, %function
sha1_padding:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x20, x1
	mov	x19, x2
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	memcpy
	mov	w0, -128
	strb	w0, [x19, x20]
	mov	x21, 55
	sub	x21, x21, x20
	and	x21, x21, 63
	add	x22, x20, 1
	mov	x2, x21
	mov	w1, 0
	add	x0, x19, x22
	bl	memset
	lsl	x3, x20, 3
	add	x22, x22, x21
	add	x1, x19, x22
	mov	w0, 56
.L2:
	lsr	x2, x3, x0
	strb	w2, [x1], 1
	sub	w0, w0, #8
	cmn	w0, #8
	bne	.L2
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
