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
	.file	"custom_des.c"
	.globl	des_encrypt                     @ -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,%function
	.code	32                              @ @des_encrypt
des_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	mov	r12, #0
	mov	r3, #56
	mov	lr, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r0], #1
	subs	r6, r3, #32
	lsl	r5, r4, r3
	movwpl	r5, #0
	orr	r12, r5, r12
	rsb	r5, r3, #32
	sub	r3, r3, #8
	lsr	r5, r4, r5
	lslpl	r5, r4, r6
	orr	lr, r5, lr
	cmn	r3, #8
	bne	.LBB0_1
@ %bb.2:
	mov	r3, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	and	r6, r3, #7
	eor	r5, lr, r12
	mov	r0, r12
	add	r3, r3, #1
	ldrb	r6, [r1, r6]
	cmp	r3, #16
	mov	lr, r0
	eor	r12, r5, r6
	bne	.LBB0_3
@ %bb.4:
	mov	r1, #56
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	rsb	r6, r1, #32
	lsr	r3, r12, r1
	orr	r3, r3, r0, lsl r6
	subs	r6, r1, #32
	sub	r1, r1, #8
	lsrpl	r3, r0, r6
	cmn	r1, #8
	strb	r3, [r2], #1
	bne	.LBB0_5
@ %bb.6:
	pop	{r4, r5, r6, pc}
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
