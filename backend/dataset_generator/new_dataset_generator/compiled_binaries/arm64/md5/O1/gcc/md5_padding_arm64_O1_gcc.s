	.arch armv8-a
	.file	"md5_padding.c"
	.text
	.align	2
	.global	md5_padding
	.type	md5_padding, %function
md5_padding:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x1
	mov	x20, x2
	mov	x2, x1
	mov	x1, x0
	mov	x0, x20
	bl	memcpy
	mov	w0, -128
	strb	w0, [x20, x19]
	mov	x21, 55
	sub	x21, x21, x19
	and	x21, x21, 63
	add	x0, x19, 1
	add	x20, x20, x0
	mov	x2, x21
	mov	w1, 0
	mov	x0, x20
	bl	memset
	lsl	x19, x19, 3
	str	x19, [x20, x21]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
