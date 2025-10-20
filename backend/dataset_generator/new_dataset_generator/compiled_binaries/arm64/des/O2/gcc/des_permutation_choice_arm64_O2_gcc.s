	.arch armv8-a
	.file	"des_permutation_choice.c"
	.text
	.align	2
	.p2align 4,,11
	.global	des_pc1
	.type	des_pc1, %function
des_pc1:
.LFB0:
	.cfi_startproc
	mov	x3, x0
	mov	w2, 55
	mov	x0, 0
	.p2align 3,,7
.L2:
	add	w1, w2, 9
	lsr	x1, x3, x1
	and	x1, x1, 1
	lsl	x1, x1, x2
	sub	w2, w2, #1
	orr	x0, x0, x1
	cmn	w2, #1
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
