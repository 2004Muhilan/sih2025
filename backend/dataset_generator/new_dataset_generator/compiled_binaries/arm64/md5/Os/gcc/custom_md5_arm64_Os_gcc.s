	.arch armv8-a
	.file	"custom_md5.c"
	.text
	.align	2
	.global	md5_transform
	.type	md5_transform, %function
md5_transform:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x11, sp, 8
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	ldp	w8, w7, [x0]
	ldr	x3, [x2]
	str	x3, [sp, 72]
	mov	x3, 0
	ldp	w6, w4, [x0, 8]
.L2:
	ldrb	w5, [x1, 2]
	ldrb	w2, [x1, 1]
	lsl	w5, w5, 16
	orr	w2, w5, w2, lsl 8
	ldrb	w5, [x1, 3]
	ldrb	w9, [x1], 4
	orr	w5, w9, w5, lsl 24
	orr	w2, w2, w5
	str	w2, [x3, x11]
	add	x3, x3, 4
	cmp	x3, 64
	bne	.L2
	mov	w3, w4
	mov	w5, w6
	mov	w2, w7
	mov	w10, w8
	mov	x9, 0
.L3:
	eor	w1, w5, w3
	ldr	w12, [x11, x9, lsl 2]
	and	w1, w1, w2
	add	x9, x9, 1
	eor	w1, w1, w3
	add	w1, w1, w12
	add	w1, w1, w10
	mov	w10, w3
	ror	w1, w1, 25
	add	w1, w1, w2
	cmp	x9, 16
	bne	.L5
	add	w7, w7, w1
	add	w6, w6, w2
	add	w8, w8, w3
	add	w4, w4, w5
	stp	w8, w7, [x0]
	stp	w6, w4, [x0, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L4
	bl	__stack_chk_fail
.L5:
	mov	w3, w5
	mov	w5, w2
	mov	w2, w1
	b	.L3
.L4:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	2
	.global	md5_init
	.type	md5_init, %function
md5_init:
.LFB15:
	.cfi_startproc
	mov	x1, 8961
	movk	x1, 0x6745, lsl 16
	movk	x1, 0xab89, lsl 32
	movk	x1, 0xefcd, lsl 48
	str	x1, [x0]
	mov	x1, 56574
	movk	x1, 0x98ba, lsl 16
	movk	x1, 0x5476, lsl 32
	movk	x1, 0x1032, lsl 48
	str	x1, [x0, 8]
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
