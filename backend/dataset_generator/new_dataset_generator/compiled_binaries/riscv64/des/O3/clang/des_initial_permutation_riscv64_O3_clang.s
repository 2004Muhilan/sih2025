	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         # -- Begin function des_initial_permutation
	.p2align	1
	.type	des_initial_permutation,@function
des_initial_permutation:                # @des_initial_permutation
	.cfi_startproc
# %bb.0:
	li	a4, 0
	li	a1, 0
.Lpcrel_hi0:
	auipc	a3, %pcrel_hi(IP)
	addi	a3, a3, %pcrel_lo(.Lpcrel_hi0)
	li	a6, 1
	li	a7, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a2, a3, a4
	lbu	a2, 0(a2)
	negw	a2, a2
	srl	a2, a0, a2
	slli	a2, a2, 63
	srai	a2, a2, 63
	xori	a5, a4, 63
	sll	a5, a6, a5
	and	a2, a2, a5
	addi	a4, a4, 1
	or	a1, a1, a2
	bne	a4, a7, .LBB0_1
# %bb.2:
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        # -- End function
	.type	IP,@object                      # @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
