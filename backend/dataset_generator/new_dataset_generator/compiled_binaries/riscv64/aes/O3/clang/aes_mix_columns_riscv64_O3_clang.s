	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.p2align	1
	.type	aes_mix_columns,@function
aes_mix_columns:                        # @aes_mix_columns
	.cfi_startproc
# %bb.0:
	lb	a7, 0(a0)
	lb	t0, 1(a0)
	lb	a5, 2(a0)
	lb	a4, 3(a0)
	slli	a6, a7, 1
	srli	a1, a7, 7
	andi	a1, a1, 27
	xor	a6, a6, a1
	slli	a1, t0, 1
	srli	a2, t0, 7
	andi	a2, a2, 27
	xor	a1, a1, a2
	xor	a2, a5, t0
	xor	a2, a2, a4
	xor	a2, a2, a6
	xor	a2, a2, a1
	sb	a2, 0(a0)
	slli	a2, a5, 1
	srli	a3, a5, 7
	andi	a3, a3, 27
	xor	a2, a2, a3
	xor	a3, a5, a7
	xor	a3, a3, a4
	xor	a1, a1, a3
	xor	a1, a1, a2
	sb	a1, 1(a0)
	slli	a1, a4, 1
	srli	a3, a4, 7
	andi	a3, a3, 27
	xor	a1, a1, a3
	xor	a3, t0, a7
	xor	a4, a4, a3
	xor	a2, a2, a4
	xor	a2, a2, a1
	sb	a2, 2(a0)
	xor	a3, a3, a5
	xor	a2, a3, a6
	xor	a1, a1, a2
	sb	a1, 3(a0)
	lb	a7, 4(a0)
	lb	t0, 5(a0)
	lb	a5, 6(a0)
	lb	a4, 7(a0)
	slli	a6, a7, 1
	srli	a1, a7, 7
	andi	a1, a1, 27
	xor	a6, a6, a1
	slli	a1, t0, 1
	srli	a2, t0, 7
	andi	a2, a2, 27
	xor	a1, a1, a2
	xor	a2, a5, t0
	xor	a2, a2, a4
	xor	a2, a2, a6
	xor	a2, a2, a1
	sb	a2, 4(a0)
	slli	a2, a5, 1
	srli	a3, a5, 7
	andi	a3, a3, 27
	xor	a2, a2, a3
	xor	a3, a5, a7
	xor	a3, a3, a4
	xor	a1, a1, a3
	xor	a1, a1, a2
	sb	a1, 5(a0)
	slli	a1, a4, 1
	srli	a3, a4, 7
	andi	a3, a3, 27
	xor	a1, a1, a3
	xor	a3, t0, a7
	xor	a4, a4, a3
	xor	a2, a2, a4
	xor	a2, a2, a1
	sb	a2, 6(a0)
	xor	a3, a3, a5
	xor	a2, a3, a6
	xor	a1, a1, a2
	sb	a1, 7(a0)
	lb	a7, 8(a0)
	lb	t0, 9(a0)
	lb	a5, 10(a0)
	lb	a4, 11(a0)
	slli	a6, a7, 1
	srli	a1, a7, 7
	andi	a1, a1, 27
	xor	a6, a6, a1
	slli	a1, t0, 1
	srli	a2, t0, 7
	andi	a2, a2, 27
	xor	a1, a1, a2
	xor	a2, a5, t0
	xor	a2, a2, a4
	xor	a2, a2, a6
	xor	a2, a2, a1
	sb	a2, 8(a0)
	slli	a2, a5, 1
	srli	a3, a5, 7
	andi	a3, a3, 27
	xor	a2, a2, a3
	xor	a3, a5, a7
	xor	a3, a3, a4
	xor	a1, a1, a3
	xor	a1, a1, a2
	sb	a1, 9(a0)
	slli	a1, a4, 1
	srli	a3, a4, 7
	andi	a3, a3, 27
	xor	a1, a1, a3
	xor	a3, t0, a7
	xor	a4, a4, a3
	xor	a2, a2, a4
	xor	a2, a2, a1
	sb	a2, 10(a0)
	xor	a3, a3, a5
	xor	a2, a3, a6
	xor	a1, a1, a2
	sb	a1, 11(a0)
	lb	a7, 12(a0)
	lb	t0, 13(a0)
	lb	a5, 14(a0)
	lb	a4, 15(a0)
	slli	a6, a7, 1
	srli	a1, a7, 7
	andi	a1, a1, 27
	xor	a6, a6, a1
	slli	a1, t0, 1
	srli	a2, t0, 7
	andi	a2, a2, 27
	xor	a1, a1, a2
	xor	a2, a5, t0
	xor	a2, a2, a4
	xor	a2, a2, a6
	xor	a2, a2, a1
	sb	a2, 12(a0)
	slli	a2, a5, 1
	srli	a3, a5, 7
	andi	a3, a3, 27
	xor	a2, a2, a3
	xor	a3, a5, a7
	xor	a3, a3, a4
	xor	a1, a1, a3
	xor	a1, a1, a2
	sb	a1, 13(a0)
	slli	a1, a4, 1
	srli	a3, a4, 7
	andi	a3, a3, 27
	xor	a1, a1, a3
	xor	a3, t0, a7
	xor	a4, a4, a3
	xor	a2, a2, a4
	xor	a2, a2, a1
	sb	a2, 14(a0)
	xor	a3, a3, a5
	xor	a2, a3, a6
	xor	a1, a1, a2
	sb	a1, 15(a0)
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
