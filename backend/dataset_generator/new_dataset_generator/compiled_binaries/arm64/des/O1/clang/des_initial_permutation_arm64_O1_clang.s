	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         // -- Begin function des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
des_initial_permutation:                // @des_initial_permutation
	.cfi_startproc
// %bb.0:
	mov	x9, xzr
	mov	x8, xzr
	adrp	x10, IP
	add	x10, x10, :lo12:IP
	mov	w11, #1                         // =0x1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x10, x9]
	eor	x13, x9, #0x3f
	add	x9, x9, #1
	lsl	x13, x11, x13
	cmp	x9, #64
	neg	w12, w12
	lsr	x12, x0, x12
	sbfx	x12, x12, #0, #1
	and	x12, x12, x13
	orr	x8, x12, x8
	b.ne	.LBB0_1
// %bb.2:
	mov	x0, x8
	ret
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        // -- End function
	.type	IP,@object                      // @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
