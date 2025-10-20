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
	mov	x4, x0
	mov	x0, x1
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 32
	stp	x19, x20, [sp, 48]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x2
	mov	x19, x3
	str	x21, [sp, 64]
	.cfi_offset 21, -16
	ldr	x2, [x1]
	str	x2, [sp, 24]
	mov	x2, 0
	cbz	x4, .L4
	sdiv	x21, x0, x4
	mov	x1, x4
	add	x3, sp, 16
	add	x2, sp, 8
	msub	x0, x21, x4, x0
	bl	rsa_extended_gcd
	ldp	x1, x4, [sp, 8]
	msub	x4, x21, x1, x4
.L2:
	str	x4, [x20]
	str	x1, [x19]
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L3
	bl	__stack_chk_fail
.L4:
	mov	x1, 1
	b	.L2
.L3:
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	ldr	x21, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
