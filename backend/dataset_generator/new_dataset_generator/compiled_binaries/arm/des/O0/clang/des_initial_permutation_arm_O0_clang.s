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
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         @ -- Begin function des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,%function
	.code	32                              @ @des_initial_permutation
des_initial_permutation:
	.fnstart
@ %bb.0:
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #64
	bge	.LBB0_6
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r2, .LCPI0_0
.LPC0_0:
	add	r2, pc, r2
	ldrb	r2, [r2, r3]
	rsb	r3, r2, #64
	lsr	r0, r0, r3
	rsb	r3, r3, #32
	orr	r0, r0, r1, lsl r3
	rsb	r2, r2, #32
	cmp	r2, #0
	lsrpl	r0, r1, r2
	tst	r0, #1
	beq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #4]
	rsb	r3, r1, #63
	mov	r0, #1
	lsl	r2, r0, r3
	rsb	r1, r1, #31
	cmp	r1, #0
	movwpl	r2, #0
	rsb	r3, r3, #32
	lsr	r3, r0, r3
	cmp	r1, #0
	lslpl	r3, r0, r1
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	orr	r0, r0, r3
	orr	r1, r1, r2
	str	r1, [sp, #8]
	str	r0, [sp, #12]
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	add	sp, sp, #24
	bx	lr
	.p2align	2
@ %bb.7:
.LCPI0_0:
	.long	IP-(.LPC0_0+8)
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cantunwind
	.fnend
                                        @ -- End function
	.type	IP,%object                      @ @IP
	.section	.rodata,"a",%progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym IP
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
