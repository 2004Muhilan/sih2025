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
	beqz	a1, .LBB0_6
# %bb.1:
	mv	a3, a0
	li	a0, 1
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	srli	a1, a1, 1
	mul	a3, a3, a3
	beqz	a1, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	andi	a4, a1, 1
	remu	a3, a3, a2
	beqz	a4, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	mul	a0, a3, a0
	remu	a0, a0, a2
	j	.LBB0_2
.LBB0_5:
	ret
.LBB0_6:
	li	a0, 1
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
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s2, a3
	mv	s1, a2
	beqz	a0, .LBB1_2
# %bb.1:
	div	s0, a1, a0
	mul	a2, s0, a0
	sub	a4, a1, a2
	addi	a2, sp, 8
	mv	a3, sp
	mv	a1, a0
	mv	a0, a4
	call	extended_gcd
	ld	a2, 8(sp)
	ld	a3, 0(sp)
	mv	a1, a0
	mul	a0, a2, s0
	sub	a0, a3, a0
	j	.LBB1_3
.LBB1_2:
	li	a2, 1
.LBB1_3:
	sd	a0, 0(s1)
	sd	a2, 0(s2)
	mv	a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
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
	beqz	a1, .LBB2_6
# %bb.1:
	mv	a3, a0
	li	a0, 1
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	srli	a1, a1, 1
	mul	a3, a3, a3
	beqz	a1, .LBB2_5
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	andi	a4, a1, 1
	remu	a3, a3, a2
	beqz	a4, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	mul	a0, a3, a0
	remu	a0, a0, a2
	j	.LBB2_2
.LBB2_5:
	ret
.LBB2_6:
	li	a0, 1
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
	beqz	a1, .LBB3_6
# %bb.1:
	mv	a3, a0
	li	a0, 1
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	srli	a1, a1, 1
	mul	a3, a3, a3
	beqz	a1, .LBB3_5
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	andi	a4, a1, 1
	remu	a3, a3, a2
	beqz	a4, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	mul	a0, a3, a0
	remu	a0, a0, a2
	j	.LBB3_2
.LBB3_5:
	ret
.LBB3_6:
	li	a0, 1
	ret
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
