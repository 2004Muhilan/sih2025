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
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
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
	ldrb	r0, [sp, #64]
	ldrb	r5, [sp]
	ldrb	r1, [sp, #65]
	ldrb	r4, [sp, #1]
	eor	r0, r5, r0
	ldrb	r2, [sp, #66]
	ldrb	r3, [sp, #2]
	eor	r1, r4, r1
	strb	r0, [r12]
	eor	r2, r3, r2
	strb	r1, [r12, #1]
	ldrb	r0, [sp, #68]
	ldrb	r1, [sp, #4]
	ldrb	r4, [sp, #69]
	ldrb	r3, [sp, #5]
	eor	r0, r1, r0
	ldrb	lr, [sp, #67]
	ldrb	r6, [sp, #3]
	eor	r3, r3, r4
	strb	r2, [r12, #2]
	eor	r2, r6, lr
	strb	r0, [r12, #4]
	strb	r3, [r12, #5]
	ldrb	r0, [sp, #70]
	ldrb	r3, [sp, #6]
	ldrb	r1, [sp, #71]
	ldrb	r5, [sp, #7]
	eor	r0, r3, r0
	strb	r2, [r12, #3]
	ldrb	r2, [sp, #72]
	eor	r1, r5, r1
	ldrb	r4, [sp, #8]
	strb	r0, [r12, #6]
	eor	r2, r4, r2
	strb	r1, [r12, #7]
	ldrb	r0, [sp, #74]
	ldrb	r1, [sp, #10]
	ldrb	r3, [sp, #75]
	ldrb	r4, [sp, #11]
	eor	r0, r1, r0
	ldrb	lr, [sp, #73]
	eor	r3, r4, r3
	ldrb	r6, [sp, #9]
	strb	r0, [r12, #10]
	strb	r3, [r12, #11]
	ldrb	r0, [sp, #76]
	ldrb	r3, [sp, #12]
	ldrb	r1, [sp, #77]
	ldrb	r5, [sp, #13]
	eor	r0, r3, r0
	strb	r2, [r12, #8]
	eor	r2, r6, lr
	strb	r2, [r12, #9]
	eor	r1, r5, r1
	ldrb	r2, [sp, #78]
	ldrb	r4, [sp, #14]
	strb	r0, [r12, #12]
	strb	r1, [r12, #13]
	eor	r2, r4, r2
	ldrb	r0, [sp, #80]
	ldrb	r1, [sp, #16]
	ldrb	r3, [sp, #81]
	ldrb	r4, [sp, #17]
	eor	r0, r1, r0
	strb	r0, [r12, #16]
	eor	r0, r4, r3
	strb	r0, [r12, #17]
	ldrb	r0, [sp, #82]
	ldrb	r1, [sp, #18]
	ldrb	lr, [sp, #79]
	eor	r0, r1, r0
	strb	r0, [r12, #18]
	ldrb	r0, [sp, #83]
	ldrb	r1, [sp, #19]
	ldrb	r6, [sp, #15]
	eor	r0, r1, r0
	strb	r0, [r12, #19]
	ldrb	r0, [sp, #84]
	ldrb	r1, [sp, #20]
	strb	r2, [r12, #14]
	eor	r2, r6, lr
	eor	r0, r1, r0
	strb	r0, [r12, #20]
	ldrb	r0, [sp, #85]
	ldrb	r1, [sp, #21]
	strb	r2, [r12, #15]
	eor	r0, r1, r0
	strb	r0, [r12, #21]
	ldrb	r0, [sp, #86]
	ldrb	r1, [sp, #22]
	eor	r0, r1, r0
	strb	r0, [r12, #22]
	ldrb	r0, [sp, #87]
	ldrb	r1, [sp, #23]
	eor	r0, r1, r0
	strb	r0, [r12, #23]
	ldrb	r0, [sp, #88]
	ldrb	r1, [sp, #24]
	eor	r0, r1, r0
	strb	r0, [r12, #24]
	ldrb	r0, [sp, #89]
	ldrb	r1, [sp, #25]
	eor	r0, r1, r0
	strb	r0, [r12, #25]
	ldrb	r0, [sp, #90]
	ldrb	r1, [sp, #26]
	eor	r0, r1, r0
	strb	r0, [r12, #26]
	ldrb	r0, [sp, #91]
	ldrb	r1, [sp, #27]
	eor	r0, r1, r0
	strb	r0, [r12, #27]
	ldrb	r0, [sp, #92]
	ldrb	r1, [sp, #28]
	eor	r0, r1, r0
	strb	r0, [r12, #28]
	ldrb	r0, [sp, #93]
	ldrb	r1, [sp, #29]
	eor	r0, r1, r0
	strb	r0, [r12, #29]
	ldrb	r0, [sp, #94]
	ldrb	r1, [sp, #30]
	eor	r0, r1, r0
	strb	r0, [r12, #30]
	ldrb	r0, [sp, #95]
	ldrb	r1, [sp, #31]
	eor	r0, r1, r0
	strb	r0, [r12, #31]
	add	sp, sp, #128
	pop	{r4, r5, r6, pc}
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
