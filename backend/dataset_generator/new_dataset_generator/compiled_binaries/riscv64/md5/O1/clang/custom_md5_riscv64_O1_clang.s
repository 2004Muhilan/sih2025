	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	1
	.type	md5_transform,@function
md5_transform:                          # @md5_transform
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	lw	t1, 0(a0)
	lw	t0, 4(a0)
	lw	a7, 8(a0)
	lw	a6, 12(a0)
	addi	a2, a1, 3
	mv	a3, sp
	addi	t2, sp, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	t3, -2(a2)
	lbu	a4, -3(a2)
	lbu	a5, -1(a2)
	lbu	a1, 0(a2)
	slli	t3, t3, 8
	or	a4, t3, a4
	slli	a5, a5, 16
	slli	a1, a1, 24
	or	a1, a1, a5
	or	a1, a1, a4
	sw	a1, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, t2, .LBB0_1
# %bb.2:
	mv	a2, sp
	mv	t3, t1
	mv	a1, t0
	mv	a4, a6
	mv	a3, a7
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	mv	t4, a3
	mv	a5, a4
	mv	a3, a1
	and	t5, a1, t4
	not	a4, a1
	lw	a1, 0(a2)
	and	a4, a4, a5
	or	a4, t5, a4
	add	a4, a4, t3
	add	a1, a1, a4
	srliw	a4, a1, 25
	slli	a1, a1, 7
	or	a1, a1, a4
	addi	a2, a2, 4
	add	a1, a1, a3
	mv	t3, a5
	mv	a4, t4
	bne	a2, t2, .LBB0_3
# %bb.4:
	add	a5, a5, t1
	sw	a5, 0(a0)
	add	a1, a1, t0
	sw	a1, 4(a0)
	add	a3, a3, a7
	sw	a3, 8(a0)
	add	a6, a6, t4
	sw	a6, 12(a0)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        # -- End function
	.globl	md5_init                        # -- Begin function md5_init
	.p2align	1
	.type	md5_init,@function
md5_init:                               # @md5_init
	.cfi_startproc
# %bb.0:
	lui	a1, 422994
	addi	a1, a1, 769
	sw	a1, 0(a0)
	lui	a1, 982235
	addi	a1, a1, -1143
	sw	a1, 4(a0)
	lui	a1, 625582
	addi	a1, a1, -770
	sw	a1, 8(a0)
	lui	a1, 66341
	addi	a1, a1, 1142
	sw	a1, 12(a0)
	ret
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
