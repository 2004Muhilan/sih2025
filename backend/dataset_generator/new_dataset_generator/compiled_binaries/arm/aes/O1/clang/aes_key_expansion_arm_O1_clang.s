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
	mov	r2, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0, r2]
	strb	r3, [r1, r2]
	add	r2, r2, #1
	cmp	r2, #16
	bne	.LBB0_1
@ %bb.2:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	lr, #1
	mov	r2, #0
	ldr	r12, .LCPI0_0
.LPC0_0:
	add	r12, pc, r12
	mov	r3, sp
	mov	r0, r1
.LBB0_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_4 Depth 2
	add	r4, r1, r2, lsl #4
	ldr	r4, [r4, #12]
	add	r5, lr, r12
	ldrb	r5, [r5, #-1]
	str	r4, [sp]
	ldrb	r6, [sp, #1]
	ldrh	r7, [sp, #2]
	strh	r7, [sp, #1]
	strb	r4, [sp, #3]
	eor	r4, r5, r6
	strb	r4, [sp]
	mov	r4, #0
.LBB0_4:                                @   Parent Loop BB0_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r5, r0
	ldrb	r6, [r5, r4]!
	and	r7, r4, #3
	orr	r7, r3, r7
	ldrb	r7, [r7]
	eor	r6, r7, r6
	strb	r6, [r5, #16]
	add	r4, r4, #1
	cmp	r4, #16
	bne	.LBB0_4
@ %bb.5:                                @   in Loop: Header=BB0_3 Depth=1
	add	r0, r0, #16
	add	r2, r2, #1
	add	lr, lr, #1
	cmp	r2, #10
	bne	.LBB0_3
@ %bb.6:
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	2
@ %bb.7:
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
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
