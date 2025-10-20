	.arch armv8-a
	.file	"rc4_vmpc.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_vmpc_variant
	.type	rc4_vmpc_variant, %function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	adrp	x4, .LC0
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	mov	x2, sp
	movi	v16.4s, 0x10
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	movi	v7.4s, 0x4
	movi	v6.4s, 0x8
	ldr	q2, [x4, #:lo12:.LC0]
	ldr	x4, [x3]
	str	x4, [sp, 264]
	mov	x4, 0
	movi	v5.4s, 0xc
	mov	x3, x2
	add	x4, sp, 256
	.p2align 3,,7
.L2:
	mov	v0.16b, v2.16b
	add	v2.4s, v2.4s, v16.4s
	add	v1.4s, v0.4s, v6.4s
	add	v3.4s, v0.4s, v5.4s
	add	v4.4s, v0.4s, v7.4s
	uzp1	v1.8h, v1.8h, v3.8h
	uzp1	v0.8h, v0.8h, v4.8h
	uzp1	v0.16b, v0.16b, v1.16b
	str	q0, [x3], 16
	cmp	x3, x4
	bne	.L2
	cbz	x1, .L1
	mov	x4, x0
	mov	w0, 0
	add	x5, x4, x1
	.p2align 3,,7
.L4:
	ldrb	w3, [x4]
	ldrb	w1, [x2, w3, sxtw]
	add	w0, w0, w1
	and	w0, w0, 255
	ldrb	w0, [x2, w0, sxtw]
	ldrb	w1, [x2, w0, sxtw]
	ldrb	w1, [x2, w1, sxtw]
	add	w1, w1, 1
	and	w1, w1, 255
	ldrb	w1, [x2, w1, sxtw]
	eor	w3, w3, w1
	strb	w3, [x4], 1
	cmp	x5, x4
	bne	.L4
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L13
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L13:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
