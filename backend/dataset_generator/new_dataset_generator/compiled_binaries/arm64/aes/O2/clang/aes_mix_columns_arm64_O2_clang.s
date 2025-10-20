	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 // -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,@function
aes_mix_columns:                        // @aes_mix_columns
	.cfi_startproc
// %bb.0:
	ldrsb	w9, [x0]
	ldrsb	w10, [x0, #1]
	mov	w8, #27                         // =0x1b
	ldrsb	w11, [x0, #2]
	ldrsb	w12, [x0, #3]
	lsl	w13, w9, #1
	lsl	w14, w10, #1
	cmp	w9, #0
	eor	w15, w11, w10
	lsl	w16, w11, #1
	eor	w17, w11, w9
	eor	w18, w13, w8
	eor	w1, w14, w8
	eor	w15, w15, w12
	csel	w13, w18, w13, lt
	cmp	w10, #0
	lsl	w18, w12, #1
	csel	w14, w1, w14, lt
	eor	w1, w16, w8
	eor	w15, w15, w13
	cmp	w11, #0
	eor	w17, w17, w12
	eor	w9, w10, w9
	csel	w16, w1, w16, lt
	eor	w15, w15, w14
	eor	w14, w17, w14
	eor	w17, w18, w8
	cmp	w12, #0
	eor	w10, w9, w12
	eor	w12, w14, w16
	csel	w14, w17, w18, lt
	eor	w10, w10, w16
	strb	w12, [x0, #1]
	eor	w10, w10, w14
	ldrsb	w12, [x0, #4]
	strb	w10, [x0, #2]
	eor	w9, w9, w11
	ldrsb	w10, [x0, #5]
	lsl	w11, w12, #1
	eor	w9, w9, w13
	ldrsb	w13, [x0, #6]
	strb	w15, [x0]
	ldrsb	w15, [x0, #7]
	lsl	w17, w10, #1
	eor	w16, w11, w8
	cmp	w12, #0
	eor	w9, w9, w14
	eor	w14, w13, w10
	csel	w11, w16, w11, lt
	eor	w16, w17, w8
	cmp	w10, #0
	eor	w14, w14, w15
	strb	w9, [x0, #3]
	csel	w16, w16, w17, lt
	eor	w14, w14, w11
	lsl	w17, w13, #1
	eor	w9, w14, w16
	eor	w14, w13, w12
	cmp	w13, #0
	eor	w14, w14, w15
	eor	w18, w17, w8
	eor	w10, w10, w12
	eor	w14, w14, w16
	lsl	w16, w15, #1
	csel	w17, w18, w17, lt
	strb	w9, [x0, #4]
	eor	w9, w14, w17
	cmp	w15, #0
	eor	w14, w16, w8
	eor	w12, w10, w15
	eor	w10, w10, w13
	strb	w9, [x0, #5]
	csel	w9, w14, w16, lt
	eor	w12, w12, w17
	ldrsb	w13, [x0, #8]
	eor	w10, w10, w11
	eor	w12, w12, w9
	ldrsb	w11, [x0, #9]
	eor	w9, w10, w9
	strb	w12, [x0, #6]
	lsl	w10, w13, #1
	strb	w9, [x0, #7]
	ldrsb	w9, [x0, #10]
	lsl	w12, w11, #1
	ldrsb	w14, [x0, #11]
	cmp	w13, #0
	eor	w15, w10, w8
	eor	w16, w9, w11
	lsl	w17, w9, #1
	csel	w10, w15, w10, lt
	eor	w15, w12, w8
	cmp	w11, #0
	eor	w16, w16, w14
	csel	w12, w15, w12, lt
	eor	w18, w17, w8
	eor	w15, w16, w10
	eor	w16, w9, w13
	cmp	w9, #0
	eor	w16, w16, w14
	eor	w15, w15, w12
	csel	w17, w18, w17, lt
	eor	w12, w16, w12
	strb	w15, [x0, #8]
	lsl	w15, w14, #1
	eor	w12, w12, w17
	eor	w11, w11, w13
	cmp	w14, #0
	strb	w12, [x0, #9]
	eor	w12, w15, w8
	eor	w13, w11, w14
	ldrsb	w14, [x0, #12]
	csel	w12, w12, w15, lt
	eor	w13, w13, w17
	eor	w9, w11, w9
	ldrsb	w11, [x0, #13]
	eor	w13, w13, w12
	eor	w9, w9, w10
	lsl	w10, w14, #1
	strb	w13, [x0, #10]
	eor	w9, w9, w12
	lsl	w12, w11, #1
	ldrsb	w13, [x0, #14]
	eor	w15, w10, w8
	cmp	w14, #0
	ldrsb	w16, [x0, #15]
	csel	w10, w15, w10, lt
	eor	w15, w12, w8
	cmp	w11, #0
	eor	w17, w13, w11
	strb	w9, [x0, #11]
	csel	w9, w15, w12, lt
	eor	w12, w17, w16
	eor	w17, w13, w14
	lsl	w18, w13, #1
	eor	w12, w12, w10
	eor	w17, w17, w16
	cmp	w13, #0
	eor	w12, w12, w9
	eor	w9, w17, w9
	lsl	w17, w16, #1
	eor	w15, w18, w8
	eor	w11, w11, w14
	strb	w12, [x0, #12]
	csel	w15, w15, w18, lt
	eor	w8, w17, w8
	cmp	w16, #0
	eor	w12, w11, w16
	eor	w11, w11, w13
	eor	w9, w9, w15
	csel	w8, w8, w17, lt
	eor	w12, w12, w15
	eor	w10, w11, w10
	strb	w9, [x0, #13]
	eor	w9, w12, w8
	eor	w8, w10, w8
	strb	w9, [x0, #14]
	strb	w8, [x0, #15]
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
