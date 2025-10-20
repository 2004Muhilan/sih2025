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
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       @ -- Begin function tc_aes128_set_decrypt_key
	.p2align	2
	.type	tc_aes128_set_decrypt_key,%function
	.code	32                              @ @tc_aes128_set_decrypt_key
tc_aes128_set_decrypt_key:
	.fnstart
@ %bb.0:
	b	tc_aes128_set_encrypt_key
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	tc_aes_decrypt                  @ -- Begin function tc_aes_decrypt
	.p2align	2
	.type	tc_aes_decrypt,%function
	.code	32                              @ @tc_aes_decrypt
tc_aes_decrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#92
	sub	sp, sp, #92
	mov	r9, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_2
@ %bb.1:
	cmp	r2, #0
	cmpne	r9, #0
	bne	.LBB1_3
.LBB1_2:
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_3:
	add	r4, sp, #60
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r1, #16
	mov	r3, #16
	mov	r0, r4
	bl	_copy
	ldrb	r3, [sp, #63]
	mov	r8, #0
	ldr	r7, [r9, #160]
	ldrb	r0, [sp, #60]
	eor	r3, r3, r7
	strb	r3, [sp, #63]
	ldr	r6, [r9, #164]
	eor	r0, r0, r7, lsr #24
	ldrb	r3, [sp, #67]
	ldrb	r1, [sp, #61]
	eor	r3, r3, r6
	ldrb	r2, [sp, #62]
	strb	r3, [sp, #67]
	strb	r0, [sp, #60]
	eor	r0, r1, r7, lsr #16
	ldrb	r3, [sp, #64]
	strb	r0, [sp, #61]
	eor	r0, r2, r7, lsr #8
	ldrb	r1, [sp, #65]
	strb	r0, [sp, #62]
	eor	r0, r3, r6, lsr #24
	ldrb	r2, [sp, #66]
	strb	r0, [sp, #64]
	eor	r0, r1, r6, lsr #16
	strb	r0, [sp, #65]
	eor	r0, r2, r6, lsr #8
	strb	r0, [sp, #66]
	ldr	r0, [r9, #168]
	ldrb	r1, [sp, #68]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #68]
	ldrb	r1, [sp, #69]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #69]
	ldrb	r1, [sp, #70]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #70]
	ldrb	r1, [sp, #71]
	eor	r0, r1, r0
	strb	r0, [sp, #71]
	ldr	r0, [r9, #172]
	ldrb	r1, [sp, #72]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #72]
	ldrb	r1, [sp, #73]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #73]
	ldrb	r1, [sp, #74]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #74]
	ldrb	r1, [sp, #75]
	eor	r0, r1, r0
	strb	r0, [sp, #75]
	add	r0, sp, #76
	add	r1, r0, #12
	str	r1, [sp, #28]                   @ 4-byte Spill
	add	r1, r0, #8
	add	r0, r0, #4
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, r4, #12
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, r4, #8
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, r4, #4
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
.LBB1_4:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [sp, #60]
	ldrb	r2, [sp, #64]
	strb	r0, [sp, #76]
	ldrb	r0, [sp, #68]
	ldrb	r1, [sp, #61]
	ldrb	r3, [sp, #67]
	strb	r2, [sp, #80]
	strb	r0, [sp, #84]
	ldrb	r0, [sp, #62]
	ldrb	r2, [sp, #65]
	ldrb	r7, [sp, #70]
	ldrb	r6, [sp, #74]
	ldrb	r5, [sp, #71]
	strb	r3, [sp, #79]
	strb	r1, [sp, #81]
	ldrb	r1, [sp, #63]
	ldrb	r3, [sp, #66]
	strb	r2, [sp, #85]
	add	r2, sp, #76
	strb	r0, [sp, #86]
	add	r0, sp, #60
	ldrb	r4, [sp, #73]
	strb	r7, [sp, #78]
	strb	r6, [sp, #82]
	strb	r5, [sp, #83]
	ldrb	r7, [sp, #75]
	ldrb	r6, [sp, #72]
	ldrb	r5, [sp, #69]
	strb	r3, [sp, #90]
	mov	r3, #16
	strb	r1, [sp, #91]
	mov	r1, #16
	strb	r4, [sp, #77]
	strb	r7, [sp, #87]
	strb	r6, [sp, #88]
	strb	r5, [sp, #89]
	bl	_copy
	ldrb	r7, [sp, #60]
	mov	r5, r9
	ldrb	r12, [sp, #61]
	sub	r9, r9, r8, lsl #4
	ldrb	r2, [sp, #62]
	ldrb	r0, [sp, #63]
	ldr	r3, .LCPI1_0
	ldrb	r1, [sp, #73]
	str	r1, [sp, #56]                   @ 4-byte Spill
.LPC1_0:
	add	r3, pc, r3
	ldrb	r1, [sp, #72]
	str	r1, [sp, #52]                   @ 4-byte Spill
	ldrb	r1, [sp, #74]
	str	r1, [sp, #48]                   @ 4-byte Spill
	ldrb	r1, [sp, #75]
	str	r1, [sp, #44]                   @ 4-byte Spill
	ldrb	r1, [sp, #68]
	str	r1, [sp, #40]                   @ 4-byte Spill
	ldrb	r1, [sp, #69]
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldrb	r1, [sp, #70]
	ldrb	r0, [r3, r0]
	ldr	r10, [r9, #144]
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldrb	r1, [sp, #66]
	eor	r0, r0, r10
	strb	r0, [sp, #63]
	ldrb	r0, [r3, r2]
	ldr	r2, [r9, #148]
	ldrb	r1, [r3, r1]
	ldrb	lr, [sp, #65]
	eor	r0, r0, r10, lsr #8
	strb	r0, [sp, #62]
	eor	r1, r1, r2, lsr #8
	strb	r1, [sp, #66]
	ldrb	r1, [r3, lr]
	ldrb	r0, [r3, r12]
	ldrb	r4, [sp, #64]
	eor	r1, r1, r2, lsr #16
	strb	r1, [sp, #65]
	eor	r0, r0, r10, lsr #16
	strb	r0, [sp, #61]
	ldrb	r1, [r3, r4]
	add	r4, sp, #60
	ldrb	r0, [r3, r7]
	ldrb	r6, [sp, #71]
	eor	r1, r1, r2, lsr #24
	strb	r1, [sp, #64]
	eor	r0, r0, r10, lsr #24
	strb	r0, [sp, #60]
	ldrb	r1, [r3, r6]
	ldr	r0, [r9, #152]
	ldrb	r11, [sp, #67]
	eor	r1, r1, r0
	strb	r1, [sp, #71]
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r7, [r9, #156]
	mov	r9, r5
	ldrb	r12, [r3, r11]
	ldrb	r1, [r3, r1]
	eor	r5, r12, r2
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #70]
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldrb	r2, [r3, r2]
	strb	r5, [sp, #67]
	ldrb	r1, [r3, r1]
	add	r5, sp, #76
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #69]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldrb	r1, [r3, r1]
	eor	r0, r1, r0, lsr #24
	strb	r0, [sp, #68]
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	ldrb	r0, [r3, r0]
	ldrb	r1, [r3, r1]
	eor	r0, r0, r7
	strb	r0, [sp, #75]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldrb	r0, [r3, r0]
	eor	r0, r0, r7, lsr #8
	strb	r0, [sp, #74]
	eor	r0, r2, r7, lsr #16
	strb	r0, [sp, #73]
	eor	r0, r1, r7, lsr #24
	strb	r0, [sp, #72]
	mov	r0, r5
	mov	r1, r4
	bl	mult_row_column
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	bl	mult_row_column
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	bl	mult_row_column
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	bl	mult_row_column
	mov	r0, r4
	mov	r1, #16
	mov	r2, r5
	mov	r3, #16
	bl	_copy
	add	r8, r8, #1
	cmp	r8, #9
	bne	.LBB1_4
@ %bb.5:
	ldrb	r0, [sp, #60]
	ldrb	r2, [sp, #64]
	strb	r0, [sp, #76]
	ldrb	r0, [sp, #68]
	ldrb	r1, [sp, #61]
	ldrb	r3, [sp, #67]
	strb	r2, [sp, #80]
	strb	r0, [sp, #84]
	ldrb	r0, [sp, #62]
	ldrb	r2, [sp, #65]
	ldrb	r7, [sp, #70]
	ldrb	r6, [sp, #74]
	ldrb	r5, [sp, #71]
	strb	r3, [sp, #79]
	strb	r1, [sp, #81]
	ldrb	r1, [sp, #63]
	ldrb	r3, [sp, #66]
	strb	r2, [sp, #85]
	add	r2, sp, #76
	strb	r0, [sp, #86]
	add	r0, sp, #60
	ldrb	r4, [sp, #73]
	strb	r7, [sp, #78]
	strb	r6, [sp, #82]
	strb	r5, [sp, #83]
	ldrb	r7, [sp, #75]
	ldrb	r6, [sp, #72]
	ldrb	r5, [sp, #69]
	strb	r3, [sp, #90]
	mov	r3, #16
	strb	r1, [sp, #91]
	mov	r1, #16
	strb	r4, [sp, #77]
	strb	r7, [sp, #87]
	strb	r6, [sp, #88]
	strb	r5, [sp, #89]
	bl	_copy
	ldrb	r4, [sp, #60]
	ldrb	lr, [sp, #61]
	ldrb	r2, [sp, #62]
	ldrb	r0, [sp, #63]
	ldr	r1, .LCPI1_1
	ldr	r3, [r9]
.LPC1_1:
	add	r1, pc, r1
	ldrb	r12, [sp, #66]
	ldrb	r5, [sp, #65]
	ldrb	r2, [r1, r2]
	ldrb	r0, [r1, r0]
	ldrb	r6, [sp, #64]
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #62]
	eor	r7, r0, r3
	ldrb	r0, [sp, #74]
	ldrb	r2, [r1, lr]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldrb	r0, [sp, #73]
	str	r0, [sp, #52]                   @ 4-byte Spill
	eor	r2, r2, r3, lsr #16
	ldrb	r0, [sp, #72]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldrb	r0, [sp, #75]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldrb	r0, [sp, #68]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldrb	r0, [sp, #67]
	strb	r2, [sp, #61]
	ldrb	r2, [r1, r4]
	ldrb	r0, [r1, r0]
	ldrb	r8, [sp, #71]
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #60]
	ldmib	r9, {r2, r3, r4}
	eor	r0, r0, r2
	strb	r0, [sp, #67]
	ldrb	r0, [r1, r12]
	ldrb	r10, [sp, #70]
	ldrb	r11, [sp, #69]
	eor	r0, r0, r2, lsr #8
	strb	r0, [sp, #66]
	ldrb	r0, [r1, r5]
	strb	r7, [sp, #63]
	eor	r0, r0, r2, lsr #16
	strb	r0, [sp, #65]
	ldrb	r0, [r1, r6]
	eor	r0, r0, r2, lsr #24
	strb	r0, [sp, #64]
	ldrb	r0, [r1, r8]
	ldr	r2, [sp, #52]                   @ 4-byte Reload
	eor	r0, r0, r3
	strb	r0, [sp, #71]
	ldrb	r0, [r1, r10]
	eor	r0, r0, r3, lsr #8
	strb	r0, [sp, #70]
	ldrb	r0, [r1, r11]
	eor	r0, r0, r3, lsr #16
	strb	r0, [sp, #69]
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldrb	r0, [r1, r0]
	eor	r0, r0, r3, lsr #24
	strb	r0, [sp, #68]
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldrb	r3, [r1, r2]
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	ldrb	r0, [r1, r0]
	ldrb	r2, [r1, r2]
	eor	r0, r0, r4
	strb	r0, [sp, #75]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	eor	r2, r2, r4, lsr #8
	strb	r2, [sp, #74]
	ldrb	r0, [r1, r0]
	eor	r1, r3, r4, lsr #16
	strb	r1, [sp, #73]
	mov	r1, #16
	mov	r3, #16
	eor	r0, r0, r4, lsr #24
	strb	r0, [sp, #72]
	add	r4, sp, #60
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r2, r4
	bl	_copy
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	bl	_set
	mov	r0, #1
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.6:
.LCPI1_0:
	.long	inv_sbox-(.LPC1_0+8)
.LCPI1_1:
	.long	inv_sbox-(.LPC1_1+8)
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function mult_row_column
	.type	mult_row_column,%function
	.code	32                              @ @mult_row_column
mult_row_column:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	ldrb	r0, [r1]
	mov	r5, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r6, r0
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	mov	r7, r0
	ldrb	r0, [r5]
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5, #1]
	eor	r7, r7, r6
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r6, r0
	ldrb	r0, [r5, #1]
	eor	r4, r7, r4
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r3, r4, r6
	ldrb	r2, [r5, #1]
	eor	r0, r3, r0
	eor	r4, r0, r2
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r4, r4, r0
	ldrb	r6, [r5, #2]
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	eor	r2, r4, r6
	ldrb	r1, [r5, #3]
	eor	r0, r2, r0
	eor	r0, r0, r1
	strb	r0, [r8]
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #1]
	ldrb	r2, [r5]
	eor	r4, r2, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #1]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #1]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r7, r4, r0
	ldrb	r6, [r5, #2]
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5, #3]
	eor	r6, r7, r6
	bl	_double_byte
	bl	_double_byte
	eor	r2, r6, r4
	ldrb	r1, [r5, #3]
	eor	r0, r2, r0
	eor	r0, r0, r1
	strb	r0, [r8, #1]
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #1]
	eor	r0, r0, r4
	ldrb	r2, [r5]
	eor	r4, r0, r2
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r7, r4, r0
	ldrb	r6, [r5, #1]
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5, #2]
	eor	r7, r7, r6
	bl	_double_byte
	bl	_double_byte
	mov	r6, r0
	ldrb	r0, [r5, #2]
	eor	r7, r7, r4
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5, #3]
	eor	r7, r7, r6
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r6, r0
	ldrb	r0, [r5, #3]
	eor	r4, r7, r4
	bl	_double_byte
	eor	r2, r4, r6
	ldrb	r1, [r5, #3]
	eor	r0, r2, r0
	eor	r0, r0, r1
	strb	r0, [r8, #2]
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5]
	bl	_double_byte
	ldrb	r1, [r5, #1]
	eor	r0, r0, r4
	ldrb	r2, [r5]
	eor	r4, r0, r2
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #1]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #2]
	eor	r4, r4, r0
	ldrb	r6, [r5, #1]
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r3, r4, r6
	ldrb	r2, [r5, #2]
	eor	r0, r3, r0
	eor	r4, r0, r2
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	eor	r0, r4, r0
	strb	r0, [r8, #3]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end2:
	.size	mult_row_column, .Lfunc_end2-mult_row_column
	.cantunwind
	.fnend
                                        @ -- End function
	.type	inv_sbox,%object                @ @inv_sbox
	.section	.rodata,"a",%progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
