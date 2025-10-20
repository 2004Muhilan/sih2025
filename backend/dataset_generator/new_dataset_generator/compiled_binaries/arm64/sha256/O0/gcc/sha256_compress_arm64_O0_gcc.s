	.arch armv8-a
	.file	"sha256_compress.c"
	.text
	.align	2
	.global	sha256_compress
	.type	sha256_compress, %function
sha256_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	stp	x29, x30, [sp, 352]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 352
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 344]
	mov	x1, 0
	str	wzr, [sp, 20]
	b	.L2
.L3:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	add	x1, sp, 88
	str	w2, [x1, x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 15
	ble	.L3
	mov	w0, 16
	str	w0, [sp, 24]
	b	.L4
.L5:
	ldr	w0, [sp, 24]
	sub	w0, w0, #15
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 88
	ldr	w0, [x1, x0]
	ror	w1, w0, 7
	ldr	w0, [sp, 24]
	sub	w0, w0, #15
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	ror	w0, w0, 18
	eor	w1, w1, w0
	ldr	w0, [sp, 24]
	sub	w0, w0, #15
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	lsr	w0, w0, 3
	eor	w0, w1, w0
	str	w0, [sp, 80]
	ldr	w0, [sp, 24]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 88
	ldr	w0, [x1, x0]
	ror	w1, w0, 17
	ldr	w0, [sp, 24]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	ror	w0, w0, 19
	eor	w1, w1, w0
	ldr	w0, [sp, 24]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	lsr	w0, w0, 10
	eor	w0, w1, w0
	str	w0, [sp, 84]
	ldr	w0, [sp, 24]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 88
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 80]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	sub	w0, w0, #7
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 84]
	add	w2, w1, w0
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	add	x1, sp, 88
	str	w2, [x1, x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 24]
	cmp	w0, 63
	ble	.L5
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	str	w0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	str	w0, [sp, 44]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 20]
	str	w0, [sp, 48]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 24]
	str	w0, [sp, 52]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 28]
	str	w0, [sp, 56]
	str	wzr, [sp, 60]
	b	.L6
.L7:
	ldr	w0, [sp, 44]
	ror	w1, w0, 6
	ldr	w0, [sp, 44]
	ror	w0, w0, 11
	eor	w1, w1, w0
	ldr	w0, [sp, 44]
	ror	w0, w0, 25
	eor	w0, w1, w0
	str	w0, [sp, 64]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 48]
	and	w2, w2, w0
	ldr	w0, [sp, 44]
	mvn	w3, w0
	ldr	w0, [sp, 52]
	and	w0, w3, w0
	eor	w0, w2, w0
	add	w1, w1, w0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	mov	w0, 12184
	movk	w0, 0x428a, lsl 16
	add	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 28]
	ror	w1, w0, 2
	ldr	w0, [sp, 28]
	ror	w0, w0, 13
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	ror	w0, w0, 22
	eor	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	and	w1, w1, w0
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 36]
	and	w0, w2, w0
	eor	w0, w1, w0
	ldr	w1, [sp, 72]
	add	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 52]
	str	w0, [sp, 56]
	ldr	w0, [sp, 48]
	str	w0, [sp, 52]
	ldr	w0, [sp, 44]
	str	w0, [sp, 48]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 68]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L6:
	ldr	w0, [sp, 60]
	cmp	w0, 63
	ble	.L7
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 32]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 36]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w1, [sp, 40]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w1, [sp, 44]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 20
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 20
	ldr	w1, [sp, 48]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 24
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 24
	ldr	w1, [sp, 52]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 28
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 28
	ldr	w1, [sp, 56]
	add	w1, w2, w1
	str	w1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 344]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp, 352]
	add	sp, sp, 368
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
