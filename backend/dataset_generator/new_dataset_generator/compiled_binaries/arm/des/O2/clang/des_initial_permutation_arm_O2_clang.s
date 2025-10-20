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
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	ldr	lr, .LCPI0_0
	mov	r2, #0
	mov	r4, #1
	mov	r12, #0
.LPC0_0:
	add	lr, pc, lr
	mov	r3, #0
	b	.LBB0_2
.LBB0_1:                                @   in Loop: Header=BB0_2 Depth=1
	add	r2, r2, #1
	cmp	r2, #64
	beq	.LBB0_4
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r5, [lr, r2]
	rsb	r6, r5, #64
	rsbs	r5, r5, #32
	lsr	r7, r0, r6
	rsb	r6, r6, #32
	orr	r6, r7, r1, lsl r6
	lsrpl	r6, r1, r5
	tst	r6, #1
	beq	.LBB0_1
@ %bb.3:                                @   in Loop: Header=BB0_2 Depth=1
	eor	r5, r2, #63
	subs	r7, r5, #32
	lsl	r6, r4, r5
	rsb	r5, r5, #32
	movwpl	r6, #0
	orr	r12, r6, r12
	lsr	r5, r4, r5
	lslpl	r5, r4, r7
	orr	r3, r5, r3
	b	.LBB0_1
.LBB0_4:
	mov	r0, r12
	mov	r1, r3
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	2
@ %bb.5:
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
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
