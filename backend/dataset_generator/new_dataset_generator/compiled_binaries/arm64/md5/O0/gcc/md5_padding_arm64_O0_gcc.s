	.arch armv8-a
	.file	"md5_padding.c"
	.text
	.align	2
	.global	md5_padding
	.type	md5_padding, %function
md5_padding:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	bl	memcpy
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	mov	w1, -128
	strb	w1, [x0]
	mov	x1, 55
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	and	x0, x0, 63
	str	x0, [sp, 48]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x2, [sp, 48]
	mov	w1, 0
	bl	memset
	ldr	x0, [sp, 16]
	lsl	x0, x0, 3
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	str	x1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L2
	bl	__stack_chk_fail
.L2:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
