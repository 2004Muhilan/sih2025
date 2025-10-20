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
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   @ -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,%function
	.code	32                              @ @aes_sub_bytes
aes_sub_bytes:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldr	r1, .LCPI0_0
	ldrb	r2, [r0, #8]
.LPC0_0:
	add	r1, pc, r1
	ldrb	r3, [r0, #9]
	ldrb	r4, [r0, #2]
	ldrb	r12, [r1, r2]
	ldrb	r2, [r0]
	ldrb	lr, [r1, r3]
	ldrb	r3, [r0, #1]
	ldrb	r2, [r1, r2]
	ldrb	r5, [r0, #3]
	strb	r2, [r0]
	ldrb	r2, [r0, #7]
	ldrb	r3, [r1, r3]
	ldrb	r2, [r1, r2]
	strb	r3, [r0, #1]
	ldrb	r3, [r0, #6]
	ldrb	r4, [r1, r4]
	ldrb	r3, [r1, r3]
	strb	r4, [r0, #2]
	ldrb	r4, [r0, #5]
	ldrb	r5, [r1, r5]
	ldrb	r4, [r1, r4]
	strb	r5, [r0, #3]
	ldrb	r5, [r0, #4]
	ldrb	r5, [r1, r5]
	strb	r2, [r0, #7]
	ldrb	r2, [r0, #10]
	strb	r5, [r0, #4]
	strb	r4, [r0, #5]
	strb	r3, [r0, #6]
	strb	r12, [r0, #8]
	strb	lr, [r0, #9]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #10]
	ldrb	r2, [r0, #11]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #11]
	ldrb	r2, [r0, #12]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #12]
	ldrb	r2, [r0, #13]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #13]
	ldrb	r2, [r0, #14]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #14]
	ldrb	r2, [r0, #15]
	ldrb	r1, [r1, r2]
	strb	r1, [r0, #15]
	pop	{r4, r5, r11, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	sbox-(.LPC0_0+8)
.Lfunc_end0:
	.size	aes_sub_bytes, .Lfunc_end0-aes_sub_bytes
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	aes_inv_sub_bytes               @ -- Begin function aes_inv_sub_bytes
	.p2align	2
	.type	aes_inv_sub_bytes,%function
	.code	32                              @ @aes_inv_sub_bytes
aes_inv_sub_bytes:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldr	r1, .LCPI1_0
	ldrb	r2, [r0, #8]
.LPC1_0:
	add	r1, pc, r1
	ldrb	r3, [r0, #9]
	ldrb	r4, [r0, #2]
	ldrb	r12, [r1, r2]
	ldrb	r2, [r0]
	ldrb	lr, [r1, r3]
	ldrb	r3, [r0, #1]
	ldrb	r2, [r1, r2]
	ldrb	r5, [r0, #3]
	strb	r2, [r0]
	ldrb	r2, [r0, #7]
	ldrb	r3, [r1, r3]
	ldrb	r2, [r1, r2]
	strb	r3, [r0, #1]
	ldrb	r3, [r0, #6]
	ldrb	r4, [r1, r4]
	ldrb	r3, [r1, r3]
	strb	r4, [r0, #2]
	ldrb	r4, [r0, #5]
	ldrb	r5, [r1, r5]
	ldrb	r4, [r1, r4]
	strb	r5, [r0, #3]
	ldrb	r5, [r0, #4]
	ldrb	r5, [r1, r5]
	strb	r2, [r0, #7]
	ldrb	r2, [r0, #10]
	strb	r5, [r0, #4]
	strb	r4, [r0, #5]
	strb	r3, [r0, #6]
	strb	r12, [r0, #8]
	strb	lr, [r0, #9]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #10]
	ldrb	r2, [r0, #11]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #11]
	ldrb	r2, [r0, #12]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #12]
	ldrb	r2, [r0, #13]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #13]
	ldrb	r2, [r0, #14]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #14]
	ldrb	r2, [r0, #15]
	ldrb	r1, [r1, r2]
	strb	r1, [r0, #15]
	pop	{r4, r5, r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	aes_inv_sub_bytes.inv_sbox-(.LPC1_0+8)
.Lfunc_end1:
	.size	aes_inv_sub_bytes, .Lfunc_end1-aes_inv_sub_bytes
	.cantunwind
	.fnend
                                        @ -- End function
	.type	aes_inv_sub_bytes.inv_sbox,%object @ @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",%progbits
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.zero	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,%object                    @ @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
