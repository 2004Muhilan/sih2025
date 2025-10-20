	.arch armv8-a
	.file	"sha1_padding.c"
	.text
	.align	2
	.global	sha1_padding
	.type	sha1_padding, %function
sha1_padding:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memcpy
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	mov	w1, -128
	strb	w1, [x0]
	mov	x1, 55
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	and	x0, x0, 63
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x2, [sp, 64]
	mov	w1, 0
	bl	memset
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L2
.L3:
	mov	w1, 7
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	lsl	w0, w0, 3
	ldr	x1, [sp, 72]
	lsr	x2, x1, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 64]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	add	x0, x1, x0
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 60]
	cmp	w0, 7
	ble	.L3
	nop
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
