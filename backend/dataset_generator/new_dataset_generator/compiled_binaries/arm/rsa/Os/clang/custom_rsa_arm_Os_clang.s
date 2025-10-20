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
	.file	"custom_rsa.c"
	.globl	mod_exp                         @ -- Begin function mod_exp
	.p2align	2
	.type	mod_exp,%function
	.code	32                              @ @mod_exp
mod_exp:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r2
	orrs	r2, r2, r3
	beq	.LBB0_5
@ %bb.1:
	ldr	r8, [sp, #44]
	mov	r4, r3
	ldr	r9, [sp, #40]
	mov	r10, #0
	mov	r11, #1
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r6, r2
	mov	r7, r3
	tst	r5, #1
	beq	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_2 Depth=1
	umull	r0, r1, r6, r11
	mov	r2, r9
	mov	r3, r8
	mla	r1, r6, r10, r1
	mla	r1, r7, r11, r1
	bl	__aeabi_uldivmod
	mov	r11, r2
	mov	r10, r3
.LBB0_4:                                @   in Loop: Header=BB0_2 Depth=1
	umull	r0, r1, r6, r6
	lsrs	r4, r4, #1
	rrx	r5, r5
	orrs	r2, r5, r4
	mla	r1, r6, r7, r1
	mla	r1, r6, r7, r1
	bne	.LBB0_2
	b	.LBB0_6
.LBB0_5:
	mov	r10, #0
	mov	r11, #1
.LBB0_6:
	mov	r0, r11
	mov	r1, r10
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	mod_exp, .Lfunc_end0-mod_exp
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	extended_gcd                    @ -- Begin function extended_gcd
	.p2align	2
	.type	extended_gcd,%function
	.code	32                              @ @extended_gcd
extended_gcd:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#28
	sub	sp, sp, #28
	ldr	r10, [sp, #68]
	mov	r7, r0
	ldr	r11, [sp, #64]
	mov	r8, r3
	mov	r5, r2
	orrs	r0, r0, r1
	beq	.LBB1_2
@ %bb.1:
	mov	r6, r1
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_ldivmod
	mov	r4, r0
	umull	r0, r2, r0, r7
	mov	r9, r1
	add	r1, sp, #8
	mla	r2, r4, r6, r2
	add	r3, sp, #16
	str	r3, [sp]
	subs	r0, r5, r0
	str	r1, [sp, #4]
	mla	r2, r9, r7, r2
	mov	r3, r6
	sbc	r1, r8, r2
	mov	r2, r7
	bl	extended_gcd
	mov	r5, r0
	ldr	r0, [sp, #16]
	mov	r8, r1
	ldr	r1, [sp, #20]
	ldr	r7, [sp, #8]
	umull	r2, r3, r0, r4
	ldr	r6, [sp, #12]
	mla	r3, r0, r9, r3
	subs	r2, r7, r2
	mla	r3, r1, r4, r3
	sbc	r3, r6, r3
	b	.LBB1_3
.LBB1_2:
	mov	r2, #0
	mov	r0, #1
	mov	r3, #0
	mov	r1, #0
.LBB1_3:
	strd	r2, r3, [r11]
	strd	r0, r1, [r10]
	mov	r0, r5
	mov	r1, r8
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end1:
	.size	extended_gcd, .Lfunc_end1-extended_gcd
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rsa_encrypt                     @ -- Begin function rsa_encrypt
	.p2align	2
	.type	rsa_encrypt,%function
	.code	32                              @ @rsa_encrypt
rsa_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r2
	orrs	r2, r2, r3
	beq	.LBB2_5
@ %bb.1:
	ldr	r8, [sp, #44]
	mov	r4, r3
	ldr	r9, [sp, #40]
	mov	r10, #0
	mov	r11, #1
.LBB2_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r6, r2
	mov	r7, r3
	tst	r5, #1
	beq	.LBB2_4
@ %bb.3:                                @   in Loop: Header=BB2_2 Depth=1
	umull	r0, r1, r6, r11
	mov	r2, r9
	mov	r3, r8
	mla	r1, r6, r10, r1
	mla	r1, r7, r11, r1
	bl	__aeabi_uldivmod
	mov	r11, r2
	mov	r10, r3
.LBB2_4:                                @   in Loop: Header=BB2_2 Depth=1
	umull	r0, r1, r6, r6
	lsrs	r4, r4, #1
	rrx	r5, r5
	orrs	r2, r5, r4
	mla	r1, r6, r7, r1
	mla	r1, r6, r7, r1
	bne	.LBB2_2
	b	.LBB2_6
.LBB2_5:
	mov	r10, #0
	mov	r11, #1
.LBB2_6:
	mov	r0, r11
	mov	r1, r10
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	rsa_encrypt, .Lfunc_end2-rsa_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rsa_decrypt                     @ -- Begin function rsa_decrypt
	.p2align	2
	.type	rsa_decrypt,%function
	.code	32                              @ @rsa_decrypt
rsa_decrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r2
	orrs	r2, r2, r3
	beq	.LBB3_5
@ %bb.1:
	ldr	r8, [sp, #44]
	mov	r4, r3
	ldr	r9, [sp, #40]
	mov	r10, #0
	mov	r11, #1
.LBB3_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r6, r2
	mov	r7, r3
	tst	r5, #1
	beq	.LBB3_4
@ %bb.3:                                @   in Loop: Header=BB3_2 Depth=1
	umull	r0, r1, r6, r11
	mov	r2, r9
	mov	r3, r8
	mla	r1, r6, r10, r1
	mla	r1, r7, r11, r1
	bl	__aeabi_uldivmod
	mov	r11, r2
	mov	r10, r3
.LBB3_4:                                @   in Loop: Header=BB3_2 Depth=1
	umull	r0, r1, r6, r6
	lsrs	r4, r4, #1
	rrx	r5, r5
	orrs	r2, r5, r4
	mla	r1, r6, r7, r1
	mla	r1, r6, r7, r1
	bne	.LBB3_2
	b	.LBB3_6
.LBB3_5:
	mov	r10, #0
	mov	r11, #1
.LBB3_6:
	mov	r0, r11
	mov	r1, r10
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
