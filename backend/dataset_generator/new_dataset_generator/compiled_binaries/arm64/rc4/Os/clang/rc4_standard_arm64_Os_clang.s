	.text
	.file	"rc4_standard.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function rc4_init
.LCPI0_0:
	.byte	0                               // 0x0
	.byte	1                               // 0x1
	.byte	2                               // 0x2
	.byte	3                               // 0x3
	.byte	4                               // 0x4
	.byte	5                               // 0x5
	.byte	6                               // 0x6
	.byte	7                               // 0x7
	.byte	8                               // 0x8
	.byte	9                               // 0x9
	.byte	10                              // 0xa
	.byte	11                              // 0xb
	.byte	12                              // 0xc
	.byte	13                              // 0xd
	.byte	14                              // 0xe
	.byte	15                              // 0xf
	.text
	.globl	rc4_init
	.p2align	2
	.type	rc4_init,@function
rc4_init:                               // @rc4_init
	.cfi_startproc
// %bb.0:
	movi	v0.16b, #16
	adrp	x8, .LCPI0_0
	ldr	q1, [x8, :lo12:.LCPI0_0]
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	str	q1, [x0, x8]
	add	v1.16b, v1.16b, v0.16b
	add	x8, x8, #16
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function rc4_encrypt
.LCPI2_0:
	.byte	0                               // 0x0
	.byte	1                               // 0x1
	.byte	2                               // 0x2
	.byte	3                               // 0x3
	.byte	4                               // 0x4
	.byte	5                               // 0x5
	.byte	6                               // 0x6
	.byte	7                               // 0x7
	.byte	8                               // 0x8
	.byte	9                               // 0x9
	.byte	10                              // 0xa
	.byte	11                              // 0xb
	.byte	12                              // 0xc
	.byte	13                              // 0xd
	.byte	14                              // 0xe
	.byte	15                              // 0xf
	.text
	.globl	rc4_encrypt
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
	movi	v0.16b, #16
	adrp	x9, .LCPI2_0
	mov	x20, x4
	ldr	q1, [x9, :lo12:.LCPI2_0]
	mov	x19, x3
	mov	x8, xzr
	add	x9, sp, #14
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	str	q1, [x9, x8]
	add	v1.16b, v1.16b, v0.16b
	add	x8, x8, #16
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
	mov	x0, x20
	mov	x1, x2
	mov	x2, x19
	strh	wzr, [sp, #270]
	bl	memcpy
	add	x0, sp, #14
	mov	x1, x20
	mov	x2, x19
	bl	rc4_crypt
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
	b	rc4_encrypt
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
