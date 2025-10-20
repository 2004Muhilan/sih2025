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
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   @ -- Begin function rc4_drop_init
	.p2align	2
	.type	rc4_drop_init,%function
	.code	32                              @ @rc4_drop_init
rc4_drop_init:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#48
	sub	sp, sp, #48
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	movw	r0, #0
	str	r0, [r11, #-20]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #256
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-20]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-20]
	add	r0, r0, #1
	str	r0, [r11, #-20]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #0
	strb	r0, [r11, #-21]
	movw	r0, #0
	str	r0, [sp, #20]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #256
	bge	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldrb	r1, [r11, #-21]
	ldr	r2, [r11, #-4]
	ldr	r0, [sp, #20]
	ldrb	r2, [r2, r0]
	add	r1, r1, r2
	str	r1, [sp]                        @ 4-byte Spill
	ldr	r1, [r11, #-8]
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r11, #-12]
	bl	__aeabi_uidivmod
                                        @ kill: def $r2 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldrb	r1, [r1, r2]
	add	r0, r0, r1
	uxtb	r0, r0
	strb	r0, [r11, #-21]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #19]
	ldr	r0, [r11, #-4]
	ldrb	r1, [r11, #-21]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #20]
	add	r1, r1, r2
	strb	r0, [r1]
	ldrb	r0, [sp, #19]
	ldr	r1, [r11, #-4]
	ldrb	r2, [r11, #-21]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_5
.LBB0_8:
	ldr	r1, [r11, #-4]
	movw	r0, #0
	strb	r0, [r1, #256]
	ldr	r1, [r11, #-4]
	movw	r0, #0
	strb	r0, [r1, #257]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bhs	.LBB0_12
@ %bb.10:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [r11, #-4]
	ldrb	r0, [r1, #256]
	add	r0, r0, #1
	strb	r0, [r1, #256]
	ldr	r1, [r11, #-4]
	ldrb	r2, [r1, #256]
	ldrb	r0, [r1, #257]
	ldrb	r1, [r1, r2]
	add	r0, r0, r1
	uxtb	r0, r0
	ldr	r1, [r11, #-4]
	strb	r0, [r1, #257]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldrb	r1, [r1, #256]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #11]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldrb	r1, [r1, #257]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-4]
	ldrb	r2, [r2, #256]
	add	r1, r1, r2
	strb	r0, [r1]
	ldrb	r0, [sp, #11]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-4]
	ldrb	r2, [r2, #257]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.11:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_9
.LBB0_12:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_drop_crypt                  @ -- Begin function rc4_drop_crypt
	.p2align	2
	.type	rc4_drop_crypt,%function
	.code	32                              @ @rc4_drop_crypt
rc4_drop_crypt:
	.fnstart
@ %bb.0:
	.pad	#20
	sub	sp, sp, #20
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bhs	.LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r1, [sp, #16]
	ldrb	r0, [r1, #256]
	add	r0, r0, #1
	strb	r0, [r1, #256]
	ldr	r1, [sp, #16]
	ldrb	r2, [r1, #256]
	ldrb	r0, [r1, #257]
	ldrb	r2, [r1, r2]
	add	r0, r0, r2
	strb	r0, [r1, #257]
	ldr	r0, [sp, #16]
	ldrb	r1, [r0, #256]
	ldrb	r0, [r0, r1]
	strb	r0, [sp, #3]
	ldr	r1, [sp, #16]
	ldrb	r2, [r1, #256]
	ldrb	r0, [r1, #257]
	ldrb	r0, [r1, r0]
	strb	r0, [r1, r2]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #16]
	ldrb	r2, [r1, #257]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #16]
	ldrb	r1, [r0, #256]
	ldrb	r2, [r0, #257]
	ldrb	r1, [r0, r1]
	ldrb	r2, [r0, r2]
	add	r1, r1, r2
	uxtb	r1, r1
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #2]
	ldrb	r2, [sp, #2]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	add	r1, r0, r1
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB1_1
.LBB1_4:
	add	sp, sp, #20
	bx	lr
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rc4_drop_encrypt                @ -- Begin function rc4_drop_encrypt
	.p2align	2
	.type	rc4_drop_encrypt,%function
	.code	32                              @ @rc4_drop_encrypt
rc4_drop_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#280
	sub	sp, sp, #280
	ldr	r12, [r11, #8]
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [r11, #-24]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	add	r0, sp, #6
	movw	r3, #768
	bl	rc4_drop_init
	ldr	r0, [r11, #8]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-24]
	bl	memcpy
	ldr	r1, [r11, #8]
	ldr	r2, [r11, #-24]
	add	r0, sp, #6
	bl	rc4_drop_crypt
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym rc4_drop_init
	.addrsig_sym rc4_drop_crypt
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
