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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#80
	sub	sp, sp, #80
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	add	r0, sp, #24
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc, r1
	movw	r2, #44
	bl	memcpy
	ldr	r0, [r11, #-8]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB0_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_16
.LBB0_2:
	ldr	r0, [r11, #-12]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB0_4
@ %bb.3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_16
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	movw	r0, #0
	str	r0, [sp, #20]
.LBB0_6:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #4
	bhs	.LBB0_9
@ %bb.7:                                @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [r11, #-12]
	ldr	r2, [sp, #20]
	ldr	r0, [r0, r2, lsl #2]
	rev	r0, r0
	ldr	r1, [r11, #-8]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.8:                                @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_6
.LBB0_9:
	b	.LBB0_10
.LBB0_10:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #44
	bhs	.LBB0_15
@ %bb.11:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #20]
	sub	r1, r1, #1
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	str	r0, [sp, #16]
	ldr	r0, [sp, #20]
	and	r0, r0, #3
	cmp	r0, #0
	bne	.LBB0_13
@ %bb.12:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #16]
	bl	rotword
	mov	r1, r0
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldrb	r0, [r0, r1, lsr #24]
	lsl	r0, r0, #24
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #16]
	bl	rotword
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	ubfx	r2, r2, #16, #8
	ldrb	r1, [r1, r2]
	orr	r0, r0, r1, lsl #16
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #16]
	bl	rotword
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ubfx	r2, r2, #8, #8
	ldrb	r1, [r1, r2]
	orr	r0, r0, r1, lsl #8
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]
	bl	rotword
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	uxtb	r2, r2
	ldrb	r1, [r1, r2]
	orr	r0, r0, r1
	ldr	r1, [sp, #20]
	lsr	r2, r1, #2
	bic	r2, r1, #3
	add	r1, sp, #24
	add	r1, r1, r2
	ldr	r1, [r1]
	eor	r0, r0, r1
	str	r0, [sp, #16]
.LBB0_13:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #20]
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1, #-16]
	ldr	r2, [sp, #16]
	eor	r0, r0, r2
	str	r0, [r1]
@ %bb.14:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_10
.LBB0_15:
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB0_16:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.17:
.LCPI0_0:
	.long	.L__const.tc_aes128_set_encrypt_key.rconst-(.LPC0_0+8)
.LCPI0_1:
	.long	sbox-(.LPC0_1+8)
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function rotword
	.type	rotword,%function
	.code	32                              @ @rotword
rotword:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	lsr	r0, r0, #24
	ldr	r1, [sp]
	lsl	r1, r1, #8
	orr	r0, r0, r1
	add	sp, sp, #4
	bx	lr
.Lfunc_end1:
	.size	rotword, .Lfunc_end1-rotword
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#48
	sub	sp, sp, #48
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB2_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_2:
	ldr	r0, [r11, #-12]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB2_4
@ %bb.3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_4:
	ldr	r0, [r11, #-16]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB2_6
@ %bb.5:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_6:
	b	.LBB2_7
.LBB2_7:
	b	.LBB2_8
.LBB2_8:
	add	r0, sp, #16
	ldr	r2, [r11, #-12]
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	add	r0, sp, #16
	ldr	r1, [r11, #-16]
	bl	add_round_key
	movw	r0, #0
	str	r0, [sp, #12]
.LBB2_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #9
	bhs	.LBB2_12
@ %bb.10:                               @   in Loop: Header=BB2_9 Depth=1
	add	r0, sp, #16
	str	r0, [sp, #8]                    @ 4-byte Spill
	bl	sub_bytes
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	bl	shift_rows
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	bl	mix_columns
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [r11, #-16]
	ldr	r3, [sp, #12]
	mov	r2, #4
	add	r2, r2, r3, lsl #2
	add	r1, r1, r2, lsl #2
	bl	add_round_key
@ %bb.11:                               @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB2_9
.LBB2_12:
	add	r0, sp, #16
	str	r0, [sp, #4]                    @ 4-byte Spill
	bl	sub_bytes
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	shift_rows
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r11, #-16]
	ldr	r3, [sp, #12]
	mov	r2, #4
	add	r2, r2, r3, lsl #2
	add	r1, r1, r2, lsl #2
	bl	add_round_key
	ldr	r0, [r11, #-8]
	add	r2, sp, #16
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	add	r0, sp, #16
	movw	r1, #0
	movw	r2, #16
	and	r1, r1, #255
	bl	_set
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB2_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	tc_aes_encrypt, .Lfunc_end2-tc_aes_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function add_round_key
	.type	add_round_key,%function
	.code	32                              @ @add_round_key
add_round_key:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #1]
	eor	r0, r0, r2
	strb	r0, [r1, #1]
	ldr	r0, [sp]
	ldr	r0, [r0]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #2]
	eor	r0, r0, r2
	strb	r0, [r1, #2]
	ldr	r0, [sp]
	ldr	r0, [r0]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #3]
	eor	r0, r0, r2
	strb	r0, [r1, #3]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #4]
	eor	r0, r0, r2
	strb	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #5]
	eor	r0, r0, r2
	strb	r0, [r1, #5]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #6]
	eor	r0, r0, r2
	strb	r0, [r1, #6]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #7]
	eor	r0, r0, r2
	strb	r0, [r1, #7]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #8]
	eor	r0, r0, r2
	strb	r0, [r1, #8]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #9]
	eor	r0, r0, r2
	strb	r0, [r1, #9]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #10]
	eor	r0, r0, r2
	strb	r0, [r1, #10]
	ldr	r0, [sp]
	ldr	r0, [r0, #8]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #11]
	eor	r0, r0, r2
	strb	r0, [r1, #11]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #24
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #12]
	eor	r0, r0, r2
	strb	r0, [r1, #12]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #16
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #13]
	eor	r0, r0, r2
	strb	r0, [r1, #13]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	lsr	r0, r0, #8
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #14]
	eor	r0, r0, r2
	strb	r0, [r1, #14]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	and	r2, r0, #255
	ldr	r1, [sp, #4]
	ldrb	r0, [r1, #15]
	eor	r0, r0, r2
	strb	r0, [r1, #15]
	add	sp, sp, #8
	bx	lr
.Lfunc_end3:
	.size	add_round_key, .Lfunc_end3-add_round_key
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function sub_bytes
	.type	sub_bytes,%function
	.code	32                              @ @sub_bytes
sub_bytes:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	movw	r0, #0
	str	r0, [sp]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #16
	bhs	.LBB4_4
@ %bb.2:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	ldrb	r1, [r0]
	ldr	r0, .LCPI4_0
.LPC4_0:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB4_1
.LBB4_4:
	add	sp, sp, #8
	bx	lr
	.p2align	2
@ %bb.5:
.LCPI4_0:
	.long	sbox-(.LPC4_0+8)
.Lfunc_end4:
	.size	sub_bytes, .Lfunc_end4-sub_bytes
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function shift_rows
	.type	shift_rows,%function
	.code	32                              @ @shift_rows
shift_rows:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	strb	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #5]
	strb	r0, [sp, #5]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #10]
	strb	r0, [sp, #6]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #15]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #4]
	strb	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #9]
	strb	r0, [sp, #9]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #14]
	strb	r0, [sp, #10]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #3]
	strb	r0, [sp, #11]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #8]
	strb	r0, [sp, #12]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #13]
	strb	r0, [sp, #13]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #2]
	strb	r0, [sp, #14]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #7]
	strb	r0, [sp, #15]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #12]
	strb	r0, [sp, #16]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #1]
	strb	r0, [sp, #17]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #6]
	strb	r0, [sp, #18]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0, #11]
	strb	r0, [sp, #19]
	ldr	r0, [r11, #-4]
	add	r2, sp, #4
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end5:
	.size	shift_rows, .Lfunc_end5-shift_rows
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function mix_columns
	.type	mix_columns,%function
	.code	32                              @ @mix_columns
mix_columns:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	add	r0, sp, #4
	ldr	r1, [r11, #-4]
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #4
	ldr	r1, [r11, #-4]
	add	r1, r1, #4
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #8
	ldr	r1, [r11, #-4]
	add	r1, r1, #8
	bl	mult_row_column
	add	r0, sp, #4
	add	r0, r0, #12
	ldr	r1, [r11, #-4]
	add	r1, r1, #12
	bl	mult_row_column
	ldr	r0, [r11, #-4]
	add	r2, sp, #4
	movw	r3, #16
	mov	r1, r3
	bl	_copy
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end6:
	.size	mix_columns, .Lfunc_end6-mix_columns
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function mult_row_column
	.type	mult_row_column,%function
	.code	32                              @ @mult_row_column
mult_row_column:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #1]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #2]
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #3]
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #1]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #2]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #3]
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #1]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #1]
	eor	r0, r0, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #2]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	and	r1, r1, #255
	ldr	r2, [r11, #-8]
	ldrb	r2, [r2, #3]
	eor	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #2]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	bl	_double_byte
	and	r0, r0, #255
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1]
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #1]
	eor	r0, r0, r1
	ldr	r1, [r11, #-8]
	ldrb	r1, [r1, #2]
	eor	r0, r0, r1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #3]
	bl	_double_byte
	mov	r1, r0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #3]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end7:
	.size	mult_row_column, .Lfunc_end7-mult_row_column
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
	.addrsig_sym rotword
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym sub_bytes
	.addrsig_sym shift_rows
	.addrsig_sym mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym sbox
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
