	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       // -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              // @tc_aes128_set_encrypt_key
	.cfi_startproc
// %bb.0:
	mov	w8, wzr
	cbz	x0, .LBB0_7
// %bb.1:
	cbz	x1, .LBB0_7
// %bb.2:
	ldr	w9, [x1]
	mov	x8, xzr
	adrp	x10, .L__const.tc_aes128_set_encrypt_key.rconst
	add	x10, x10, :lo12:.L__const.tc_aes128_set_encrypt_key.rconst
	rev	w9, w9
	str	w9, [x0]
	ldr	w9, [x1, #4]
	rev	w9, w9
	str	w9, [x0, #4]
	ldr	w9, [x1, #8]
	rev	w9, w9
	str	w9, [x0, #8]
	ldr	w9, [x1, #12]
	rev	w11, w9
	adrp	x9, sbox
	add	x9, x9, :lo12:sbox
	str	w11, [x0, #12]
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_4 Depth=1
	add	x12, x0, x8, lsl #2
	add	x8, x8, #1
	cmp	x8, #40
	ldr	w13, [x12]
	eor	w11, w13, w11
	str	w11, [x12, #16]
	b.eq	.LBB0_6
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	add	x12, x8, #4
	tst	x12, #0x3
	b.ne	.LBB0_3
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	ror	w11, w11, #24
	and	x12, x12, #0xfffffffc
	ldr	w12, [x10, x12]
	lsr	x13, x11, #24
	ubfx	x14, x11, #16, #8
	ubfx	x15, x11, #8, #8
	and	x11, x11, #0xff
	ldrb	w13, [x9, x13]
	ldrb	w14, [x9, x14]
	ldrb	w11, [x9, x11]
	lsl	w13, w13, #24
	orr	w13, w13, w14, lsl #16
	ldrb	w14, [x9, x15]
	orr	w13, w13, w14, lsl #8
	orr	w11, w13, w11
	eor	w11, w11, w12
	b	.LBB0_3
.LBB0_6:
	mov	w8, #1                          // =0x1
.LBB0_7:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          // -- Begin function tc_aes_encrypt
.LCPI1_0:
	.word	4294967272                      // 0xffffffe8
	.word	4294967280                      // 0xfffffff0
	.text
	.globl	tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         // @tc_aes_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	str	x25, [sp, #48]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	mov	x19, x0
	mov	w0, wzr
	cbz	x19, .LBB1_6
// %bb.1:
	mov	x20, x2
	mov	x2, x1
	cbz	x1, .LBB1_6
// %bb.2:
	cbz	x20, .LBB1_6
// %bb.3:
	mov	x0, sp
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	bl	_copy
	ldp	w9, w12, [x20]
	ldrb	w8, [sp]
	ldrb	w10, [sp, #1]
	mov	x22, xzr
	ldrb	w11, [sp, #2]
	ldrb	w18, [sp, #9]
	adrp	x23, sbox
	add	x23, x23, :lo12:sbox
	eor	w13, w8, w9, lsr #24
	ldrb	w8, [sp, #3]
	eor	w14, w10, w9, lsr #16
	ldrb	w10, [sp, #5]
	eor	w15, w11, w9, lsr #8
	eor	w17, w8, w9
	ldrb	w8, [sp, #4]
	ldrb	w11, [sp, #8]
	eor	w9, w10, w12, lsr #16
	ldrb	w10, [sp, #7]
	ldrb	w1, [sp, #10]
	ldp	w16, w0, [x20, #8]
	eor	w5, w8, w12, lsr #24
	and	x8, x9, #0xff
	ldrb	w9, [sp, #6]
	eor	w10, w10, w12
	ldrb	w3, [sp, #13]
	ldrb	w4, [sp, #14]
	eor	w9, w9, w12, lsr #8
	eor	w11, w11, w16, lsr #24
	eor	w18, w18, w16, lsr #16
	ldrb	w2, [sp, #11]
	ldrb	w7, [sp, #15]
	eor	w1, w1, w16, lsr #8
	and	x12, x9, #0xff
	and	x9, x11, #0xff
	and	x11, x18, #0xff
	ldrb	w18, [sp, #12]
	eor	w3, w3, w0, lsr #16
	eor	w4, w4, w0, lsr #8
	eor	w2, w2, w16
	strb	w13, [sp]
	and	x10, x10, #0xff
	eor	w6, w18, w0, lsr #24
	eor	w0, w7, w0
	strb	w14, [sp, #1]
	strb	w15, [sp, #2]
	and	x16, x1, #0xff
	and	x18, x2, #0xff
	strb	w17, [sp, #3]
	and	x1, x6, #0xff
	and	x2, x3, #0xff
	and	x4, x4, #0xff
	and	x3, x0, #0xff
	and	x13, x13, #0xff
	and	x14, x14, #0xff
	and	x15, x15, #0xff
	and	x0, x17, #0xff
	and	x17, x5, #0xff
	strb	w5, [sp, #4]
.LBB1_4:                                // =>This Inner Loop Header: Depth=1
	ldrb	w0, [x23, x0]
	ldrb	w1, [x23, x1]
	ldrb	w2, [x23, x2]
	ldrb	w3, [x23, x3]
	ldrb	w13, [x23, x13]
	ldrb	w14, [x23, x14]
	ldrb	w15, [x23, x15]
	ldrb	w17, [x23, x17]
	ldrb	w8, [x23, x8]
	ldrb	w12, [x23, x12]
	ldrb	w10, [x23, x10]
	ldrb	w9, [x23, x9]
	ldrb	w11, [x23, x11]
	ldrb	w16, [x23, x16]
	ldrb	w18, [x23, x18]
	ldrb	w4, [x23, x4]
	strb	w0, [sp, #3]
	strb	w1, [sp, #12]
	strb	w2, [sp, #13]
	strb	w3, [sp, #15]
	strb	w3, [sp, #19]
	mov	w3, #16                         // =0x10
	strb	w0, [sp, #23]
	mov	x0, sp
	strb	w2, [sp, #25]
	add	x2, sp, #16
	strb	w1, [sp, #28]
	mov	w1, #16                         // =0x10
	strb	w13, [sp]
	strb	w14, [sp, #1]
	strb	w15, [sp, #2]
	strb	w17, [sp, #4]
	strb	w8, [sp, #5]
	strb	w12, [sp, #6]
	strb	w10, [sp, #7]
	strb	w9, [sp, #8]
	strb	w11, [sp, #9]
	strb	w16, [sp, #10]
	strb	w18, [sp, #11]
	strb	w4, [sp, #14]
	strb	w13, [sp, #16]
	strb	w8, [sp, #17]
	strb	w16, [sp, #18]
	strb	w17, [sp, #20]
	strb	w11, [sp, #21]
	strb	w4, [sp, #22]
	strb	w9, [sp, #24]
	strb	w15, [sp, #26]
	strb	w10, [sp, #27]
	strb	w14, [sp, #29]
	strb	w12, [sp, #30]
	strb	w18, [sp, #31]
	bl	_copy
	ldrb	w0, [sp]
	bl	_double_byte
	ldrb	w8, [sp, #1]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #2]
	ldrb	w10, [sp, #3]
	ldrb	w8, [sp, #1]
	ldrb	w24, [sp]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #16]
	bl	_double_byte
	ldrb	w8, [sp, #2]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #3]
	eor	w9, w21, w24
	ldrb	w24, [sp]
	ldrb	w25, [sp, #1]
	eor	w8, w0, w8
	ldrb	w0, [sp, #2]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #17]
	bl	_double_byte
	ldrb	w8, [sp, #3]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #3]
	eor	w9, w25, w24
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp]
	eor	w8, w9, w8
	strb	w8, [sp, #18]
	bl	_double_byte
	ldrb	w8, [sp]
	ldrb	w9, [sp, #1]
	ldrb	w21, [sp, #2]
	eor	w9, w8, w9
	ldrb	w8, [sp, #3]
	eor	w24, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #4]
	eor	w9, w21, w0
	eor	w9, w24, w9
	mov	w0, w8
	strb	w9, [sp, #19]
	bl	_double_byte
	ldrb	w8, [sp, #5]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #6]
	ldrb	w10, [sp, #7]
	ldrb	w8, [sp, #5]
	ldrb	w24, [sp, #4]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #20]
	bl	_double_byte
	ldrb	w8, [sp, #6]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #7]
	eor	w9, w21, w24
	ldrb	w24, [sp, #4]
	ldrb	w25, [sp, #5]
	eor	w8, w0, w8
	ldrb	w0, [sp, #6]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #21]
	bl	_double_byte
	ldrb	w8, [sp, #7]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #7]
	eor	w9, w25, w24
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #4]
	eor	w8, w9, w8
	strb	w8, [sp, #22]
	bl	_double_byte
	ldrb	w8, [sp, #4]
	ldrb	w9, [sp, #5]
	ldrb	w21, [sp, #6]
	eor	w9, w8, w9
	ldrb	w8, [sp, #7]
	eor	w24, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #8]
	eor	w9, w21, w0
	eor	w9, w24, w9
	mov	w0, w8
	strb	w9, [sp, #23]
	bl	_double_byte
	ldrb	w8, [sp, #9]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #10]
	ldrb	w10, [sp, #11]
	ldrb	w8, [sp, #9]
	ldrb	w24, [sp, #8]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #24]
	bl	_double_byte
	ldrb	w8, [sp, #10]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #11]
	eor	w9, w21, w24
	ldrb	w24, [sp, #8]
	ldrb	w25, [sp, #9]
	eor	w8, w0, w8
	ldrb	w0, [sp, #10]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #25]
	bl	_double_byte
	ldrb	w8, [sp, #11]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #11]
	eor	w9, w25, w24
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #8]
	eor	w8, w9, w8
	strb	w8, [sp, #26]
	bl	_double_byte
	ldrb	w8, [sp, #8]
	ldrb	w9, [sp, #9]
	ldrb	w21, [sp, #10]
	eor	w9, w8, w9
	ldrb	w8, [sp, #11]
	eor	w24, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #12]
	eor	w9, w21, w0
	eor	w9, w24, w9
	mov	w0, w8
	strb	w9, [sp, #27]
	bl	_double_byte
	ldrb	w8, [sp, #13]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w9, [sp, #14]
	ldrb	w10, [sp, #15]
	ldrb	w8, [sp, #13]
	ldrb	w24, [sp, #12]
	eor	w9, w9, w10
	eor	w10, w0, w21
	mov	w0, w8
	eor	w9, w9, w8
	eor	w9, w10, w9
	strb	w9, [sp, #28]
	bl	_double_byte
	ldrb	w8, [sp, #14]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #15]
	eor	w9, w21, w24
	ldrb	w24, [sp, #12]
	ldrb	w25, [sp, #13]
	eor	w8, w0, w8
	ldrb	w0, [sp, #14]
	eor	w8, w9, w8
	eor	w8, w8, w0
	strb	w8, [sp, #29]
	bl	_double_byte
	ldrb	w8, [sp, #15]
	mov	w21, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #15]
	eor	w9, w25, w24
	eor	w9, w9, w21
	eor	w8, w0, w8
	ldrb	w0, [sp, #12]
	eor	w8, w9, w8
	strb	w8, [sp, #30]
	bl	_double_byte
	ldrb	w8, [sp, #12]
	ldrb	w9, [sp, #13]
	ldrb	w21, [sp, #14]
	eor	w9, w8, w9
	ldrb	w8, [sp, #15]
	eor	w24, w9, w0
	mov	w0, w8
	bl	_double_byte
	eor	w8, w21, w0
	mov	x0, sp
	add	x2, sp, #16
	eor	w8, w24, w8
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp, #31]
	bl	_copy
	add	x9, x20, x22
	ldrb	w8, [sp]
	ldrb	w12, [sp, #2]
	ldp	w10, w18, [x9, #16]
	ldrb	w11, [sp, #1]
	ldrb	w16, [sp, #3]
	add	x22, x22, #16
	ldrb	w17, [sp, #4]
	ldrb	w0, [sp, #5]
	cmp	x22, #144
	eor	w8, w8, w10, lsr #24
	eor	w12, w12, w10, lsr #8
	eor	w11, w11, w10, lsr #16
	ldp	w1, w3, [x9, #24]
	and	x13, x8, #0xff
	strb	w8, [sp]
	and	x15, x12, #0xff
	strb	w12, [sp, #2]
	eor	w8, w16, w10
	eor	w10, w17, w18, lsr #24
	ldrb	w12, [sp, #6]
	and	x14, x11, #0xff
	strb	w11, [sp, #1]
	and	x17, x10, #0xff
	strb	w10, [sp, #4]
	eor	w11, w0, w18, lsr #16
	eor	w10, w12, w18, lsr #8
	ldrb	w12, [sp, #7]
	ldrb	w2, [sp, #10]
	strb	w8, [sp, #3]
	and	x0, x8, #0xff
	and	x8, x11, #0xff
	eor	w16, w12, w18
	ldrb	w18, [sp, #9]
	strb	w11, [sp, #5]
	ldrb	w11, [sp, #8]
	strb	w10, [sp, #6]
	and	x12, x10, #0xff
	and	x10, x16, #0xff
	strb	w16, [sp, #7]
	eor	w16, w18, w1, lsr #16
	eor	w18, w2, w1, lsr #8
	ldrb	w2, [sp, #11]
	ldrb	w4, [sp, #12]
	eor	w11, w11, w1, lsr #24
	ldrb	w5, [sp, #14]
	ldrb	w6, [sp, #15]
	eor	w1, w2, w1
	eor	w2, w4, w3, lsr #24
	ldrb	w4, [sp, #13]
	eor	w5, w5, w3, lsr #8
	eor	w6, w6, w3
	and	x9, x11, #0xff
	eor	w4, w4, w3, lsr #16
	strb	w11, [sp, #8]
	and	x11, x16, #0xff
	strb	w16, [sp, #9]
	and	x16, x18, #0xff
	and	x3, x6, #0xff
	strb	w18, [sp, #10]
	and	x18, x1, #0xff
	strb	w1, [sp, #11]
	and	x1, x2, #0xff
	strb	w2, [sp, #12]
	and	x2, x4, #0xff
	strb	w4, [sp, #13]
	and	x4, x5, #0xff
	strb	w5, [sp, #14]
	strb	w6, [sp, #15]
	b.ne	.LBB1_4
// %bb.5:
	ldrb	w0, [x23, x0]
	ldrb	w1, [x23, x1]
	ldrb	w2, [x23, x2]
	ldrb	w3, [x23, x3]
	ldrb	w13, [x23, x13]
	ldrb	w14, [x23, x14]
	ldrb	w15, [x23, x15]
	ldrb	w17, [x23, x17]
	ldrb	w8, [x23, x8]
	ldrb	w12, [x23, x12]
	ldrb	w10, [x23, x10]
	ldrb	w9, [x23, x9]
	ldrb	w11, [x23, x11]
	ldrb	w16, [x23, x16]
	ldrb	w18, [x23, x18]
	ldrb	w4, [x23, x4]
	strb	w0, [sp, #3]
	strb	w1, [sp, #12]
	strb	w2, [sp, #13]
	strb	w3, [sp, #15]
	strb	w3, [sp, #19]
	mov	w3, #16                         // =0x10
	strb	w0, [sp, #23]
	mov	x0, sp
	strb	w2, [sp, #25]
	add	x2, sp, #16
	strb	w1, [sp, #28]
	mov	w1, #16                         // =0x10
	strb	w13, [sp]
	strb	w14, [sp, #1]
	strb	w15, [sp, #2]
	strb	w17, [sp, #4]
	strb	w8, [sp, #5]
	strb	w12, [sp, #6]
	strb	w10, [sp, #7]
	strb	w9, [sp, #8]
	strb	w11, [sp, #9]
	strb	w16, [sp, #10]
	strb	w18, [sp, #11]
	strb	w4, [sp, #14]
	strb	w13, [sp, #16]
	strb	w8, [sp, #17]
	strb	w16, [sp, #18]
	strb	w17, [sp, #20]
	strb	w11, [sp, #21]
	strb	w4, [sp, #22]
	strb	w9, [sp, #24]
	strb	w15, [sp, #26]
	strb	w10, [sp, #27]
	strb	w14, [sp, #29]
	strb	w12, [sp, #30]
	strb	w18, [sp, #31]
	bl	_copy
	ldp	w8, w9, [x20, #160]
	ldp	w10, w11, [x20, #168]
	adrp	x12, .LCPI1_0
	mov	x2, sp
	mov	x0, x19
	dup	v0.2s, w8
	dup	v1.2s, w9
	ldr	d4, [x12, :lo12:.LCPI1_0]
	dup	v2.2s, w10
	dup	v3.2s, w11
	lsr	w12, w8, #8
	lsr	w13, w9, #8
	lsr	w14, w10, #8
	lsr	w15, w11, #8
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	ushl	v0.2s, v0.2s, v4.2s
	ushl	v1.2s, v1.2s, v4.2s
	ushl	v2.2s, v2.2s, v4.2s
	ushl	v3.2s, v3.2s, v4.2s
	mov	v0.s[2], w12
	mov	v1.s[2], w13
	mov	v2.s[2], w14
	mov	v3.s[2], w15
	mov	v0.s[3], w8
	mov	v1.s[3], w9
	mov	v2.s[3], w10
	mov	v3.s[3], w11
	uzp1	v0.8h, v0.8h, v1.8h
	ldr	q1, [sp]
	uzp1	v2.8h, v2.8h, v3.8h
	uzp1	v0.16b, v0.16b, v2.16b
	eor	v0.16b, v1.16b, v0.16b
	str	q0, [sp]
	bl	_copy
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #16                         // =0x10
	bl	_set
	mov	w0, #1                          // =0x1
.LBB1_6:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x25, [sp, #48]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cfi_endproc
                                        // -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,@object // @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.word	0                               // 0x0
	.word	16777216                        // 0x1000000
	.word	33554432                        // 0x2000000
	.word	67108864                        // 0x4000000
	.word	134217728                       // 0x8000000
	.word	268435456                       // 0x10000000
	.word	536870912                       // 0x20000000
	.word	1073741824                      // 0x40000000
	.word	2147483648                      // 0x80000000
	.word	452984832                       // 0x1b000000
	.word	905969664                       // 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    // @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
