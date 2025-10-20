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
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a1)
	bge	a5, a6, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addiw	a4, a4, 1
	slli	a2, a4, 2
	add	a2, a2, a0
	lw	a3, 0(a2)
	sw	a5, 0(a2)
	sw	a3, 0(a1)
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	addi	a1, a1, 4
	bne	a1, a7, .LBB1_2
# %bb.5:
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
	bge	a1, a2, .LBB2_4
# %bb.1:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s2, a2
	mv	s0, a1
	mv	s3, a0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s3
	mv	a1, s0
	mv	a2, s2
	call	partition
	mv	s1, a0
	addiw	a2, a0, -1
	mv	a0, s3
	mv	a1, s0
	call	quicksort
	addiw	s0, s1, 1
	blt	s0, s2, .LBB2_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB2_4:
	ret
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
