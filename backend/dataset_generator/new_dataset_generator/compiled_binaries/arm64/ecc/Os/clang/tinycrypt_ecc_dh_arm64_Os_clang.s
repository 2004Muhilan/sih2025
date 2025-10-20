	.text
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            // -- Begin function uECC_make_key_with_d
	.p2align	2
	.type	uECC_make_key_with_d,@function
uECC_make_key_with_d:                   // @uECC_make_key_with_d
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	str	x23, [sp, #112]                 // 8-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	ldp	q0, q1, [x2]
	mov	x21, x1
	mov	x19, x0
	mov	x0, sp
	sub	x1, x29, #32
	mov	x2, x3
	mov	x20, x3
	mov	x23, sp
	stp	q0, q1, [x29, #-32]
	sub	x22, x29, #32
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB0_2
// %bb.1:
	ldrsh	w8, [x20, #2]
	sub	x2, x29, #32
	mov	x0, x21
	adds	w9, w8, #7
	add	w8, w8, #14
	csel	w8, w8, w9, lt
	asr	w1, w8, #3
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, #1]
	mov	x2, sp
	mov	x0, x19
	bl	uECC_vli_nativeToBytes
	ldrsb	x8, [x20]
	ldrsb	x1, [x20, #1]
	add	x2, x23, x8, lsl #2
	add	x0, x19, x1
                                        // kill: def $w1 killed $w1 killed $x1
	bl	uECC_vli_nativeToBytes
	movi	v0.2d, #0000000000000000
	str	x22, [x29, #24]
	add	x8, x29, #24
	mov	w0, #1                          // =0x1
	stp	q0, q0, [x29, #-32]
	//APP
	//NO_APP
.LBB0_2:
	.cfi_def_cfa wsp, 160
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldr	x23, [sp, #112]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cfi_endproc
                                        // -- End function
	.globl	uECC_make_key                   // -- Begin function uECC_make_key
	.p2align	2
	.type	uECC_make_key,@function
uECC_make_key:                          // @uECC_make_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	mov	w22, #64                        // =0x40
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	bl	uECC_get_rng
	cbz	x0, .LBB1_7
// %bb.2:                               //   in Loop: Header=BB1_1 Depth=1
	mov	x8, x0
	sub	x0, x29, #64
	mov	w1, #64                         // =0x40
	blr	x8
	cbz	w0, .LBB1_7
// %bb.3:                               //   in Loop: Header=BB1_1 Depth=1
	ldrsh	w8, [x20, #2]
	add	x0, sp, #80
	sub	x1, x29, #64
	add	x2, x20, #36
	adds	w9, w8, #31
	add	w8, w8, #62
	csel	w8, w8, w9, lt
	asr	w3, w8, #5
	bl	uECC_vli_mmod
	add	x0, sp, #16
	add	x1, sp, #80
	mov	x2, x20
	bl	EccPoint_compute_public_key
	cbnz	w0, .LBB1_6
// %bb.4:                               //   in Loop: Header=BB1_1 Depth=1
	subs	w22, w22, #1
	b.ne	.LBB1_1
// %bb.5:
	mov	w0, wzr
	b	.LBB1_7
.LBB1_6:
	ldrsh	w8, [x20, #2]
	add	x2, sp, #80
	mov	x0, x21
	add	x21, sp, #80
	adds	w9, w8, #7
	add	w8, w8, #14
	csel	w8, w8, w9, lt
	asr	w1, w8, #3
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, #1]
	add	x2, sp, #16
	mov	x0, x19
	add	x22, sp, #16
	bl	uECC_vli_nativeToBytes
	ldrsb	x8, [x20]
	ldrsb	x1, [x20, #1]
	add	x2, x22, x8, lsl #2
	add	x0, x19, x1
                                        // kill: def $w1 killed $w1 killed $x1
	bl	uECC_vli_nativeToBytes
	movi	v0.2d, #0000000000000000
	str	x21, [sp, #8]
	add	x8, sp, #8
	mov	w0, #1                          // =0x1
	stp	q0, q0, [sp, #80]
	//APP
	//NO_APP
.LBB1_7:
	.cfi_def_cfa wsp, 224
	ldp	x20, x19, [sp, #208]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #224
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	uECC_make_key, .Lfunc_end1-uECC_make_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_shared_secret              // -- Begin function uECC_shared_secret
	.p2align	2
	.type	uECC_shared_secret,@function
uECC_shared_secret:                     // @uECC_shared_secret
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	ldrsh	w8, [x3, #2]
	mov	x20, x2
	mov	x22, x0
	add	x9, sp, #80
	add	x11, sp, #48
	ldrsb	x24, [x3]
	adds	w10, w8, #7
	add	w8, w8, #14
	ldrsb	x21, [x3, #1]
	csel	w8, w8, w10, lt
	add	x0, sp, #80
	mov	x19, x3
	asr	w2, w8, #3
	stp	x9, x11, [sp, #32]
	bl	uECC_vli_bytesToNative
	sub	x0, x29, #64
	mov	x1, x22
	mov	w2, w21
	sub	x23, x29, #64
	bl	uECC_vli_bytesToNative
	add	x0, x23, x24, lsl #2
	add	x1, x22, x21
	mov	w2, w21
	bl	uECC_vli_bytesToNative
	add	x0, sp, #80
	add	x1, sp, #80
	add	x2, sp, #48
	mov	x3, x19
	bl	regularize_k
	mov	w22, w0
	bl	uECC_get_rng
	cbz	x0, .LBB2_2
// %bb.1:
	add	x8, sp, #32
	add	x1, x19, #4
	and	w2, w24, #0xff
	ldr	x23, [x8, w22, uxtw #3]
	mov	x0, x23
	bl	uECC_generate_random_int
	cbnz	w0, .LBB2_3
	b	.LBB2_4
.LBB2_2:
	mov	x23, xzr
.LBB2_3:
	cmp	w22, #0
	add	x9, sp, #32
	sub	x0, x29, #64
	cset	w8, eq
	sub	x1, x29, #64
	mov	x3, x23
	ldr	x2, [x9, w8, uxtw #3]
	ldrh	w8, [x19, #2]
	mov	x5, x19
	add	w4, w8, #1
	bl	EccPoint_mult
	sub	x2, x29, #64
	mov	x0, x20
	mov	w1, w21
	bl	uECC_vli_nativeToBytes
	sub	x0, x29, #64
	mov	x1, x19
	bl	EccPoint_isZero
	cmp	w0, #0
	cset	w0, eq
.LBB2_4:
	movi	v0.2d, #0000000000000000
	add	x8, sp, #32
	stp	xzr, xzr, [sp, #32]
	str	x8, [sp, #24]
	add	x8, sp, #24
	//APP
	//NO_APP
	add	x8, sp, #48
	str	x8, [sp, #16]
	add	x8, sp, #16
	stp	q0, q0, [sp, #48]
	//APP
	//NO_APP
	add	x8, sp, #80
	stp	q0, q0, [sp, #80]
	str	x8, [sp, #8]
	add	x8, sp, #8
	//APP
	//NO_APP
	.cfi_def_cfa wsp, 240
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #240
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	uECC_shared_secret, .Lfunc_end2-uECC_shared_secret
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
