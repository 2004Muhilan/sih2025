	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        # -- Begin function des_sbox
	.p2align	1
	.type	des_sbox,@function
des_sbox:                               # @des_sbox
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
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sb	a0, -17(s0)
	sw	a1, -24(s0)
	lbu	a1, -17(s0)
	andi	a0, a1, 32
	srli	a0, a0, 4
	andi	a1, a1, 1
	or	a0, a0, a1
	sw	a0, -28(s0)
	lbu	a0, -17(s0)
	slli	a0, a0, 59
	srli	a0, a0, 60
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	slli	a1, a0, 4
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(S1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	add	a0, a0, a1
	lw	a1, -32(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	des_sbox, .Lfunc_end0-des_sbox
	.cfi_endproc
                                        # -- End function
	.type	S1,@object                      # @S1
	.section	.rodata,"a",@progbits
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym S1
