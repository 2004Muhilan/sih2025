	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"linked_list_insert.c"
	.globl	linked_list_insert              # -- Begin function linked_list_insert
	.p2align	1
	.type	linked_list_insert,@function
linked_list_insert:                     # @linked_list_insert
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a0, -24(s0)
	ld	a0, 0(a0)
	sd	a0, -40(s0)
	ld	a0, -40(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	j	.LBB0_5
.LBB0_2:
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	ld	a0, 8(a0)
	beqz	a0, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -40(s0)
	ld	a0, 8(a0)
	sd	a0, -40(s0)
	j	.LBB0_3
.LBB0_5:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	linked_list_insert, .Lfunc_end0-linked_list_insert
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
