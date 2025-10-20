	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_rsa.c"
	.globl	mod_exp                         # -- Begin function mod_exp
	.p2align	1
	.type	mod_exp,@function
mod_exp:                                # @mod_exp
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	li	a0, 1
	sd	a0, -48(s0)
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	remu	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	beqz	a0, .LBB0_5
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -32(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -48(s0)
	ld	a1, -24(s0)
	mul	a0, a0, a1
	ld	a1, -40(s0)
	remu	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -32(s0)
	srli	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -24(s0)
	mul	a0, a0, a0
	ld	a1, -40(s0)
	remu	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB0_1
.LBB0_5:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	mod_exp, .Lfunc_end0-mod_exp
	.cfi_endproc
                                        # -- End function
	.globl	extended_gcd                    # -- Begin function extended_gcd
	.p2align	1
	.type	extended_gcd,@function
extended_gcd:                           # @extended_gcd
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	ld	a0, -32(s0)
	bnez	a0, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	ld	a1, -48(s0)
	li	a0, 0
	sd	a0, 0(a1)
	ld	a1, -56(s0)
	li	a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB1_3
.LBB1_2:
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	rem	a0, a0, a1
	addi	a2, s0, -64
	addi	a3, s0, -72
	call	extended_gcd
	sd	a0, -80(s0)
	ld	a0, -72(s0)
	ld	a1, -40(s0)
	ld	a2, -32(s0)
	div	a1, a1, a2
	ld	a2, -64(s0)
	mul	a1, a1, a2
	sub	a0, a0, a1
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a0, 0(a1)
	ld	a0, -80(s0)
	sd	a0, -24(s0)
	j	.LBB1_3
.LBB1_3:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	extended_gcd, .Lfunc_end1-extended_gcd
	.cfi_endproc
                                        # -- End function
	.globl	rsa_encrypt                     # -- Begin function rsa_encrypt
	.p2align	1
	.type	rsa_encrypt,@function
rsa_encrypt:                            # @rsa_encrypt
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	call	mod_exp
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	rsa_encrypt, .Lfunc_end2-rsa_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rsa_decrypt                     # -- Begin function rsa_decrypt
	.p2align	1
	.type	rsa_decrypt,@function
rsa_decrypt:                            # @rsa_decrypt
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	call	mod_exp
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mod_exp
	.addrsig_sym extended_gcd
