	.arch armv8-a
	.file	"des_permutation_choice.c"
	.text
	.align	2
	.global	des_pc1
	.type	des_pc1, %function
des_pc1:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L2
.L3:
	mov	w1, 64
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	ldr	x1, [sp, 8]
	lsr	x0, x1, x0
	and	x1, x0, 1
	mov	w2, 55
	ldr	w0, [sp, 20]
	sub	w0, w2, w0
	lsl	x0, x1, x0
	ldr	x1, [sp, 24]
	orr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 55
	ble	.L3
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
