	.arch armv8-a
	.file	"custom_rsa.c"
	.text
	.align	2
	.p2align 4,,11
	.global	mod_exp
	.type	mod_exp, %function
mod_exp:
.LFB0:
	.cfi_startproc
	udiv	x3, x0, x2
	msub	x3, x3, x2, x0
	mov	x0, 1
	cbz	x1, .L1
	.p2align 3,,7
.L4:
	mul	x4, x3, x0
	tbz	x1, 0, .L3
	udiv	x0, x4, x2
	msub	x0, x0, x2, x4
.L3:
	mul	x3, x3, x3
	lsr	x1, x1, 1
	udiv	x4, x3, x2
	msub	x3, x4, x2, x3
	cbnz	x1, .L4
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.align	2
	.p2align 4,,11
	.global	extended_gcd
	.type	extended_gcd, %function
extended_gcd:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 32
	stp	x19, x20, [sp, 48]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x2
	mov	x19, x3
	ldr	x5, [x4]
	str	x5, [sp, 24]
	mov	x5, 0
	mov	x4, x0
	mov	x5, 1
	mov	x0, x1
	cbnz	x4, .L26
.L12:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	str	x4, [x20]
	str	x5, [x19]
	ldr	x3, [sp, 24]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L27
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L26:
	.cfi_restore_state
	stp	x21, x22, [sp, 64]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	mov	x2, x5
	sdiv	x21, x1, x4
	msub	x5, x21, x4, x1
	cbz	x5, .L13
	sdiv	x22, x4, x5
	mov	x1, x2
	msub	x0, x22, x5, x4
	cbnz	x0, .L28
.L14:
	msub	x2, x21, x1, x0
	mov	x4, x5
	mov	x5, x1
.L13:
	ldp	x21, x22, [sp, 64]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	mov	x0, x4
	mov	x4, x2
	b	.L12
	.p2align 2,,3
.L28:
	.cfi_restore_state
	stp	x23, x24, [sp, 80]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	sdiv	x23, x5, x0
	msub	x1, x23, x0, x5
	cbz	x1, .L15
	sdiv	x24, x0, x1
	add	x2, sp, 8
	add	x3, sp, 16
	msub	x0, x24, x1, x0
	bl	extended_gcd
	ldp	x2, x1, [sp, 8]
	msub	x1, x24, x2, x1
	msub	x2, x23, x1, x2
.L15:
	ldp	x23, x24, [sp, 80]
	.cfi_restore 24
	.cfi_restore 23
	mov	x5, x0
	msub	x1, x22, x2, x1
	mov	x0, x2
	b	.L14
.L27:
	.cfi_restore 21
	.cfi_restore 22
	stp	x21, x22, [sp, 64]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	stp	x23, x24, [sp, 80]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.align	2
	.p2align 4,,11
	.global	rsa_encrypt
	.type	rsa_encrypt, %function
rsa_encrypt:
.LFB5:
	.cfi_startproc
	udiv	x3, x0, x2
	msub	x3, x3, x2, x0
	mov	x0, 1
	cbz	x1, .L29
	.p2align 3,,7
.L32:
	mul	x4, x3, x0
	tbz	x1, 0, .L31
	udiv	x0, x4, x2
	msub	x0, x0, x2, x4
.L31:
	mul	x3, x3, x3
	lsr	x1, x1, 1
	udiv	x4, x3, x2
	msub	x3, x4, x2, x3
	cbnz	x1, .L32
.L29:
	ret
	.cfi_endproc
.LFE5:
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.p2align 4,,11
	.global	rsa_decrypt
	.type	rsa_decrypt, %function
rsa_decrypt:
.LFB7:
	.cfi_startproc
	udiv	x3, x0, x2
	msub	x3, x3, x2, x0
	mov	x0, 1
	cbz	x1, .L38
	.p2align 3,,7
.L41:
	mul	x4, x3, x0
	tbz	x1, 0, .L40
	udiv	x0, x4, x2
	msub	x0, x0, x2, x4
.L40:
	mul	x3, x3, x3
	lsr	x1, x1, 1
	udiv	x4, x3, x2
	msub	x3, x4, x2, x3
	cbnz	x1, .L41
.L38:
	ret
	.cfi_endproc
.LFE7:
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
