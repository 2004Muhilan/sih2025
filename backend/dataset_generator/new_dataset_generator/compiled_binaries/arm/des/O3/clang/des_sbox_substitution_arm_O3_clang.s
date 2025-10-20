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
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        @ -- Begin function des_sbox
	.p2align	2
	.type	des_sbox,%function
	.code	32                              @ @des_sbox
des_sbox:
	.fnstart
@ %bb.0:
	mov	r2, #2
	ldr	r1, .LCPI0_0
	and	r2, r2, r0, lsr #4
	and	r3, r0, #1
	orr	r2, r2, r3
.LPC0_0:
	add	r1, pc, r1
	ubfx	r0, r0, #1, #4
	add	r1, r1, r2, lsl #4
	ldrb	r0, [r1, r0]
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	S1-(.LPC0_0+8)
.Lfunc_end0:
	.size	des_sbox, .Lfunc_end0-des_sbox
	.cantunwind
	.fnend
                                        @ -- End function
	.type	S1,%object                      @ @S1
	.section	.rodata,"a",%progbits
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
