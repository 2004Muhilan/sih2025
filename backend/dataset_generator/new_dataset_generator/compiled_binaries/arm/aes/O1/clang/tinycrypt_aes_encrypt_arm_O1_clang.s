	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       @ -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,%function
	.code	32                              @ @tc_aes128_set_encrypt_key
tc_aes128_set_encrypt_key:
	.fnstart
@ %bb.0:
	mov	r2, #0
	cmp	r0, #0
	cmpne	r1, #0
	bne	.LBB0_2
@ %bb.1:
	mov	r0, r2
	bx	lr
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r2]
	rev	r3, r3
	str	r3, [r0, r2]
	add	r2, r2, #4
	cmp	r2, #16
	bne	.LBB0_2
@ %bb.3:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	ldr	r2, [r0, #12]
	mov	r1, #0
	ldr	r12, .LCPI0_0
.LPC0_0:
	add	r12, pc, r12
	ldr	lr, .LCPI0_1
.LPC0_1:
	add	lr, pc, lr
	b	.LBB0_5
.LBB0_4:                                @   in Loop: Header=BB0_5 Depth=1
	mov	r3, r0
	ldr	r4, [r3, r1, lsl #2]!
	eor	r2, r4, r2
	str	r2, [r3, #16]
	add	r1, r1, #1
	cmp	r1, #40
	beq	.LBB0_7
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	add	r3, r1, #4
	tst	r3, #3
	bne	.LBB0_4
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ror	r4, r2, #24
	ubfx	r5, r4, #16, #8
	ldrb	r5, [lr, r5]
	uxtb	r2, r2, ror #24
	ldrb	r2, [lr, r2]
	ldrb	r6, [lr, r4, lsr #24]
	ubfx	r4, r4, #8, #8
	ldrb	r4, [lr, r4]
	ldr	r3, [r12, r3]
	lsl	r5, r5, #16
	orr	r5, r5, r6, lsl #24
	orr	r4, r5, r4, lsl #8
	orr	r2, r4, r2
	eor	r2, r2, r3
	b	.LBB0_4
.LBB0_7:
	mov	r2, #1
	pop	{r4, r5, r6, lr}
	mov	r0, r2
	bx	lr
	.p2align	2
@ %bb.8:
.LCPI0_0:
	.long	.L__const.tc_aes128_set_encrypt_key.rconst-(.LPC0_0+8)
.LCPI0_1:
	.long	sbox-(.LPC0_1+8)
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_aes_encrypt                  @ -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,%function
	.code	32                              @ @tc_aes_encrypt
tc_aes_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#36
	sub	sp, sp, #36
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB1_2
@ %bb.1:
	mov	r10, r2
	mov	r2, r1
	cmp	r1, #0
	cmpne	r10, #0
	bne	.LBB1_3
.LBB1_2:
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_3:
	str	r5, [sp]                        @ 4-byte Spill
	add	r6, sp, #4
	mov	r0, r6
	mov	r1, #16
	mov	r3, #16
	bl	_copy
	ldrb	r0, [sp, #4]
	ldrb	r1, [sp, #5]
	ldrb	r2, [sp, #6]
	ldrb	r3, [sp, #7]
	ldr	r7, [r10]
	ldr	r5, [r10, #4]
	eor	r3, r3, r7
	ldrb	r4, [sp, #11]
	strb	r3, [sp, #7]
	eor	r3, r4, r5
	ldrb	r4, [sp, #8]
	strb	r3, [sp, #11]
	eor	r0, r0, r7, lsr #24
	ldrb	r3, [sp, #9]
	strb	r0, [sp, #4]
	eor	r0, r1, r7, lsr #16
	ldrb	r1, [sp, #10]
	strb	r0, [sp, #5]
	eor	r0, r2, r7, lsr #8
	strb	r0, [sp, #6]
	eor	r0, r4, r5, lsr #24
	strb	r0, [sp, #8]
	eor	r0, r3, r5, lsr #16
	strb	r0, [sp, #9]
	eor	r0, r1, r5, lsr #8
	strb	r0, [sp, #10]
	ldr	r0, [r10, #8]
	ldrb	r1, [sp, #12]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #12]
	ldrb	r1, [sp, #13]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #13]
	ldrb	r1, [sp, #14]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #14]
	ldrb	r1, [sp, #15]
	eor	r0, r1, r0
	strb	r0, [sp, #15]
	ldr	r0, [r10, #12]
	ldrb	r1, [sp, #16]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #16]
	ldrb	r1, [sp, #17]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #17]
	ldrb	r1, [sp, #18]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #18]
	ldrb	r1, [sp, #19]
	eor	r0, r1, r0
	strb	r0, [sp, #19]
	mov	r11, #0
	ldr	r8, .LCPI1_0
.LPC1_0:
	add	r8, pc, r8
.LBB1_4:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_5 Depth 2
	mov	r0, #0
.LBB1_5:                                @   Parent Loop BB1_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r6, r0]
	ldrb	r1, [r8, r1]
	strb	r1, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #16
	bne	.LBB1_5
@ %bb.6:                                @   in Loop: Header=BB1_4 Depth=1
	ldrb	r0, [sp, #4]
	ldrb	r12, [sp, #7]
	ldrb	r2, [sp, #8]
	ldrb	r3, [sp, #9]
	ldrb	r5, [sp, #19]
	ldrb	r7, [sp, #13]
	ldrb	r4, [sp, #18]
	ldrb	r1, [sp, #14]
	strb	r0, [sp, #20]
	ldrb	r0, [sp, #12]
	strb	r3, [sp, #21]
	strb	r1, [sp, #22]
	strb	r5, [sp, #23]
	strb	r2, [sp, #24]
	strb	r7, [sp, #25]
	strb	r4, [sp, #26]
	strb	r12, [sp, #27]
	strb	r0, [sp, #28]
	ldrb	r0, [sp, #17]
	ldrb	r1, [sp, #5]
	ldrb	r2, [sp, #6]
	ldrb	r3, [sp, #10]
	ldrb	r7, [sp, #11]
	ldrb	r5, [sp, #16]
	ldrb	r4, [sp, #15]
	strb	r0, [sp, #29]
	strb	r2, [sp, #30]
	strb	r7, [sp, #31]
	strb	r5, [sp, #32]
	strb	r1, [sp, #33]
	strb	r3, [sp, #34]
	strb	r4, [sp, #35]
	mov	r0, r6
	mov	r1, #16
	add	r2, sp, #20
	mov	r3, #16
	bl	_copy
	ldrb	r0, [sp, #4]
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #5]
	bl	_double_byte
	ldrb	r4, [sp, #4]
	ldrb	r1, [sp, #5]
	ldrb	r2, [sp, #6]
	ldrb	r3, [sp, #7]
	eor	r0, r0, r5
	eor	r0, r0, r2
	eor	r0, r0, r3
	eor	r0, r0, r1
	strb	r0, [sp, #20]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #6]
	bl	_double_byte
	ldrb	r7, [sp, #4]
	ldrb	r9, [sp, #5]
	ldrb	r1, [sp, #6]
	ldrb	r2, [sp, #7]
	eor	r3, r5, r4
	eor	r0, r3, r0
	eor	r0, r0, r2
	eor	r0, r0, r1
	strb	r0, [sp, #21]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #7]
	bl	_double_byte
	eor	r2, r9, r7
	ldrb	r1, [sp, #4]
	ldrb	r3, [sp, #7]
	eor	r2, r2, r5
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #22]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #4]
	ldrb	r3, [sp, #5]
	ldrb	r4, [sp, #6]
	ldrb	r1, [sp, #7]
	eor	r0, r2, r0
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #8]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #23]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #9]
	bl	_double_byte
	ldrb	r9, [sp, #8]
	ldrb	r1, [sp, #9]
	ldrb	r2, [sp, #10]
	ldrb	r3, [sp, #11]
	eor	r0, r0, r5
	eor	r0, r0, r2
	eor	r0, r0, r3
	eor	r0, r0, r1
	strb	r0, [sp, #24]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #10]
	bl	_double_byte
	ldrb	r7, [sp, #8]
	ldrb	r4, [sp, #9]
	ldrb	r1, [sp, #10]
	ldrb	r2, [sp, #11]
	eor	r3, r5, r9
	eor	r0, r3, r0
	eor	r0, r0, r2
	eor	r0, r0, r1
	strb	r0, [sp, #25]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #11]
	bl	_double_byte
	eor	r2, r4, r7
	ldrb	r1, [sp, #8]
	ldrb	r3, [sp, #11]
	eor	r2, r2, r5
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #26]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #8]
	ldrb	r3, [sp, #9]
	ldrb	r4, [sp, #10]
	ldrb	r1, [sp, #11]
	eor	r0, r2, r0
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #12]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #27]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #13]
	bl	_double_byte
	ldrb	r9, [sp, #12]
	ldrb	r1, [sp, #13]
	ldrb	r2, [sp, #14]
	ldrb	r3, [sp, #15]
	eor	r0, r0, r5
	eor	r0, r0, r2
	eor	r0, r0, r3
	eor	r0, r0, r1
	strb	r0, [sp, #28]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #14]
	bl	_double_byte
	ldrb	r7, [sp, #12]
	ldrb	r4, [sp, #13]
	ldrb	r1, [sp, #14]
	ldrb	r2, [sp, #15]
	eor	r3, r5, r9
	eor	r0, r3, r0
	eor	r0, r0, r2
	eor	r0, r0, r1
	strb	r0, [sp, #29]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #15]
	bl	_double_byte
	eor	r2, r4, r7
	ldrb	r1, [sp, #12]
	ldrb	r3, [sp, #15]
	eor	r2, r2, r5
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #30]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #12]
	ldrb	r3, [sp, #13]
	ldrb	r4, [sp, #14]
	ldrb	r1, [sp, #15]
	eor	r0, r2, r0
	eor	r5, r0, r3
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [sp, #16]
	eor	r2, r5, r4
	eor	r0, r2, r0
	strb	r0, [sp, #31]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #17]
	bl	_double_byte
	ldrb	r9, [sp, #16]
	ldrb	r1, [sp, #17]
	ldrb	r2, [sp, #18]
	ldrb	r3, [sp, #19]
	eor	r0, r0, r5
	eor	r0, r0, r2
	eor	r0, r0, r3
	eor	r0, r0, r1
	strb	r0, [sp, #32]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #18]
	bl	_double_byte
	ldrb	r7, [sp, #16]
	ldrb	r4, [sp, #17]
	ldrb	r1, [sp, #18]
	ldrb	r2, [sp, #19]
	eor	r3, r5, r9
	eor	r0, r3, r0
	eor	r0, r0, r2
	eor	r0, r0, r1
	strb	r0, [sp, #33]
	mov	r0, r1
	bl	_double_byte
	mov	r5, r0
	ldrb	r0, [sp, #19]
	bl	_double_byte
	eor	r2, r4, r7
	ldrb	r1, [sp, #16]
	ldrb	r3, [sp, #19]
	eor	r2, r2, r5
	eor	r0, r2, r0
	eor	r0, r0, r3
	strb	r0, [sp, #34]
	mov	r0, r1
	bl	_double_byte
	ldrb	r2, [sp, #16]
	ldrb	r3, [sp, #17]
	ldrb	r7, [sp, #18]
	ldrb	r1, [sp, #19]
	eor	r0, r2, r0
	eor	r0, r0, r3
	eor	r4, r0, r7
	mov	r0, r1
	bl	_double_byte
	eor	r0, r4, r0
	strb	r0, [sp, #35]
	mov	r0, r6
	mov	r1, #16
	add	r2, sp, #20
	mov	r3, #16
	bl	_copy
	ldrb	r1, [sp, #4]
	ldrb	r2, [sp, #5]
	ldrb	r3, [sp, #6]
	ldrb	r7, [sp, #7]
	add	r11, r11, #1
	mov	r0, r10
	ldr	r5, [r0, r11, lsl #4]!
	eor	r7, r7, r5
	ldrb	r4, [sp, #11]
	strb	r7, [sp, #7]
	eor	r1, r1, r5, lsr #24
	ldrb	r7, [sp, #8]
	strb	r1, [sp, #4]
	eor	r1, r2, r5, lsr #16
	ldr	r2, [r0, #8]
	strb	r1, [sp, #5]
	ldr	r1, [r0, #4]
	eor	r3, r3, r5, lsr #8
	ldrb	r5, [sp, #9]
	strb	r3, [sp, #6]
	eor	r3, r4, r1
	ldrb	r4, [sp, #10]
	strb	r3, [sp, #11]
	eor	r3, r7, r1, lsr #24
	strb	r3, [sp, #8]
	eor	r3, r5, r1, lsr #16
	strb	r3, [sp, #9]
	eor	r1, r4, r1, lsr #8
	strb	r1, [sp, #10]
	ldrb	r1, [sp, #12]
	eor	r1, r1, r2, lsr #24
	strb	r1, [sp, #12]
	ldrb	r1, [sp, #13]
	eor	r1, r1, r2, lsr #16
	strb	r1, [sp, #13]
	ldrb	r1, [sp, #14]
	eor	r1, r1, r2, lsr #8
	strb	r1, [sp, #14]
	ldrb	r1, [sp, #15]
	eor	r1, r1, r2
	strb	r1, [sp, #15]
	ldr	r0, [r0, #12]
	ldrb	r1, [sp, #16]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #16]
	ldrb	r1, [sp, #17]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #17]
	ldrb	r1, [sp, #18]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #18]
	ldrb	r1, [sp, #19]
	eor	r0, r1, r0
	strb	r0, [sp, #19]
	cmp	r11, #9
	bne	.LBB1_4
@ %bb.7:
	mov	r0, #0
.LBB1_8:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r6, r0]
	ldrb	r1, [r8, r1]
	strb	r1, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #16
	bne	.LBB1_8
@ %bb.9:
	ldrb	r0, [sp, #4]
	ldrb	r1, [sp, #7]
	ldrb	r2, [sp, #8]
	ldrb	r3, [sp, #9]
	ldrb	r7, [sp, #19]
	ldrb	r6, [sp, #13]
	ldrb	r5, [sp, #18]
	ldrb	r4, [sp, #14]
	strb	r0, [sp, #20]
	ldrb	r0, [sp, #12]
	strb	r3, [sp, #21]
	strb	r4, [sp, #22]
	strb	r7, [sp, #23]
	strb	r2, [sp, #24]
	strb	r6, [sp, #25]
	strb	r5, [sp, #26]
	strb	r1, [sp, #27]
	strb	r0, [sp, #28]
	ldrb	r0, [sp, #17]
	ldrb	r1, [sp, #5]
	ldrb	r2, [sp, #6]
	ldrb	r3, [sp, #10]
	ldrb	r7, [sp, #11]
	ldrb	r6, [sp, #16]
	ldrb	r5, [sp, #15]
	strb	r0, [sp, #29]
	strb	r2, [sp, #30]
	strb	r7, [sp, #31]
	strb	r6, [sp, #32]
	strb	r1, [sp, #33]
	strb	r3, [sp, #34]
	strb	r5, [sp, #35]
	add	r6, sp, #4
	add	r2, sp, #20
	mov	r0, r6
	mov	r1, #16
	mov	r3, #16
	bl	_copy
	ldrb	r0, [sp, #4]
	ldrb	r1, [sp, #5]
	ldrb	r2, [sp, #6]
	ldrb	r3, [sp, #7]
	ldr	r7, [r10, #160]
	ldr	r5, [r10, #164]
	eor	r3, r3, r7
	strb	r3, [sp, #7]
	ldrb	r3, [sp, #11]
	eor	r3, r3, r5
	strb	r3, [sp, #11]
	eor	r0, r0, r7, lsr #24
	strb	r0, [sp, #4]
	eor	r0, r1, r7, lsr #16
	ldrb	r1, [sp, #8]
	strb	r0, [sp, #5]
	eor	r0, r2, r7, lsr #8
	ldrb	r2, [sp, #9]
	strb	r0, [sp, #6]
	eor	r0, r1, r5, lsr #24
	ldrb	r1, [sp, #10]
	strb	r0, [sp, #8]
	ldr	r0, [r10, #168]
	eor	r2, r2, r5, lsr #16
	strb	r2, [sp, #9]
	eor	r1, r1, r5, lsr #8
	strb	r1, [sp, #10]
	ldrb	r1, [sp, #12]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #12]
	ldrb	r1, [sp, #13]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #13]
	ldrb	r1, [sp, #14]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #14]
	ldrb	r1, [sp, #15]
	eor	r0, r1, r0
	strb	r0, [sp, #15]
	ldr	r0, [r10, #172]
	ldrb	r1, [sp, #16]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #16]
	ldrb	r1, [sp, #17]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #17]
	ldrb	r1, [sp, #18]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #18]
	ldrb	r1, [sp, #19]
	eor	r0, r1, r0
	strb	r0, [sp, #19]
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r1, #16
	mov	r2, r6
	mov	r3, #16
	bl	_copy
	mov	r0, r6
	mov	r1, #0
	mov	r2, #16
	bl	_set
	mov	r0, #1
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.10:
.LCPI1_0:
	.long	sbox-(.LPC1_0+8)
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,%object @ @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",%progbits
	.p2align	2, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.long	0                               @ 0x0
	.long	16777216                        @ 0x1000000
	.long	33554432                        @ 0x2000000
	.long	67108864                        @ 0x4000000
	.long	134217728                       @ 0x8000000
	.long	268435456                       @ 0x10000000
	.long	536870912                       @ 0x20000000
	.long	1073741824                      @ 0x40000000
	.long	2147483648                      @ 0x80000000
	.long	452984832                       @ 0x1b000000
	.long	905969664                       @ 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,%object                    @ @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
