	.text
	.file	"aes_key_expansion.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function aes_key_expansion
.LCPI0_0:
	.byte	0                               // 0x0
	.byte	1                               // 0x1
	.byte	2                               // 0x2
	.byte	3                               // 0x3
	.byte	0                               // 0x0
	.byte	5                               // 0x5
	.byte	6                               // 0x6
	.byte	7                               // 0x7
	.byte	0                               // 0x0
	.byte	9                               // 0x9
	.byte	10                              // 0xa
	.byte	11                              // 0xb
	.byte	0                               // 0x0
	.byte	13                              // 0xd
	.byte	14                              // 0xe
	.byte	15                              // 0xf
	.text
	.globl	aes_key_expansion
	.p2align	2
	.type	aes_key_expansion,@function
aes_key_expansion:                      // @aes_key_expansion
	.cfi_startproc
// %bb.0:
	ldrb	w9, [x0]
	adrp	x10, .LCPI0_0
	mov	x8, xzr
	ldr	q0, [x10, :lo12:.LCPI0_0]
	strb	w9, [x1]
	ldrb	w9, [x0, #1]
	strb	w9, [x1, #1]
	ldrb	w9, [x0, #2]
	strb	w9, [x1, #2]
	ldrb	w9, [x0, #3]
	strb	w9, [x1, #3]
	ldrb	w9, [x0, #4]
	strb	w9, [x1, #4]
	ldrb	w9, [x0, #5]
	strb	w9, [x1, #5]
	ldrb	w9, [x0, #6]
	strb	w9, [x1, #6]
	ldrb	w9, [x0, #7]
	strb	w9, [x1, #7]
	ldrb	w9, [x0, #8]
	strb	w9, [x1, #8]
	ldrb	w9, [x0, #9]
	strb	w9, [x1, #9]
	ldrb	w9, [x0, #10]
	strb	w9, [x1, #10]
	ldrb	w9, [x0, #11]
	strb	w9, [x1, #11]
	ldrb	w9, [x0, #12]
	strb	w9, [x1, #12]
	ldrb	w9, [x0, #13]
	strb	w9, [x1, #13]
	ldrb	w9, [x0, #14]
	strb	w9, [x1, #14]
	ldrb	w9, [x0, #15]
	strb	w9, [x1, #15]
	adrp	x9, rcon
	add	x9, x9, :lo12:rcon
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x10, x1, x8
	ldrb	w14, [x9], #1
	ldr	d1, [x10]
	add	x11, x10, #8
	ldrb	w12, [x10, #14]
	ldrb	w13, [x10, #15]
	add	x8, x8, #16
	ld1	{ v1.s }[2], [x11]
	ldrb	w11, [x10, #12]
	fmov	s3, w12
	cmp	x8, #160
	mov	v1.b[12], w11
	mov	v3.s[1], w13
	mov	v1.b[13], w12
	mov	v3.b[1], v3.b[4]
	mov	v1.b[14], w13
	mov	v1.b[15], w11
	ldrb	w11, [x10, #13]
	eor	w14, w14, w11
	dup	v2.4s, v1.s[3]
	mov	v2.b[0], w14
	mov	v2.b[13], w11
	mov	v2.h[7], v3.h[0]
	tbl	v2.16b, { v2.16b }, v0.16b
	eor	v1.16b, v1.16b, v2.16b
	str	q1, [x10, #16]
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        // -- End function
	.type	rcon,@object                    // @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
