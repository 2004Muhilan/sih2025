	.arch armv8-a
	.file	"rsa_extended_gcd.c"
	.text
	.align	2
	.global	rsa_extended_gcd
	.type	rsa_extended_gcd, %function
rsa_extended_gcd:
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
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp]
	mov	x1, 1
	str	x1, [x0]
	ldr	x0, [sp, 16]
	b	.L4
.L2:
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	x2, sp, 40
	add	x1, sp, 32
	mov	x3, x2
	mov	x2, x1
	ldr	x1, [sp, 24]
	bl	rsa_extended_gcd
	str	x0, [sp, 48]
	ldr	x1, [sp, 40]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 24]
	sdiv	x2, x2, x0
	ldr	x0, [sp, 32]
	mul	x0, x2, x0
	sub	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x1, [sp, 32]
	ldr	x0, [sp]
	str	x1, [x0]
	ldr	x0, [sp, 48]
.L4:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
