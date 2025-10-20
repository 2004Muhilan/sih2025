	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        // -- Begin function rc4_prga
	.p2align	2
	.type	rc4_prga,@function
rc4_prga:                               // @rc4_prga
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	add	w8, w8, #1
	mov	w11, #256                       // =0x100
	sdiv	w9, w8, w11
	mul	w9, w9, w11
	subs	w8, w8, w9
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	ldrb	w10, [x10]
                                        // kill: def $x10 killed $w10
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	sdiv	w9, w8, w11
	mul	w9, w9, w11
	subs	w8, w8, w9
	ldr	x9, [sp, #8]
	strb	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	ldrb	w9, [x9]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	ldrb	w9, [x9]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	ldrb	w10, [x10]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #8]
	ldrb	w10, [x10]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	ldrb	w10, [x10]
                                        // kill: def $x10 killed $w10
	ldrb	w9, [x9, x10]
	ldr	x10, [sp, #24]
	ldr	x12, [sp, #8]
	ldrb	w12, [x12]
                                        // kill: def $x12 killed $w12
	ldrb	w10, [x10, x12]
	add	w9, w9, w10
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	ldrb	w0, [x8, w9, sxtw]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
