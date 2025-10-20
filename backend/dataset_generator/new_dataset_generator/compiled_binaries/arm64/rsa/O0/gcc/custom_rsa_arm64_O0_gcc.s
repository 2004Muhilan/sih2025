	.arch armv8-a
	.file	"custom_rsa.c"
	.text
	.align	2
	.global	mod_exp
	.type	mod_exp, %function
mod_exp:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	b	.L2
.L4:
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	mul	x0, x1, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	mul	x0, x0, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L4
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.align	2
	.global	extended_gcd
	.type	extended_gcd, %function
extended_gcd:
.LFB1:
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
	bne	.L7
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp]
	mov	x1, 1
	str	x1, [x0]
	ldr	x0, [sp, 16]
	b	.L9
.L7:
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
	bl	extended_gcd
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
.L9:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.align	2
	.global	rsa_encrypt
	.type	rsa_encrypt, %function
rsa_encrypt:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	mod_exp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.global	rsa_decrypt
	.type	rsa_decrypt, %function
rsa_decrypt:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	mod_exp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
