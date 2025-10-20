	.text
	.file	"rc4_ksa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function rc4_ksa
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
	.globl	rc4_ksa
	.p2align	2
	.type	rc4_ksa,@function
rc4_ksa:                                // @rc4_ksa
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
	ret
.Lfunc_end0:
	.size	rc4_ksa, .Lfunc_end0-rc4_ksa
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
