	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       // -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              // @tc_aes128_set_encrypt_key
	.cfi_startproc
// %bb.0:
	mov	w8, wzr
	cbz	x0, .LBB0_9
// %bb.1:
	cbz	x1, .LBB0_9
// %bb.2:
	mov	x8, xzr
	add	x9, x1, #1
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x9, x8
	ldur	w10, [x10, #-1]
	rev	w10, w10
	str	w10, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #16
	b.ne	.LBB0_3
// %bb.4:
	ldr	w11, [x0, #12]
	mov	x8, xzr
	adrp	x9, sbox
	add	x9, x9, :lo12:sbox
	adrp	x10, .L__const.tc_aes128_set_encrypt_key.rconst
	add	x10, x10, :lo12:.L__const.tc_aes128_set_encrypt_key.rconst
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_6 Depth=1
	add	x12, x0, x8, lsl #2
	add	x8, x8, #1
	cmp	x8, #40
	ldr	w13, [x12]
	eor	w11, w13, w11
	str	w11, [x12, #16]
	b.eq	.LBB0_8
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	add	x12, x8, #4
	tst	x12, #0x3
	b.ne	.LBB0_5
// %bb.7:                               //   in Loop: Header=BB0_6 Depth=1
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
	b	.LBB0_5
.LBB0_8:
	mov	w8, #1                          // =0x1
.LBB0_9:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        // -- End function
	.globl	tc_aes_encrypt                  // -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         // @tc_aes_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
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
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	mov	x19, x0
	mov	w0, wzr
	cbz	x19, .LBB1_10
// %bb.1:
	mov	x20, x2
	mov	x2, x1
	cbz	x1, .LBB1_10
// %bb.2:
	cbz	x20, .LBB1_10
// %bb.3:
	mov	x0, sp
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	mov	x22, sp
	bl	_copy
	ldp	w9, w12, [x20]
	ldrb	w8, [sp]
	ldrb	w10, [sp, #1]
	mov	x23, xzr
	ldrb	w11, [sp, #2]
	ldrb	w13, [sp, #3]
	adrp	x24, sbox
	add	x24, x24, :lo12:sbox
	eor	w8, w8, w9, lsr #24
	eor	w10, w10, w9, lsr #16
	eor	w11, w11, w9, lsr #8
	eor	w9, w13, w9
	strb	w8, [sp]
	ldrb	w8, [sp, #4]
	strb	w10, [sp, #1]
	ldrb	w10, [sp, #5]
	eor	w8, w8, w12, lsr #24
	strb	w11, [sp, #2]
	strb	w9, [sp, #3]
	eor	w9, w10, w12, lsr #16
	ldrb	w10, [sp, #8]
	strb	w8, [sp, #4]
	ldrb	w8, [sp, #6]
	ldp	w11, w13, [x20, #8]
	strb	w9, [sp, #5]
	ldrb	w9, [sp, #7]
	eor	w8, w8, w12, lsr #8
	eor	w10, w10, w11, lsr #24
	eor	w9, w9, w12
	strb	w8, [sp, #6]
	ldrb	w8, [sp, #10]
	ldrb	w12, [sp, #9]
	strb	w9, [sp, #7]
	ldrb	w9, [sp, #11]
	strb	w10, [sp, #8]
	ldrb	w10, [sp, #12]
	eor	w8, w8, w11, lsr #8
	eor	w12, w12, w11, lsr #16
	eor	w9, w9, w11
	ldrb	w11, [sp, #13]
	eor	w10, w10, w13, lsr #24
	strb	w8, [sp, #10]
	ldrb	w8, [sp, #14]
	strb	w9, [sp, #11]
	eor	w9, w11, w13, lsr #16
	strb	w10, [sp, #12]
	ldrb	w10, [sp, #15]
	eor	w8, w8, w13, lsr #8
	strb	w9, [sp, #13]
	eor	w9, w10, w13
	strb	w12, [sp, #9]
	strb	w8, [sp, #14]
	strb	w9, [sp, #15]
.LBB1_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_5 Depth 2
	mov	x8, xzr
.LBB1_5:                                //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w9, [x22, x8]
	ldrb	w9, [x24, x9]
	strb	w9, [x22, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_5
// %bb.6:                               //   in Loop: Header=BB1_4 Depth=1
	ldrb	w8, [sp]
	ldrb	w9, [sp, #5]
	mov	x0, sp
	add	x2, sp, #16
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp, #16]
	ldrb	w8, [sp, #10]
	strb	w9, [sp, #17]
	ldrb	w9, [sp, #15]
	strb	w8, [sp, #18]
	ldrb	w8, [sp, #4]
	strb	w9, [sp, #19]
	ldrb	w9, [sp, #9]
	strb	w8, [sp, #20]
	ldrb	w8, [sp, #14]
	strb	w9, [sp, #21]
	ldrb	w9, [sp, #3]
	strb	w8, [sp, #22]
	ldrb	w8, [sp, #8]
	strb	w9, [sp, #23]
	ldrb	w9, [sp, #13]
	strb	w8, [sp, #24]
	ldrb	w8, [sp, #2]
	strb	w9, [sp, #25]
	ldrb	w9, [sp, #7]
	strb	w8, [sp, #26]
	ldrb	w8, [sp, #12]
	strb	w9, [sp, #27]
	ldrb	w9, [sp, #1]
	strb	w8, [sp, #28]
	ldrb	w8, [sp, #6]
	strb	w9, [sp, #29]
	ldrb	w9, [sp, #11]
	strb	w8, [sp, #30]
	strb	w9, [sp, #31]
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
	ldrb	w25, [sp]
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
	eor	w9, w21, w25
	ldrb	w25, [sp]
	ldrb	w26, [sp, #1]
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
	eor	w9, w26, w25
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
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #4]
	eor	w9, w21, w0
	eor	w9, w25, w9
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
	ldrb	w25, [sp, #4]
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
	eor	w9, w21, w25
	ldrb	w25, [sp, #4]
	ldrb	w26, [sp, #5]
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
	eor	w9, w26, w25
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
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #8]
	eor	w9, w21, w0
	eor	w9, w25, w9
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
	ldrb	w25, [sp, #8]
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
	eor	w9, w21, w25
	ldrb	w25, [sp, #8]
	ldrb	w26, [sp, #9]
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
	eor	w9, w26, w25
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
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	ldrb	w8, [sp, #12]
	eor	w9, w21, w0
	eor	w9, w25, w9
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
	ldrb	w25, [sp, #12]
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
	eor	w9, w21, w25
	ldrb	w25, [sp, #12]
	ldrb	w26, [sp, #13]
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
	eor	w9, w26, w25
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
	eor	w25, w9, w0
	mov	w0, w8
	bl	_double_byte
	eor	w8, w21, w0
	mov	x0, sp
	add	x2, sp, #16
	eor	w8, w25, w8
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp, #31]
	bl	_copy
	add	x23, x23, #1
	ldrb	w9, [sp]
	ldrb	w10, [sp, #3]
	add	x8, x20, x23, lsl #4
	ldrb	w12, [sp, #1]
	ldrb	w13, [sp, #2]
	cmp	x23, #9
	ldp	w11, w14, [x8]
	eor	w9, w9, w11, lsr #24
	eor	w10, w10, w11
	eor	w12, w12, w11, lsr #16
	strb	w10, [sp, #3]
	ldrb	w10, [sp, #4]
	eor	w11, w13, w11, lsr #8
	strb	w9, [sp]
	ldrb	w9, [sp, #5]
	ldrb	w13, [sp, #10]
	strb	w12, [sp, #1]
	ldrb	w12, [sp, #6]
	eor	w10, w10, w14, lsr #24
	eor	w9, w9, w14, lsr #16
	strb	w11, [sp, #2]
	ldrb	w11, [sp, #7]
	eor	w12, w12, w14, lsr #8
	strb	w10, [sp, #4]
	ldp	w10, w8, [x8, #8]
	strb	w9, [sp, #5]
	ldrb	w9, [sp, #8]
	eor	w11, w11, w14
	strb	w12, [sp, #6]
	ldrb	w12, [sp, #9]
	eor	w9, w9, w10, lsr #24
	strb	w11, [sp, #7]
	eor	w11, w12, w10, lsr #16
	ldrb	w12, [sp, #11]
	strb	w9, [sp, #8]
	eor	w9, w13, w10, lsr #8
	ldrb	w13, [sp, #12]
	strb	w11, [sp, #9]
	ldrb	w11, [sp, #13]
	eor	w10, w12, w10
	strb	w9, [sp, #10]
	eor	w9, w13, w8, lsr #24
	ldrb	w12, [sp, #14]
	strb	w10, [sp, #11]
	eor	w10, w11, w8, lsr #16
	ldrb	w11, [sp, #15]
	strb	w9, [sp, #12]
	eor	w9, w12, w8, lsr #8
	eor	w8, w11, w8
	strb	w10, [sp, #13]
	strb	w9, [sp, #14]
	strb	w8, [sp, #15]
	b.ne	.LBB1_4
// %bb.7:
	mov	x8, xzr
	mov	x9, sp
.LBB1_8:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9, x8]
	ldrb	w10, [x24, x10]
	strb	w10, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_8
// %bb.9:
	ldrb	w8, [sp]
	ldrb	w9, [sp, #5]
	mov	x0, sp
	add	x2, sp, #16
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp, #16]
	ldrb	w8, [sp, #10]
	strb	w9, [sp, #17]
	ldrb	w9, [sp, #15]
	strb	w8, [sp, #18]
	ldrb	w8, [sp, #4]
	strb	w9, [sp, #19]
	ldrb	w9, [sp, #9]
	strb	w8, [sp, #20]
	ldrb	w8, [sp, #14]
	strb	w9, [sp, #21]
	ldrb	w9, [sp, #3]
	strb	w8, [sp, #22]
	ldrb	w8, [sp, #8]
	strb	w9, [sp, #23]
	ldrb	w9, [sp, #13]
	strb	w8, [sp, #24]
	ldrb	w8, [sp, #2]
	strb	w9, [sp, #25]
	ldrb	w9, [sp, #7]
	strb	w8, [sp, #26]
	ldrb	w8, [sp, #12]
	strb	w9, [sp, #27]
	ldrb	w9, [sp, #1]
	strb	w8, [sp, #28]
	ldrb	w8, [sp, #6]
	strb	w9, [sp, #29]
	ldrb	w9, [sp, #11]
	strb	w8, [sp, #30]
	strb	w9, [sp, #31]
	bl	_copy
	ldp	w9, w12, [x20, #160]
	ldrb	w8, [sp]
	ldrb	w10, [sp, #1]
	mov	x2, sp
	ldrb	w11, [sp, #2]
	ldrb	w13, [sp, #3]
	mov	x0, x19
	eor	w8, w8, w9, lsr #24
	eor	w10, w10, w9, lsr #16
	ldrb	w14, [sp, #4]
	mov	w1, #16                         // =0x10
	mov	w3, #16                         // =0x10
	strb	w8, [sp]
	eor	w8, w11, w9, lsr #8
	eor	w9, w13, w9
	strb	w10, [sp, #1]
	ldrb	w10, [sp, #6]
	eor	w11, w14, w12, lsr #24
	strb	w8, [sp, #2]
	ldrb	w8, [sp, #5]
	strb	w9, [sp, #3]
	ldrb	w9, [sp, #7]
	eor	w10, w10, w12, lsr #8
	eor	w8, w8, w12, lsr #16
	strb	w11, [sp, #4]
	ldrb	w11, [sp, #8]
	eor	w9, w9, w12
	strb	w10, [sp, #6]
	ldrb	w10, [sp, #10]
	ldp	w12, w13, [x20, #168]
	strb	w8, [sp, #5]
	ldrb	w8, [sp, #9]
	strb	w9, [sp, #7]
	ldrb	w9, [sp, #11]
	eor	w8, w8, w12, lsr #16
	eor	w10, w10, w12, lsr #8
	eor	w11, w11, w12, lsr #24
	eor	w9, w9, w12
	strb	w8, [sp, #9]
	ldrb	w8, [sp, #13]
	strb	w10, [sp, #10]
	ldrb	w10, [sp, #14]
	strb	w11, [sp, #8]
	ldrb	w11, [sp, #12]
	eor	w8, w8, w13, lsr #16
	strb	w9, [sp, #11]
	eor	w9, w10, w13, lsr #8
	ldrb	w10, [sp, #15]
	eor	w11, w11, w13, lsr #24
	strb	w8, [sp, #13]
	eor	w8, w10, w13
	strb	w9, [sp, #14]
	strb	w11, [sp, #12]
	strb	w8, [sp, #15]
	bl	_copy
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #16                         // =0x10
	bl	_set
	mov	w0, #1                          // =0x1
.LBB1_10:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
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
	.cfi_restore w26
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
