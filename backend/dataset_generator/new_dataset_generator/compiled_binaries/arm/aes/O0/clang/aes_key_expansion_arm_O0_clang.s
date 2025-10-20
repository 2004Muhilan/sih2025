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
	.pad	#32
	sub	sp, sp, #32
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	movw	r0, #0
	str	r0, [sp, #20]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #20]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #1
	str	r0, [sp, #16]
.LBB0_5:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_7 Depth 2
                                        @     Child Loop BB0_11 Depth 2
	ldr	r0, [sp, #16]
	cmp	r0, #10
	bgt	.LBB0_16
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	movw	r0, #0
	str	r0, [sp, #8]
.LBB0_7:                                @   Parent Loop BB0_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #8]
	cmp	r0, #4
	bge	.LBB0_10
@ %bb.8:                                @   in Loop: Header=BB0_7 Depth=2
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #16]
	sub	r1, r1, #1
	lsl	r1, r1, #4
	add	r1, r1, #12
	ldr	r2, [sp, #8]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r2, [sp, #8]
	add	r1, sp, #12
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.9:                                @   in Loop: Header=BB0_7 Depth=2
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_7
.LBB0_10:                               @   in Loop: Header=BB0_5 Depth=1
	ldrb	r0, [sp, #12]
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #13]
	strb	r0, [sp, #12]
	ldrb	r0, [sp, #14]
	strb	r0, [sp, #13]
	ldrb	r0, [sp, #15]
	strb	r0, [sp, #14]
	ldrb	r0, [sp, #7]
	strb	r0, [sp, #15]
	ldr	r0, [sp, #16]
	sub	r1, r0, #1
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r1, [r0]
	ldrb	r0, [sp, #12]
	eor	r0, r0, r1
	strb	r0, [sp, #12]
	movw	r0, #0
	str	r0, [sp]
.LBB0_11:                               @   Parent Loop BB0_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp]
	cmp	r0, #16
	bge	.LBB0_14
@ %bb.12:                               @   in Loop: Header=BB0_11 Depth=2
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #16]
	ldr	r3, [sp]
	add	r0, r3, r2, lsl #4
	add	r0, r0, r1
	ldrb	r0, [r0, #-16]
	asr	r12, r3, #31
	add	r12, r3, r12, lsr #30
	bic	r12, r12, #3
	sub	r12, r3, r12
	add	r3, sp, #12
	ldrb	r3, [r3, r12]
	eor	r0, r0, r3
	lsl	r2, r2, #4
	ldr	r3, [sp]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.13:                               @   in Loop: Header=BB0_11 Depth=2
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB0_11
.LBB0_14:                               @   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_15
.LBB0_15:                               @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB0_5
.LBB0_16:
	add	sp, sp, #32
	bx	lr
	.p2align	2
@ %bb.17:
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
	.addrsig_sym rcon
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
