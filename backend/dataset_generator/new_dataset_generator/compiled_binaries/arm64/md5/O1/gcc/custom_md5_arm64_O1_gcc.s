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
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 72]
	mov	x3, 0
	ldr	w12, [x0]
	ldr	w11, [x0, 4]
	ldr	w10, [x0, 8]
	ldr	w9, [x0, 12]
	add	x4, sp, 8
	add	x6, sp, 72
	mov	x5, x4
.L2:
	ldrb	w2, [x1, 1]
	ldrb	w3, [x1, 2]
	lsl	w3, w3, 16
	orr	w2, w3, w2, lsl 8
	ldrb	w3, [x1, 3]
	ldrb	w7, [x1], 4
	orr	w3, w7, w3, lsl 24
	orr	w2, w2, w3
	str	w2, [x5], 4
	cmp	x5, x6
	bne	.L2
	mov	w2, w9
	mov	w5, w10
	mov	w3, w11
	mov	w7, w12
	b	.L3
.L5:
	mov	w2, w5
	mov	w5, w3
	mov	w3, w1
.L3:
	eor	w1, w5, w2
	and	w1, w1, w3
	eor	w1, w1, w2
	ldr	w8, [x4], 4
	add	w1, w1, w8
	add	w1, w1, w7
	ror	w1, w1, 25
	add	w1, w1, w3
	mov	w7, w2
	cmp	x4, x6
	bne	.L5
	add	w12, w12, w2
	str	w12, [x0]
	add	w11, w11, w1
	str	w11, [x0, 4]
	add	w10, w10, w3
	str	w10, [x0, 8]
	add	w9, w9, w5
	str	w9, [x0, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L8
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L8:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	2
	.global	md5_init
	.type	md5_init, %function
md5_init:
.LFB15:
	.cfi_startproc
	mov	w1, 8961
	movk	w1, 0x6745, lsl 16
	str	w1, [x0]
	mov	w1, 43913
	movk	w1, 0xefcd, lsl 16
	str	w1, [x0, 4]
	mov	w1, 56574
	movk	w1, 0x98ba, lsl 16
	str	w1, [x0, 8]
	mov	w1, 21622
	movk	w1, 0x1032, lsl 16
	str	w1, [x0, 12]
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
