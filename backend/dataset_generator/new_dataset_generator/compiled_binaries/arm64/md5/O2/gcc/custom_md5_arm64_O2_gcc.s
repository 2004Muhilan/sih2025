	.arch armv8-a
	.file	"custom_md5.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_transform
	.type	md5_transform, %function
md5_transform:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	mov	x2, sp
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	add	x5, sp, 64
	ld4	{v16.16b - v19.16b}, [x1]
	ldr	x1, [x3]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	q20, [x0]
	uxtl2	v6.8h, v16.16b
	ldr	s1, [x0, 12]
	uxtl	v23.8h, v16.8b
	shll2	v0.8h, v17.16b, 8
	shll	v4.8h, v17.8b, 8
	uxtl2	v22.4s, v6.8h
	uxtl2	v21.8h, v18.16b
	uxtl2	v5.8h, v19.16b
	uxtl	v16.8h, v19.8b
	uxtl	v26.4s, v6.4h
	uxtl	v7.4s, v0.4h
	uxtl	v25.4s, v23.4h
	uxtl2	v24.4s, v23.8h
	uxtl	v6.4s, v4.4h
	uxtl	v23.8h, v18.8b
	uxtl2	v0.4s, v0.8h
	uxtl2	v4.4s, v4.8h
	uxtl	v18.4s, v5.4h
	shll	v19.4s, v23.4h, 16
	orr	v0.16b, v0.16b, v22.16b
	uxtl	v17.4s, v16.4h
	shll	v22.4s, v21.4h, 16
	orr	v7.16b, v7.16b, v26.16b
	shll2	v21.4s, v21.8h, 16
	uxtl2	v5.4s, v5.8h
	orr	v6.16b, v6.16b, v25.16b
	orr	v4.16b, v4.16b, v24.16b
	shll2	v23.4s, v23.8h, 16
	uxtl2	v16.4s, v16.8h
	shl	v5.4s, v5.4s, 24
	orr	v7.16b, v7.16b, v22.16b
	orr	v0.16b, v0.16b, v21.16b
	shl	v18.4s, v18.4s, 24
	orr	v6.16b, v6.16b, v19.16b
	orr	v4.16b, v4.16b, v23.16b
	shl	v17.4s, v17.4s, 24
	shl	v16.4s, v16.4s, 24
	orr	v0.16b, v0.16b, v5.16b
	orr	v7.16b, v7.16b, v18.16b
	orr	v5.16b, v6.16b, v17.16b
	orr	v4.16b, v4.16b, v16.16b
	ldp	s2, s3, [x0, 4]
	fmov	w3, s20
	stp	q7, q0, [sp, 32]
	stp	q5, q4, [sp]
	b	.L2
	.p2align 2,,3
.L4:
	fmov	s1, s3
	fmov	s3, s2
	fmov	s2, s0
.L2:
	eor	v0.8b, v3.8b, v1.8b
	fmov	w6, s2
	ldr	w4, [x2], 4
	fmov	w1, s0
	and	w1, w1, w6
	fmov	w6, s1
	eor	w1, w1, w6
	add	w1, w1, w4
	add	w1, w1, w3
	fmov	w3, s1
	ror	w1, w1, 25
	fmov	s0, w1
	add	v0.2s, v0.2s, v2.2s
	cmp	x5, x2
	bne	.L4
	ins	v1.s[1], v0.s[0]
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ins	v1.s[2], v2.s[0]
	ins	v1.s[3], v3.s[0]
	add	v1.4s, v1.4s, v20.4s
	str	q1, [x0]
	mov	x0, x1
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L7
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L7:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	2
	.p2align 4,,11
	.global	md5_init
	.type	md5_init, %function
md5_init:
.LFB15:
	.cfi_startproc
	adrp	x1, .LC0
	ldr	q0, [x1, #:lo12:.LC0]
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	1732584193
	.word	-271733879
	.word	-1732584194
	.word	271733878
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
