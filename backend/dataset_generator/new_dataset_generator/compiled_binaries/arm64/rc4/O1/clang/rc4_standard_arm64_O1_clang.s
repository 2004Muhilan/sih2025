	.text
	.file	"rc4_standard.c"
	.globl	rc4_init                        // -- Begin function rc4_init
	.p2align	2
	.type	rc4_init,@function
rc4_init:                               // @rc4_init
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	strb	w8, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	.LBB0_1
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x10, x8, x2
	ldrb	w11, [x0, x8]
	add	w9, w11, w9
	msub	x10, x10, x2, x8
	ldrb	w10, [x1, x10]
	add	w9, w9, w10
	and	x10, x9, #0xff
	ldrb	w12, [x0, x10]
	strb	w12, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #256
	strb	w11, [x0, x10]
	b.ne	.LBB0_3
// %bb.4:
	strh	wzr, [x0, #256]
	ret
.Lfunc_end0:
	.size	rc4_init, .Lfunc_end0-rc4_init
	.cfi_endproc
                                        // -- End function
	.globl	rc4_crypt                       // -- Begin function rc4_crypt
	.p2align	2
	.type	rc4_crypt,@function
rc4_crypt:                              // @rc4_crypt
	.cfi_startproc
// %bb.0:
	cbz	x2, .LBB1_2
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0, #256]
	ldrb	w10, [x0, #257]
	subs	x2, x2, #1
	add	w8, w8, #1
	and	x9, x8, #0xff
	strb	w8, [x0, #256]
	ldrb	w11, [x0, x9]
	add	w10, w11, w10
	and	x12, x10, #0xff
	strb	w10, [x0, #257]
	ldrb	w13, [x0, x12]
	strb	w13, [x0, x9]
	strb	w11, [x0, x12]
	ldrb	w9, [x0, x9]
	add	w8, w9, w11
	ldrb	w9, [x1]
	and	x8, x8, #0xff
	ldrb	w8, [x0, x8]
	eor	w8, w9, w8
	strb	w8, [x1], #1
	b.ne	.LBB1_1
.LBB1_2:
	ret
.Lfunc_end1:
	.size	rc4_crypt, .Lfunc_end1-rc4_crypt
	.cfi_endproc
                                        // -- End function
	.globl	rc4_encrypt                     // -- Begin function rc4_encrypt
	.p2align	2
	.type	rc4_encrypt,@function
rc4_encrypt:                            // @rc4_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	stp	x20, x19, [sp, #304]            // 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w28, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x4
	mov	x20, x3
	mov	x8, xzr
	add	x9, sp, #14
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	strb	w8, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	.LBB2_1
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #14
.LBB2_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x11, x8, x1
	ldrb	w12, [x10, x8]
	add	w9, w12, w9
	msub	x11, x11, x1, x8
	ldrb	w11, [x0, x11]
	add	w9, w9, w11
	and	x11, x9, #0xff
	ldrb	w13, [x10, x11]
	strb	w13, [x10, x8]
	add	x8, x8, #1
	cmp	x8, #256
	strb	w12, [x10, x11]
	b.ne	.LBB2_3
// %bb.4:
	mov	x0, x19
	mov	x1, x2
	mov	x2, x20
	strh	wzr, [sp, #270]
	bl	memcpy
	cbz	x20, .LBB2_8
// %bb.5:
	ldrb	w8, [sp, #270]
	ldrb	w9, [sp, #271]
	add	x10, sp, #14
.LBB2_6:                                // =>This Inner Loop Header: Depth=1
	add	w8, w8, #1
	subs	x20, x20, #1
	and	x11, x8, #0xff
	ldrb	w12, [x10, x11]
	add	w9, w12, w9
	and	x13, x9, #0xff
	ldrb	w14, [x10, x13]
	strb	w14, [x10, x11]
	strb	w12, [x10, x13]
	ldrb	w11, [x10, x11]
	add	w11, w11, w12
	ldrb	w12, [x19]
	and	x11, x11, #0xff
	ldrb	w11, [x10, x11]
	eor	w11, w12, w11
	strb	w11, [x19], #1
	b.ne	.LBB2_6
// %bb.7:
	strb	w8, [sp, #270]
	strb	w9, [sp, #271]
.LBB2_8:
	.cfi_def_cfa wsp, 320
	ldp	x20, x19, [sp, #304]            // 16-byte Folded Reload
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	rc4_encrypt, .Lfunc_end2-rc4_encrypt
	.cfi_endproc
                                        // -- End function
	.globl	rc4_decrypt                     // -- Begin function rc4_decrypt
	.p2align	2
	.type	rc4_decrypt,@function
rc4_decrypt:                            // @rc4_decrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	stp	x20, x19, [sp, #304]            // 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w28, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x4
	mov	x20, x3
	mov	x8, xzr
	add	x9, sp, #14
.LBB3_1:                                // =>This Inner Loop Header: Depth=1
	strb	w8, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	.LBB3_1
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #14
.LBB3_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x11, x8, x1
	ldrb	w12, [x10, x8]
	add	w9, w12, w9
	msub	x11, x11, x1, x8
	ldrb	w11, [x0, x11]
	add	w9, w9, w11
	and	x11, x9, #0xff
	ldrb	w13, [x10, x11]
	strb	w13, [x10, x8]
	add	x8, x8, #1
	cmp	x8, #256
	strb	w12, [x10, x11]
	b.ne	.LBB3_3
// %bb.4:
	mov	x0, x19
	mov	x1, x2
	mov	x2, x20
	strh	wzr, [sp, #270]
	bl	memcpy
	cbz	x20, .LBB3_8
// %bb.5:
	mov	w8, wzr
	mov	x9, xzr
	add	x10, sp, #14
.LBB3_6:                                // =>This Inner Loop Header: Depth=1
	mov	x11, x9
	add	x9, x9, #1
	and	x12, x9, #0xff
	cmp	x20, x9
	ldrb	w13, [x10, x12]
	add	w8, w13, w8
	and	x14, x8, #0xff
	ldrb	w15, [x10, x14]
	strb	w15, [x10, x12]
	strb	w13, [x10, x14]
	ldrb	w12, [x10, x12]
	add	w12, w12, w13
	ldrb	w13, [x19, x11]
	and	x12, x12, #0xff
	ldrb	w12, [x10, x12]
	eor	w12, w13, w12
	strb	w12, [x19, x11]
	b.ne	.LBB3_6
// %bb.7:
	strb	w9, [sp, #270]
	strb	w8, [sp, #271]
.LBB3_8:
	.cfi_def_cfa wsp, 320
	ldp	x20, x19, [sp, #304]            // 16-byte Folded Reload
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
