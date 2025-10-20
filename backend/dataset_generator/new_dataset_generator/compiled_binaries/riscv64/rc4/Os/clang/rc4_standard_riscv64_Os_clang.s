	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_standard.c"
	.globl	rc4_init                        # -- Begin function rc4_init
	.p2align	1
	.type	rc4_init,@function
rc4_init:                               # @rc4_init
	.cfi_startproc
# %bb.0:
	li	a3, 0
	li	a4, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a5, a0, a3
	sb	a3, 0(a5)
	addi	a3, a3, 1
	bne	a3, a4, .LBB0_1
# %bb.2:
	li	a3, 0
	li	a5, 0
	li	a6, 256
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	add	t0, a0, a3
	lbu	a7, 0(t0)
	remu	a4, a3, a2
	add	a4, a4, a1
	lbu	a4, 0(a4)
	add	a5, a5, a7
	add	a5, a5, a4
	andi	a4, a5, 255
	add	t1, a0, a4
	lbu	a4, 0(t1)
	sb	a4, 0(t0)
	addi	a3, a3, 1
	sb	a7, 0(t1)
	bne	a3, a6, .LBB0_3
# %bb.4:
	sb	zero, 256(a0)
	sb	zero, 257(a0)
	ret
.Lfunc_end0:
	.size	rc4_init, .Lfunc_end0-rc4_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_crypt                       # -- Begin function rc4_crypt
	.p2align	1
	.type	rc4_crypt,@function
rc4_crypt:                              # @rc4_crypt
	.cfi_startproc
# %bb.0:
	beqz	a2, .LBB1_3
# %bb.1:
	add	a6, a1, a2
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 256(a0)
	addi	a7, a3, 1
	lbu	a4, 257(a0)
	andi	a5, a7, 255
	add	a5, a5, a0
	lbu	a2, 0(a5)
	add	t0, a2, a4
	andi	a3, t0, 255
	add	a3, a3, a0
	lbu	a4, 0(a3)
	sb	a4, 0(a5)
	sb	a2, 0(a3)
	lbu	a3, 0(a5)
	sb	a7, 256(a0)
	sb	t0, 257(a0)
	add	a2, a2, a3
	andi	a2, a2, 255
	add	a2, a2, a0
	lbu	a2, 0(a2)
	lbu	a3, 0(a1)
	xor	a2, a2, a3
	sb	a2, 0(a1)
	addi	a1, a1, 1
	bne	a1, a6, .LBB1_2
.LBB1_3:
	ret
.Lfunc_end1:
	.size	rc4_crypt, .Lfunc_end1-rc4_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_encrypt                     # -- Begin function rc4_encrypt
	.p2align	1
	.type	rc4_encrypt,@function
rc4_encrypt:                            # @rc4_encrypt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -304
	.cfi_def_cfa_offset 304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s0, a4
	mv	s1, a3
	mv	s2, a2
	mv	a2, a1
	mv	a1, a0
	addi	a0, sp, 14
	call	rc4_init
	mv	a0, s0
	mv	a1, s2
	mv	a2, s1
	call	memcpy
	addi	a0, sp, 14
	mv	a1, s0
	mv	a2, s1
	call	rc4_crypt
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end2:
	.size	rc4_encrypt, .Lfunc_end2-rc4_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_decrypt                     # -- Begin function rc4_decrypt
	.p2align	1
	.type	rc4_decrypt,@function
rc4_decrypt:                            # @rc4_decrypt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -304
	.cfi_def_cfa_offset 304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s0, a4
	mv	s1, a3
	mv	s2, a2
	mv	a2, a1
	mv	a1, a0
	addi	a0, sp, 14
	call	rc4_init
	mv	a0, s0
	mv	a1, s2
	mv	a2, s1
	call	memcpy
	addi	a0, sp, 14
	mv	a1, s0
	mv	a2, s1
	call	rc4_crypt
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
