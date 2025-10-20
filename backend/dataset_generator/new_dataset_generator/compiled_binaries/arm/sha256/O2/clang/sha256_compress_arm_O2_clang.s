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
	.file	"sha256_compress.c"
	.globl	sha256_compress                 @ -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,%function
	.code	32                              @ @sha256_compress
sha256_compress:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#300
	sub	sp, sp, #300
	add	lr, sp, #40
	ldm	r1!, {r3, r4, r5, r6, r7}
	mov	r12, lr
	stm	r12!, {r3, r4, r5, r6, r7}
	ldm	r1!, {r3, r4, r5, r6, r7}
	stm	r12!, {r3, r4, r5, r6, r7}
	ldm	r1, {r2, r3, r4, r5, r6, r7}
	mov	r1, #0
	stm	r12, {r2, r3, r4, r5, r6, r7}
	ldr	r3, [sp, #40]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	sub	r4, lr, r1, lsl #2
	sub	r1, r1, #1
	cmn	r1, #48
	ldr	r6, [r4, #56]
	ldr	r2, [r4, #4]
	ldr	r7, [r4, #36]
	ror	r5, r6, #17
	eor	r5, r5, r6, ror #19
	eor	r6, r5, r6, lsr #10
	ror	r5, r2, #7
	eor	r5, r5, r2, ror #18
	eor	r5, r5, r2, lsr #3
	add	r3, r5, r3
	add	r3, r3, r7
	add	r3, r3, r6
	str	r3, [r4, #64]
	mov	r3, r2
	bne	.LBB0_1
@ %bb.2:
	add	r11, r0, #8
	ldr	r4, [r0, #20]
	ldr	r8, [r0, #24]
	mov	r3, #0
	ldr	r9, [r0, #28]
	ldm	r11, {r5, r6, r11}
	ldm	r0, {r2, r7}
	str	r0, [sp, #36]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r7, [sp, #28]                   @ 4-byte Spill
	str	r9, [sp, #4]                    @ 4-byte Spill
	str	r8, [sp, #8]                    @ 4-byte Spill
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r11, [sp, #16]                  @ 4-byte Spill
	str	r6, [sp, #20]                   @ 4-byte Spill
	str	r5, [sp, #24]                   @ 4-byte Spill
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	mov	r12, r5
	mov	r5, r7
	mov	r0, r4
	eor	r4, r5, r12
	mov	r7, r2
	and	r2, r5, r12
	and	r4, r7, r4
	mov	lr, r11
	eor	r2, r4, r2
	ror	r4, r7, #2
	eor	r4, r4, r7, ror #13
	add	r1, sp, #40
	eor	r4, r4, r7, ror #22
	mov	r10, r8
	add	r11, r4, r2
	ror	r2, lr, #6
	eor	r2, r2, lr, ror #11
	and	r4, r0, lr
	eor	r2, r2, lr, ror #25
	ldr	r8, [r1, r3, lsl #2]
	add	r2, r4, r2
	add	r1, r2, r9
	bic	r2, r10, lr
	add	r1, r1, r2
	movw	r2, #12184
	add	r1, r1, r8
	movt	r2, #17034
	add	r1, r1, r2
	add	r3, r3, #1
	add	r2, r11, r1
	add	r11, r1, r6
	cmp	r3, #64
	mov	r9, r10
	mov	r8, r0
	mov	r4, lr
	mov	r6, r12
	bne	.LBB0_3
@ %bb.4:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	add	r8, r10, r1
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	add	r9, r0, r1
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	add	r0, lr, r1
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r3, r11, r1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r6, r12, r1
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	add	r5, r5, r1
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	add	r7, r7, r1
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	add	r4, r2, r1
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	stm	r1, {r4, r7}
	str	r5, [r1, #8]
	str	r6, [r1, #12]
	str	r3, [r1, #16]
	str	r0, [r1, #20]
	str	r9, [r1, #24]
	str	r8, [r1, #28]
	add	sp, sp, #300
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
