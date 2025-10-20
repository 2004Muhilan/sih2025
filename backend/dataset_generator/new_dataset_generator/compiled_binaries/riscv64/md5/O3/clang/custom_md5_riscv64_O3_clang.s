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
	lw	a6, 0(a0)
	lw	t1, 4(a0)
	lw	t0, 8(a0)
	lw	a7, 12(a0)
	addi	a1, a1, 3
	mv	a5, sp
	addi	t2, sp, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	t3, -2(a1)
	lbu	a4, -3(a1)
	lbu	a2, -1(a1)
	lbu	a3, 0(a1)
	slli	t3, t3, 8
	or	a4, t3, a4
	slli	a2, a2, 16
	slli	a3, a3, 24
	or	a2, a2, a3
	or	a2, a2, a4
	sw	a2, 0(a5)
	addi	a5, a5, 4
	addi	a1, a1, 4
	bne	a5, t2, .LBB0_1
# %bb.2:
	and	a1, t1, t0
	not	a2, t1
	lw	a3, 0(sp)
	and	a2, a7, a2
	or	a1, a1, a2
	add	a1, a1, a6
	add	a1, a1, a3
	srliw	a2, a1, 25
	slli	a1, a1, 7
	or	a1, a1, a2
	add	a1, a1, t1
	and	a2, a1, t1
	lw	a3, 4(sp)
	not	a4, a1
	and	a4, t0, a4
	or	a2, a2, a4
	add	a3, a3, a7
	add	a2, a2, a3
	srliw	a3, a2, 25
	slli	a2, a2, 7
	or	a2, a2, a3
	add	a2, a2, a1
	and	a3, a2, a1
	lw	a4, 8(sp)
	not	a5, a2
	and	a5, t1, a5
	or	a3, a3, a5
	add	a4, a4, t0
	add	a3, a3, a4
	srliw	a4, a3, 25
	slli	a3, a3, 7
	or	a3, a3, a4
	add	a3, a3, a2
	and	t2, a3, a2
	lw	a5, 12(sp)
	not	a4, a3
	and	a4, a4, a1
	or	a4, t2, a4
	add	a5, a5, t1
	add	a4, a4, a5
	srliw	a5, a4, 25
	slli	a4, a4, 7
	or	a4, a4, a5
	add	a4, a4, a3
	and	t2, a4, a3
	lw	t3, 16(sp)
	not	a5, a4
	and	a5, a5, a2
	or	a5, t2, a5
	add	a1, a1, t3
	add	a1, a1, a5
	srliw	a5, a1, 25
	slli	a1, a1, 7
	or	a1, a1, a5
	add	a1, a1, a4
	and	t2, a1, a4
	lw	t3, 20(sp)
	not	a5, a1
	and	a5, a5, a3
	or	a5, t2, a5
	add	a2, a2, t3
	add	a2, a2, a5
	srliw	a5, a2, 25
	slli	a2, a2, 7
	or	a2, a2, a5
	add	a2, a2, a1
	and	t2, a2, a1
	lw	t3, 24(sp)
	not	a5, a2
	and	a5, a5, a4
	or	a5, t2, a5
	add	a3, a3, t3
	add	a3, a3, a5
	srliw	a5, a3, 25
	slli	a3, a3, 7
	or	a3, a3, a5
	add	a3, a3, a2
	and	t2, a3, a2
	lw	t3, 28(sp)
	not	a5, a3
	and	a5, a5, a1
	or	a5, t2, a5
	add	a4, a4, t3
	add	a4, a4, a5
	srliw	a5, a4, 25
	slli	a4, a4, 7
	or	a4, a4, a5
	add	a4, a4, a3
	and	t2, a4, a3
	lw	t3, 32(sp)
	not	a5, a4
	and	a5, a5, a2
	or	a5, t2, a5
	add	a1, a1, t3
	add	a1, a1, a5
	srliw	a5, a1, 25
	slli	a1, a1, 7
	or	a1, a1, a5
	add	a1, a1, a4
	and	t2, a1, a4
	lw	t3, 36(sp)
	not	a5, a1
	and	a5, a5, a3
	or	a5, t2, a5
	add	a2, a2, t3
	add	a2, a2, a5
	srliw	a5, a2, 25
	slli	a2, a2, 7
	or	a2, a2, a5
	add	a2, a2, a1
	and	t2, a2, a1
	lw	t3, 40(sp)
	not	a5, a2
	and	a5, a5, a4
	or	a5, t2, a5
	add	a3, a3, t3
	add	a3, a3, a5
	srliw	a5, a3, 25
	slli	a3, a3, 7
	or	a3, a3, a5
	add	a3, a3, a2
	and	t2, a3, a2
	lw	t3, 44(sp)
	not	a5, a3
	and	a5, a5, a1
	or	a5, t2, a5
	add	a4, a4, t3
	add	a4, a4, a5
	srliw	a5, a4, 25
	slli	a4, a4, 7
	or	a4, a4, a5
	add	a4, a4, a3
	and	t2, a4, a3
	lw	t3, 48(sp)
	not	a5, a4
	and	a5, a5, a2
	or	a5, t2, a5
	add	a1, a1, t3
	add	a1, a1, a5
	srliw	a5, a1, 25
	slli	a1, a1, 7
	or	a1, a1, a5
	add	a1, a1, a4
	and	t2, a1, a4
	lw	t3, 52(sp)
	not	a5, a1
	and	a5, a5, a3
	or	a5, t2, a5
	add	a2, a2, t3
	add	a2, a2, a5
	srliw	a5, a2, 25
	slli	a2, a2, 7
	or	a2, a2, a5
	add	a2, a2, a1
	and	t2, a2, a1
	lw	t3, 56(sp)
	not	a5, a2
	and	a5, a5, a4
	or	a5, t2, a5
	add	a3, a3, t3
	add	a3, a3, a5
	srliw	a5, a3, 25
	slli	a3, a3, 7
	or	a3, a3, a5
	add	a3, a3, a2
	and	t2, a3, a2
	lw	t3, 60(sp)
	not	a5, a3
	and	a5, a5, a1
	or	a5, t2, a5
	add	a4, a4, t3
	add	a4, a4, a5
	srliw	a5, a4, 25
	slli	a4, a4, 7
	or	a4, a4, a5
	add	a1, a1, a6
	sw	a1, 0(a0)
	add	t1, t1, a3
	add	a4, a4, t1
	sw	a4, 4(a0)
	add	a3, a3, t0
	sw	a3, 8(a0)
	add	a2, a2, a7
	sw	a2, 12(a0)
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
