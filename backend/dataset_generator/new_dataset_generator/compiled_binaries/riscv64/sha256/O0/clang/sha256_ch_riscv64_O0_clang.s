	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_ch.c"
	.globl	sha256_ch                       # -- Begin function sha256_ch
	.p2align	1
	.type	sha256_ch,@function
sha256_ch:                              # @sha256_ch
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	sw	a2, -28(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	and	a0, a0, a1
	not	a1, a1
	lw	a2, -28(s0)
	and	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	sha256_ch, .Lfunc_end0-sha256_ch
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
