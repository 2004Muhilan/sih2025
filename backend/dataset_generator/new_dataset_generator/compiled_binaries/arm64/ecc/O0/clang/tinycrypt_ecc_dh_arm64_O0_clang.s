	.text
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            // -- Begin function uECC_make_key_with_d
	.p2align	2
	.type	uECC_make_key_with_d,@function
uECC_make_key_with_d:                   // @uECC_make_key_with_d
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-32]
	ldr	q0, [x8]
	add	x1, sp, #80
	str	q0, [sp, #80]
	ldr	q0, [x8, #16]
	str	q0, [sp, #96]
	ldur	x2, [x29, #-40]
	add	x0, sp, #16
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w1, w8, w9
	add	x2, sp, #80
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrsb	w1, [x8, #1]
	add	x2, sp, #16
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-40]
	ldrsb	x10, [x10, #1]
	add	x0, x9, x10
	ldur	x9, [x29, #-40]
	ldrsb	w1, [x9, #1]
	ldur	x9, [x29, #-40]
	ldrsb	x9, [x9]
	add	x2, x8, x9, lsl #2
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	mov	w2, #32                         // =0x20
	bl	_set_secure
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 176
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function _set_secure
	.type	_set_secure,@function
_set_secure:                            // @_set_secure
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #16]
	mov	w2, w8
	ldurb	w1, [x29, #-9]
	bl	memset
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	add	x8, sp, #8
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	_set_secure, .Lfunc_end1-_set_secure
	.cfi_endproc
                                        // -- End function
	.globl	uECC_make_key                   // -- Begin function uECC_make_key
	.p2align	2
	.type	uECC_make_key,@function
uECC_make_key:                          // @uECC_make_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	add	x29, sp, #240
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	wzr, [sp, #44]
	b	.LBB2_1
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #64
	b.hs	.LBB2_9
	b	.LBB2_2
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	bl	uECC_get_rng
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB2_4
	b	.LBB2_3
.LBB2_3:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #32]
	sub	x0, x29, #96
	mov	w1, #64                         // =0x40
	blr	x8
	cbnz	w0, .LBB2_5
	b	.LBB2_4
.LBB2_4:
	stur	wzr, [x29, #-4]
	b	.LBB2_10
.LBB2_5:                                //   in Loop: Header=BB2_1 Depth=1
	ldur	x8, [x29, #-32]
	add	x2, x8, #36
	ldur	x8, [x29, #-32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w3, w8, w9
	add	x0, sp, #112
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	sub	x1, x29, #96
	bl	uECC_vli_mmod
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-32]
	add	x0, sp, #48
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB2_7
	b	.LBB2_6
.LBB2_6:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w1, w8, w9
	add	x2, sp, #112
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-32]
	ldrsb	w1, [x8, #1]
	add	x2, sp, #48
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-32]
	ldrsb	x10, [x10, #1]
	add	x0, x9, x10
	ldur	x9, [x29, #-32]
	ldrsb	w1, [x9, #1]
	ldur	x9, [x29, #-32]
	ldrsb	x9, [x9]
	add	x2, x8, x9, lsl #2
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w1, wzr
	mov	w2, #32                         // =0x20
	bl	_set_secure
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB2_10
.LBB2_7:                                //   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_8
.LBB2_8:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB2_1
.LBB2_9:
	stur	wzr, [x29, #-4]
	b	.LBB2_10
.LBB2_10:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 256
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #256
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	uECC_make_key, .Lfunc_end2-uECC_make_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_shared_secret              // -- Begin function uECC_shared_secret
	.p2align	2
	.type	uECC_shared_secret,@function
uECC_shared_secret:                     // @uECC_shared_secret
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, #256]            // 16-byte Folded Spill
	str	x28, [sp, #272]                 // 8-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	x8, x29, #32
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	x0, [x8, #24]
	str	x1, [x8, #16]
	str	x2, [x8, #8]
	str	x3, [x8]
	add	x0, sp, #128
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #80]
	add	x9, sp, #96
	str	x9, [sp, #48]                   // 8-byte Folded Spill
	str	x9, [sp, #88]
                                        // kill: def $x9 killed $xzr
	str	xzr, [sp, #72]
	ldr	x9, [x8]
	ldrb	w9, [x9]
	strb	w9, [sp, #67]
	ldr	x9, [x8]
	ldrb	w9, [x9, #1]
	strb	w9, [sp, #66]
	ldr	x1, [x8, #16]
	ldr	x8, [x8]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w2, w8, w9
	bl	uECC_vli_bytesToNative
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [x8, #24]
	ldrsb	w2, [sp, #66]
	sub	x0, x29, #96
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	uECC_vli_bytesToNative
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldrsb	x11, [sp, #67]
	ldr	x8, [x8, #24]
	ldrsb	x9, [sp, #66]
	ldrsb	w2, [sp, #66]
	add	x0, x10, x11, lsl #2
	add	x1, x8, x9
	bl	uECC_vli_bytesToNative
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x3, [x8]
	mov	x0, x1
	bl	regularize_k
	str	w0, [sp, #68]
	bl	uECC_get_rng
	cbz	x0, .LBB3_4
	b	.LBB3_1
.LBB3_1:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w9, [sp, #68]
	mov	w10, w9
	add	x9, sp, #80
	ldr	x0, [x9, x10, lsl #3]
	ldr	x8, [x8]
	add	x1, x8, #4
	ldrb	w2, [sp, #67]
	bl	uECC_generate_random_int
	cbnz	w0, .LBB3_3
	b	.LBB3_2
.LBB3_2:
	str	wzr, [sp, #60]
	b	.LBB3_5
.LBB3_3:
	ldr	w8, [sp, #68]
	mov	w9, w8
	add	x8, sp, #80
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #72]
	b	.LBB3_4
.LBB3_4:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w9, [sp, #68]
	subs	w9, w9, #0
	cset	w10, eq
                                        // implicit-def: $x9
	mov	w9, w10
	and	x10, x9, #0x1
	add	x9, sp, #80
	ldr	x2, [x9, x10, lsl #3]
	ldr	x3, [sp, #72]
	ldr	x9, [x8]
	ldrsh	w9, [x9, #2]
	add	w4, w9, #1
	ldr	x5, [x8]
	sub	x1, x29, #96
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	mov	x0, x1
	bl	EccPoint_mult
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldrsb	w1, [sp, #66]
	bl	uECC_vli_nativeToBytes
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	bl	EccPoint_isZero
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #60]
	b	.LBB3_5
.LBB3_5:
	add	x0, sp, #80
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w2, #16                         // =0x10
	bl	_set_secure
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	add	x0, sp, #96
	mov	w2, #32                         // =0x20
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	_set_secure
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	add	x0, sp, #128
	bl	_set_secure
	ldr	w0, [sp, #60]
	.cfi_def_cfa wsp, 288
	ldr	x28, [sp, #272]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #256]            // 16-byte Folded Reload
	add	sp, sp, #288
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	uECC_shared_secret, .Lfunc_end3-uECC_shared_secret
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym _set_secure
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym regularize_k
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym EccPoint_mult
	.addrsig_sym EccPoint_isZero
