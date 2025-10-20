	.arch armv8-a
	.file	"rsa_miller_rabin.c"
	.text
	.align	2
	.global	rsa_miller_rabin
	.type	rsa_miller_rabin, %function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	cmp	x0, 1
	bhi	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	cmp	x0, 2
	beq	.L4
	ldr	x0, [sp, 8]
	cmp	x0, 3
	bne	.L5
.L4:
	mov	w0, 1
	b	.L3
.L5:
	ldr	x0, [sp, 8]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L6
	mov	w0, 0
	b	.L3
.L6:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	b	.L7
.L8:
	ldr	x0, [sp, 24]
	lsr	x0, x0, 1
	str	x0, [sp, 24]
.L7:
	ldr	x0, [sp, 24]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L8
	mov	w0, 1
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
