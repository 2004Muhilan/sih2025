	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               // -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
aes_add_round_key:                      // @aes_add_round_key
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x1, x8]
	ldrb	w10, [x0, x8]
	eor	w9, w10, w9
	strb	w9, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
