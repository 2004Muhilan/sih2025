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
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     @ -- Begin function hmac_sha256
	.p2align	2
	.type	hmac_sha256,%function
	.code	32                              @ @hmac_sha256
hmac_sha256:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.pad	#128
	sub	sp, sp, #128
	ldr	r12, [sp, #144]
	add	r2, sp, #64
	mov	r3, #0
	mov	lr, sp
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	cmp	r3, r1
	mov	r5, #0
	ldrblo	r5, [r0, r3]
	mov	r4, #54
	eorlo	r4, r5, #54
	eor	r5, r5, #92
	strb	r5, [lr, r3]
	strb	r4, [r2, r3]
	add	r3, r3, #1
	cmp	r3, #64
	bne	.LBB0_1
@ %bb.2:
	mov	r0, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r2, r0]
	ldrb	r3, [lr, r0]
	eor	r1, r3, r1
	strb	r1, [r12, r0]
	add	r0, r0, #1
	cmp	r0, #32
	bne	.LBB0_3
@ %bb.4:
	add	sp, sp, #128
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
