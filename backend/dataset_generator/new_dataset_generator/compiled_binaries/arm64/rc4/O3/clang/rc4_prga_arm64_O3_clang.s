	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        // -- Begin function rc4_prga
	.p2align	2
	.type	rc4_prga,@function
rc4_prga:                               // @rc4_prga
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x1]
	add	w8, w8, #1
	strb	w8, [x1]
	and	x8, x8, #0xff
	ldrb	w9, [x2]
	ldrb	w8, [x0, x8]
	add	w8, w8, w9
	strb	w8, [x2]
	and	x8, x8, #0xff
	ldrb	w9, [x1]
	ldrb	w8, [x0, x8]
	ldrb	w10, [x0, x9]
	strb	w8, [x0, x9]
	ldrb	w8, [x2]
	strb	w10, [x0, x8]
	ldrb	w8, [x1]
	ldrb	w9, [x2]
	ldrb	w8, [x0, x8]
	ldrb	w9, [x0, x9]
	add	w8, w9, w8
	and	x8, x8, #0xff
	ldrb	w0, [x0, x8]
	ret
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
