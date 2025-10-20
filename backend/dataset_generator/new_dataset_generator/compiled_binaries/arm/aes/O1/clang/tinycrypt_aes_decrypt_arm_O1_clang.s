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
	.pad	#60
	sub	sp, sp, #60
	mov	r4, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_2
@ %bb.1:
	cmp	r2, #0
	cmpne	r4, #0
	bne	.LBB1_3
.LBB1_2:
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_3:
	str	r1, [sp]                        @ 4-byte Spill
	add	r6, sp, #28
	mov	r0, r6
	mov	r1, #16
	mov	r3, #16
	bl	_copy
	ldrb	r0, [sp, #28]
	ldrb	r1, [sp, #29]
	ldrb	r2, [sp, #30]
	ldrb	r3, [sp, #31]
	ldr	r7, [r4, #160]
	ldr	r5, [r4, #164]
	eor	r3, r3, r7
	strb	r3, [sp, #31]
	ldrb	r3, [sp, #35]
	eor	r3, r3, r5
	strb	r3, [sp, #35]
	eor	r0, r0, r7, lsr #24
	ldrb	r3, [sp, #32]
	strb	r0, [sp, #28]
	eor	r0, r1, r7, lsr #16
	ldrb	r1, [sp, #33]
	strb	r0, [sp, #29]
	eor	r0, r2, r7, lsr #8
	ldrb	r2, [sp, #34]
	strb	r0, [sp, #30]
	eor	r0, r3, r5, lsr #24
	strb	r0, [sp, #32]
	eor	r0, r1, r5, lsr #16
	strb	r0, [sp, #33]
	eor	r0, r2, r5, lsr #8
	strb	r0, [sp, #34]
	ldr	r0, [r4, #168]
	ldrb	r1, [sp, #36]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #36]
	ldrb	r1, [sp, #37]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #37]
	ldrb	r1, [sp, #38]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #38]
	ldrb	r1, [sp, #39]
	eor	r0, r1, r0
	strb	r0, [sp, #39]
	str	r4, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [r4, #172]
	ldrb	r1, [sp, #40]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #40]
	ldrb	r1, [sp, #41]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #41]
	ldrb	r1, [sp, #42]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #42]
	ldrb	r1, [sp, #43]
	eor	r0, r1, r0
	strb	r0, [sp, #43]
	add	r8, sp, #44
	add	r0, r8, #12
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, r8, #8
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, r8, #4
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, r6, #12
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, r6, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r9, r6, #4
	mov	r11, #9
	ldr	r10, .LCPI1_0
.LPC1_0:
	add	r10, pc, r10
.LBB1_4:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_5 Depth 2
	ldrb	r0, [sp, #28]
	ldrb	r12, [sp, #29]
	ldrb	r2, [sp, #32]
	ldrb	r3, [sp, #35]
	ldrb	r4, [sp, #38]
	ldrb	r5, [sp, #42]
	ldrb	r7, [sp, #39]
	ldrb	r1, [sp, #41]
	strb	r0, [sp, #44]
	ldrb	r0, [sp, #36]
	strb	r1, [sp, #45]
	strb	r4, [sp, #46]
	strb	r3, [sp, #47]
	strb	r2, [sp, #48]
	strb	r12, [sp, #49]
	strb	r5, [sp, #50]
	strb	r7, [sp, #51]
	strb	r0, [sp, #52]
	ldrb	r0, [sp, #30]
	ldrb	r1, [sp, #31]
	ldrb	r2, [sp, #33]
	ldrb	r3, [sp, #34]
	ldrb	r7, [sp, #43]
	ldrb	r5, [sp, #40]
	ldrb	r4, [sp, #37]
	strb	r2, [sp, #53]
	strb	r0, [sp, #54]
	strb	r7, [sp, #55]
	strb	r5, [sp, #56]
	strb	r4, [sp, #57]
	strb	r3, [sp, #58]
	strb	r1, [sp, #59]
	mov	r0, r6
	mov	r1, #16
	mov	r2, r8
	mov	r3, #16
	bl	_copy
	mov	r0, #0
.LBB1_5:                                @   Parent Loop BB1_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r6, r0]
	ldrb	r1, [r10, r1]
	strb	r1, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #16
	bne	.LBB1_5
@ %bb.6:                                @   in Loop: Header=BB1_4 Depth=1
	ldrb	r1, [sp, #28]
	ldrb	r2, [sp, #29]
	ldrb	r3, [sp, #30]
	ldrb	r7, [sp, #31]
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r5, [r0, r11, lsl #4]!
	eor	r7, r7, r5
	ldrb	r4, [sp, #35]
	strb	r7, [sp, #31]
	eor	r1, r1, r5, lsr #24
	ldr	r7, [r0, #4]
	strb	r1, [sp, #28]
	eor	r1, r2, r5, lsr #16
	ldrb	r2, [sp, #32]
	strb	r1, [sp, #29]
	eor	r1, r3, r5, lsr #8
	ldrb	r3, [sp, #33]
	strb	r1, [sp, #30]
	eor	r1, r4, r7
	ldrb	r5, [sp, #34]
	strb	r1, [sp, #35]
	eor	r1, r2, r7, lsr #24
	strb	r1, [sp, #32]
	eor	r1, r3, r7, lsr #16
	strb	r1, [sp, #33]
	eor	r1, r5, r7, lsr #8
	strb	r1, [sp, #34]
	ldr	r1, [r0, #8]
	ldrb	r2, [sp, #36]
	eor	r2, r2, r1, lsr #24
	strb	r2, [sp, #36]
	ldrb	r2, [sp, #37]
	eor	r2, r2, r1, lsr #16
	strb	r2, [sp, #37]
	ldrb	r2, [sp, #38]
	eor	r2, r2, r1, lsr #8
	strb	r2, [sp, #38]
	ldrb	r2, [sp, #39]
	eor	r1, r2, r1
	strb	r1, [sp, #39]
	ldr	r0, [r0, #12]
	ldrb	r1, [sp, #40]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #40]
	ldrb	r1, [sp, #41]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #41]
	ldrb	r1, [sp, #42]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #42]
	ldrb	r1, [sp, #43]
	eor	r0, r1, r0
	strb	r0, [sp, #43]
	mov	r0, r8
	mov	r1, r6
	bl	mult_row_column
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r9
	bl	mult_row_column
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	bl	mult_row_column
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	bl	mult_row_column
	mov	r0, r6
	mov	r1, #16
	mov	r2, r8
	mov	r3, #16
	bl	_copy
	subs	r11, r11, #1
	bne	.LBB1_4
@ %bb.7:
	ldrb	r0, [sp, #28]
	ldrb	r12, [sp, #29]
	ldrb	r2, [sp, #32]
	ldrb	r3, [sp, #35]
	ldrb	r7, [sp, #38]
	ldrb	r5, [sp, #42]
	ldrb	r4, [sp, #39]
	ldrb	r1, [sp, #41]
	strb	r0, [sp, #44]
	ldrb	r0, [sp, #36]
	strb	r1, [sp, #45]
	strb	r7, [sp, #46]
	strb	r3, [sp, #47]
	strb	r2, [sp, #48]
	strb	r12, [sp, #49]
	strb	r5, [sp, #50]
	strb	r4, [sp, #51]
	strb	r0, [sp, #52]
	ldrb	r0, [sp, #30]
	ldrb	r1, [sp, #31]
	ldrb	r2, [sp, #33]
	ldrb	r3, [sp, #34]
	ldrb	r7, [sp, #43]
	ldrb	r5, [sp, #40]
	ldrb	r4, [sp, #37]
	strb	r2, [sp, #53]
	strb	r0, [sp, #54]
	strb	r7, [sp, #55]
	strb	r5, [sp, #56]
	strb	r4, [sp, #57]
	strb	r3, [sp, #58]
	strb	r1, [sp, #59]
	add	r2, sp, #44
	mov	r0, r6
	mov	r1, #16
	mov	r3, #16
	bl	_copy
	mov	r0, #0
.LBB1_8:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r6, r0]
	ldrb	r1, [r10, r1]
	strb	r1, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #16
	bne	.LBB1_8
@ %bb.9:
	ldrb	r0, [sp, #28]
	ldrb	r1, [sp, #29]
	ldrb	r2, [sp, #30]
	ldrb	r3, [sp, #31]
	ldr	r4, [sp, #24]                   @ 4-byte Reload
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	eor	r3, r3, r7
	ldrb	r5, [sp, #35]
	strb	r3, [sp, #31]
	eor	r3, r5, r6
	ldrb	r5, [sp, #32]
	strb	r3, [sp, #35]
	eor	r0, r0, r7, lsr #24
	ldrb	r3, [sp, #33]
	strb	r0, [sp, #28]
	eor	r0, r1, r7, lsr #16
	ldrb	r1, [sp, #34]
	strb	r0, [sp, #29]
	eor	r0, r2, r7, lsr #8
	strb	r0, [sp, #30]
	eor	r0, r5, r6, lsr #24
	strb	r0, [sp, #32]
	eor	r0, r3, r6, lsr #16
	strb	r0, [sp, #33]
	eor	r0, r1, r6, lsr #8
	strb	r0, [sp, #34]
	ldr	r0, [r4, #8]
	ldrb	r1, [sp, #36]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #36]
	ldrb	r1, [sp, #37]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #37]
	ldrb	r1, [sp, #38]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #38]
	ldrb	r1, [sp, #39]
	eor	r0, r1, r0
	strb	r0, [sp, #39]
	ldr	r0, [r4, #12]
	ldrb	r1, [sp, #40]
	eor	r1, r1, r0, lsr #24
	strb	r1, [sp, #40]
	ldrb	r1, [sp, #41]
	eor	r1, r1, r0, lsr #16
	strb	r1, [sp, #41]
	ldrb	r1, [sp, #42]
	eor	r1, r1, r0, lsr #8
	strb	r1, [sp, #42]
	ldrb	r1, [sp, #43]
	eor	r0, r1, r0
	strb	r0, [sp, #43]
	add	r4, sp, #28
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r1, #16
	mov	r2, r4
	mov	r3, #16
	bl	_copy
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	bl	_set
	mov	r0, #1
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.10:
.LCPI1_0:
	.long	inv_sbox-(.LPC1_0+8)
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
	mov	r5, r1
	mov	r8, r0
	ldrb	r0, [r1]
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
	ldrb	r2, [r5, #1]
	ldrb	r1, [r5, #2]
	eor	r3, r4, r6
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
	ldrb	r6, [r5, #2]
	ldrb	r1, [r5, #3]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r2, r4, r6
	eor	r0, r2, r0
	eor	r0, r0, r1
	strb	r0, [r8]
	ldrb	r0, [r5]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r2, [r5]
	ldrb	r1, [r5, #1]
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
	ldrb	r6, [r5, #2]
	ldrb	r1, [r5, #3]
	eor	r7, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	mov	r4, r0
	ldrb	r0, [r5, #3]
	eor	r6, r7, r6
	bl	_double_byte
	bl	_double_byte
	ldrb	r1, [r5, #3]
	eor	r2, r6, r4
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
	ldrb	r2, [r5]
	ldrb	r1, [r5, #1]
	eor	r0, r0, r4
	eor	r4, r0, r2
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r6, [r5, #1]
	ldrb	r1, [r5, #2]
	eor	r7, r4, r0
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
	ldrb	r1, [r5, #3]
	eor	r2, r4, r6
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
	ldrb	r2, [r5]
	ldrb	r1, [r5, #1]
	eor	r0, r0, r4
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
	ldrb	r6, [r5, #1]
	ldrb	r1, [r5, #2]
	eor	r4, r4, r0
	mov	r0, r1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	ldrb	r2, [r5, #2]
	ldrb	r1, [r5, #3]
	eor	r3, r4, r6
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
