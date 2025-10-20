	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.p2align	1
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	addi	t0, a1, 16
	mv	a2, a1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	sb	a3, 0(a2)
	addi	a2, a2, 1
	addi	a0, a0, 1
	bne	a2, t0, .LBB0_1
# %bb.2:
	li	t3, 0
	li	t1, 1
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(rcon)
	addi	a6, a2, %pcrel_lo(.Lpcrel_hi0)
	addi	t6, sp, 12
	li	a4, 16
	li	a7, 10
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	li	a5, 0
	slli	a3, t3, 4
	add	a3, a3, a1
	lbu	t2, 13(a3)
	lbu	a0, 12(a3)
	lbu	t4, 14(a3)
	lb	a3, 15(a3)
	slli	t2, t2, 8
	or	t2, t2, a0
	slli	t4, t4, 16
	slli	a3, a3, 24
	or	a3, a3, t4
	or	a3, a3, t2
	sw	a3, 12(sp)
	lbu	t2, 13(sp)
	lbu	t5, 14(sp)
	lbu	t4, 15(sp)
	add	a3, t1, a6
	lbu	a3, -1(a3)
	sb	t5, 13(sp)
	sb	t4, 14(sp)
	sb	a0, 15(sp)
	xor	a0, a3, t2
	sb	a0, 12(sp)
	mv	a3, t0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, -16(a3)
	andi	a2, a5, 3
	or	a2, t6, a2
	lbu	a2, 0(a2)
	xor	a0, a0, a2
	sb	a0, 0(a3)
	addi	a5, a5, 1
	addi	a3, a3, 1
	bne	a5, a4, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addi	t1, t1, 1
	addi	t3, t3, 1
	addi	t0, t0, 16
	bne	t3, a7, .LBB0_3
# %bb.6:
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
