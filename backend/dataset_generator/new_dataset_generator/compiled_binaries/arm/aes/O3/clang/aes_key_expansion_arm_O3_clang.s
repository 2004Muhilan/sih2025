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
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               @ -- Begin function aes_key_expansion
	.p2align	2
	.type	aes_key_expansion,%function
	.code	32                              @ @aes_key_expansion
aes_key_expansion:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	ldrb	r2, [r0]
	strb	r2, [r1]
	ldrb	r2, [r0, #1]
	strb	r2, [r1, #1]
	ldrb	r2, [r0, #2]
	strb	r2, [r1, #2]
	ldrb	r2, [r0, #3]
	strb	r2, [r1, #3]
	ldrb	r2, [r0, #4]
	strb	r2, [r1, #4]
	ldrb	r2, [r0, #5]
	strb	r2, [r1, #5]
	ldrb	r2, [r0, #6]
	strb	r2, [r1, #6]
	ldrb	r2, [r0, #7]
	strb	r2, [r1, #7]
	ldrb	r2, [r0, #8]
	strb	r2, [r1, #8]
	ldrb	r2, [r0, #9]
	strb	r2, [r1, #9]
	ldrb	r2, [r0, #10]
	strb	r2, [r1, #10]
	ldrb	r2, [r0, #11]
	strb	r2, [r1, #11]
	ldrb	r2, [r0, #12]
	strb	r2, [r1, #12]
	ldrb	r2, [r0, #13]
	strb	r2, [r1, #13]
	ldrb	r2, [r0, #14]
	ldr	r12, .LCPI0_0
	strb	r2, [r1, #14]
	ldrb	r0, [r0, #15]
.LPC0_0:
	add	r12, pc, r12
	strb	r0, [r1, #15]
	mov	r0, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	mov	r3, r1
	ldrb	r8, [r3, r0]!
	add	r0, r0, #16
	cmp	r0, #160
	ldrb	r4, [r3, #1]
	ldrb	r2, [r3, #14]
	ldrb	r6, [r3, #2]
	eor	r4, r2, r4
	ldrb	lr, [r3, #15]
	strb	r4, [r3, #17]
	ldrb	r7, [r3, #3]
	eor	r6, lr, r6
	ldrb	r4, [r3, #12]
	strb	r6, [r3, #18]
	eor	r6, r4, r7
	ldrb	r7, [r3, #5]
	strb	r6, [r3, #19]
	eor	r6, r2, r7
	ldrb	r7, [r3, #6]
	strb	r6, [r3, #21]
	eor	r6, lr, r7
	strb	r6, [r3, #22]
	ldrb	r6, [r12], #1
	ldrb	r7, [r3, #13]
	ldrb	r5, [r3, #4]
	eor	r6, r6, r7
	ldrb	r9, [r3, #10]
	eor	r5, r6, r5
	eor	r7, r6, r8
	strb	r5, [r3, #20]
	ldrb	r5, [r3, #7]
	strb	r7, [r3, #16]
	ldrb	r7, [r3, #8]
	eor	r5, r4, r5
	ldrb	r8, [r3, #9]
	strb	r5, [r3, #23]
	eor	r5, r6, r7
	strb	r5, [r3, #24]
	eor	r5, r2, r8
	strb	r5, [r3, #25]
	eor	r5, lr, r9
	strb	r5, [r3, #26]
	ldrb	r5, [r3, #11]
	eor	r5, r4, r5
	strb	r5, [r3, #27]
	ldrb	r5, [r3, #12]
	eor	r5, r6, r5
	ldrb	r6, [r3, #13]
	strb	r5, [r3, #28]
	ldrb	r5, [r3, #14]
	eor	r2, r2, r6
	ldrb	r6, [r3, #15]
	strb	r2, [r3, #29]
	eor	r2, lr, r5
	strb	r2, [r3, #30]
	eor	r2, r4, r6
	strb	r2, [r3, #31]
	bne	.LBB0_1
@ %bb.2:
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	2
@ %bb.3:
.LCPI0_0:
	.long	rcon-(.LPC0_0+8)
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cantunwind
	.fnend
                                        @ -- End function
	.type	rcon,%object                    @ @rcon
	.section	.rodata,"a",%progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
