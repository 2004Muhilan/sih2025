	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 // -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,@function
sha256_compress:                        // @sha256_compress
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x29, x23, [sp, #256]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #272]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #288]            // 16-byte Folded Spill
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w29, -48
	ldp	q0, q1, [x1]
	mov	w8, #64                         // =0x40
	mov	x9, sp
	stp	q0, q1, [sp]
	ldp	q2, q0, [x1, #32]
	ldr	w10, [sp]
	stp	q2, q0, [sp, #32]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x11, x9, x8
	add	x8, x8, #4
	ldur	w12, [x11, #-60]
	ldur	w13, [x11, #-8]
	ldur	w16, [x11, #-28]
	cmp	x8, #256
	ror	w14, w12, #7
	ror	w15, w13, #17
	add	w10, w10, w16
	eor	w14, w14, w12, ror #18
	eor	w15, w15, w13, ror #19
	eor	w14, w14, w12, lsr #3
	eor	w13, w15, w13, lsr #10
	add	w10, w14, w10
	add	w10, w10, w13
	str	w10, [x11]
	mov	w10, w12
	b.ne	.LBB0_1
// %bb.2:
	ldp	w10, w11, [x0]
	ldp	w8, w9, [x0, #16]
	ldp	w14, w13, [x0, #24]
	ldp	w16, w15, [x0, #8]
	mov	w2, #12184                      // =0x2f98
	mov	x12, xzr
	mov	x17, sp
	movk	w2, #17034, lsl #16
	mov	w21, w10
	mov	w4, w11
	mov	w19, w13
	mov	w22, w14
	mov	w23, w9
	mov	w20, w8
	mov	w7, w15
	mov	w6, w16
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	mov	w5, w6
	mov	w3, w20
	mov	w6, w4
	mov	w4, w21
	mov	w1, w23
	ror	w20, w20, #6
	and	w21, w23, w3
	ror	w23, w4, #2
	mov	w18, w22
	bic	w22, w22, w3
	add	w19, w21, w19
	eor	w20, w20, w3, ror #11
	ldr	w21, [x17, x12]
	add	w19, w19, w22
	eor	w22, w23, w4, ror #13
	eor	w23, w6, w5
	eor	w20, w20, w3, ror #25
	add	x12, x12, #4
	add	w19, w19, w21
	and	w21, w4, w23
	eor	w22, w22, w4, ror #22
	and	w23, w6, w5
	add	w19, w19, w2
	cmp	x12, #256
	eor	w21, w21, w23
	add	w19, w19, w20
	mov	w23, w3
	add	w21, w22, w21
	add	w20, w19, w7
	mov	w22, w1
	add	w21, w21, w19
	mov	w19, w18
	mov	w7, w5
	b.ne	.LBB0_3
// %bb.4:
	add	w10, w21, w10
	add	w11, w4, w11
	add	w8, w20, w8
	add	w9, w3, w9
	ldp	x20, x19, [sp, #288]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #272]            // 16-byte Folded Reload
	stp	w10, w11, [x0]
	ldp	x29, x23, [sp, #256]            // 16-byte Folded Reload
	add	w10, w6, w16
	add	w11, w5, w15
	stp	w8, w9, [x0, #16]
	add	w8, w1, w14
	add	w9, w18, w13
	stp	w10, w11, [x0, #8]
	stp	w8, w9, [x0, #24]
	add	sp, sp, #304
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
