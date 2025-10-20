	.arch armv8-a
	.file	"custom_md5.c"
	.text
	.align	2
	.global	md5_transform
	.type	md5_transform, %function
md5_transform:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	str	w0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L2
.L3:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w2, w0
	ldrsw	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 8
	orr	w1, w2, w0
	ldrsw	x0, [sp, 40]
	add	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 16
	orr	w1, w1, w0
	ldrsw	x0, [sp, 40]
	add	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 24
	orr	w0, w1, w0
	mov	w2, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 4
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 15
	ble	.L3
	str	wzr, [sp, 44]
	b	.L4
.L5:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	and	w1, w1, w0
	ldr	w0, [sp, 24]
	mvn	w2, w0
	ldr	w0, [sp, 32]
	and	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 32]
	str	w0, [sp, 52]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 48]
	add	w1, w1, w0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	add	x2, sp, 56
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	ror	w0, w0, 25
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 52]
	str	w0, [sp, 20]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 15
	ble	.L5
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 24]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 28]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w1, [sp, 32]
	add	w1, w2, w1
	str	w1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 120]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	md5_transform, .-md5_transform
	.align	2
	.global	md5_init
	.type	md5_init, %function
md5_init:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	mov	w1, 8961
	movk	w1, 0x6745, lsl 16
	str	w1, [x0]
	ldr	x0, [sp, 8]
	mov	w1, 43913
	movk	w1, 0xefcd, lsl 16
	str	w1, [x0, 4]
	ldr	x0, [sp, 8]
	mov	w1, 56574
	movk	w1, 0x98ba, lsl 16
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	mov	w1, 21622
	movk	w1, 0x1032, lsl 16
	str	w1, [x0, 12]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
