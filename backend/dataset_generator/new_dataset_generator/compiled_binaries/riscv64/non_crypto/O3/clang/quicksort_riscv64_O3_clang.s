	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"quicksort.c"
	.globl	swap                            # -- Begin function swap
	.p2align	1
	.type	swap,@function
swap:                                   # @swap
	.cfi_startproc
# %bb.0:
	lw	a2, 0(a1)
	lw	a3, 0(a0)
	sw	a2, 0(a0)
	sw	a3, 0(a1)
	ret
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cfi_endproc
                                        # -- End function
	.globl	partition                       # -- Begin function partition
	.p2align	1
	.type	partition,@function
partition:                              # @partition
	.cfi_startproc
# %bb.0:
	slli	a3, a2, 2
	add	a7, a0, a3
	lw	a6, 0(a7)
	bge	a1, a2, .LBB1_6
# %bb.1:
	addi	a4, a1, -1
	slli	a1, a1, 2
	add	a1, a1, a0
	j	.LBB1_3
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a1, a1, 4
	beq	a1, a7, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a1)
	bge	a5, a6, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	addiw	a4, a4, 1
	slli	a2, a4, 2
	add	a2, a2, a0
	lw	a3, 0(a2)
	sw	a5, 0(a2)
	sw	a3, 0(a1)
	j	.LBB1_2
.LBB1_5:
	lw	a6, 0(a7)
	addiw	a1, a4, 1
.LBB1_6:
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	sw	a6, 0(a0)
	sw	a2, 0(a7)
	mv	a0, a1
	ret
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.cfi_endproc
                                        # -- End function
	.globl	quicksort                       # -- Begin function quicksort
	.p2align	1
	.type	quicksort,@function
quicksort:                              # @quicksort
	.cfi_startproc
# %bb.0:
	bge	a1, a2, .LBB2_8
# %bb.1:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s2, a2
	mv	s3, a0
	slli	s1, a2, 2
	add	s1, s1, a0
	addi	s4, a0, 4
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	lw	a0, 0(s1)
	slli	a2, s0, 2
	add	a2, a2, s4
	lw	a3, 0(a2)
	sw	a0, 0(a2)
	sw	a3, 0(s1)
	mv	a0, s3
	mv	a2, s0
	call	quicksort
	addiw	a1, s0, 2
	bge	a1, s2, .LBB2_7
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	lw	a0, 0(s1)
	addiw	s0, a1, -1
	slli	a2, a1, 2
	add	a2, a2, s3
	j	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=2
	addi	a2, a2, 4
	beq	a2, s1, .LBB2_2
.LBB2_5:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a2)
	bge	a3, a0, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	addiw	s0, s0, 1
	slli	a4, s0, 2
	add	a4, a4, s3
	lw	a5, 0(a4)
	sw	a3, 0(a4)
	sw	a5, 0(a2)
	j	.LBB2_4
.LBB2_7:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB2_8:
	ret
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
