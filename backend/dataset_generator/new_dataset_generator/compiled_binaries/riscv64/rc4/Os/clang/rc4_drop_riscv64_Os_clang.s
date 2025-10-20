	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	1
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
	.cfi_startproc
# %bb.0:
	li	a5, 0
	li	a6, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a4, a0, a5
	sb	a5, 0(a4)
	addi	a5, a5, 1
	bne	a5, a6, .LBB0_1
# %bb.2:
	li	a4, 0
	li	t1, 0
	li	a6, 256
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	add	a7, a0, a4
	lbu	t0, 0(a7)
	remu	a5, a4, a2
	add	a5, a5, a1
	lbu	a5, 0(a5)
	add	t1, t1, t0
	add	t1, t1, a5
	andi	a5, t1, 255
	add	t2, a0, a5
	lbu	a5, 0(t2)
	sb	a5, 0(a7)
	addi	a4, a4, 1
	sb	t0, 0(t2)
	bne	a4, a6, .LBB0_3
# %bb.4:
	sb	zero, 256(a0)
	sb	zero, 257(a0)
	beqz	a3, .LBB0_8
# %bb.5:
	li	a1, 0
	li	a2, 0
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addi	a2, a2, 1
	andi	a4, a2, 255
	add	a7, a0, a4
	lbu	a6, 0(a7)
	add	a1, a1, a6
	andi	a5, a1, 255
	add	a5, a5, a0
	lbu	a4, 0(a5)
	sb	a4, 0(a7)
	addi	a3, a3, -1
	sb	a6, 0(a5)
	bnez	a3, .LBB0_6
# %bb.7:
	sb	a2, 256(a0)
	sb	a1, 257(a0)
.LBB0_8:
	ret
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	1
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         # @rc4_drop_crypt
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
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	1
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
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
	li	a3, 768
	call	rc4_drop_init
	mv	a0, s0
	mv	a1, s2
	mv	a2, s1
	call	memcpy
	addi	a0, sp, 14
	mv	a1, s0
	mv	a2, s1
	call	rc4_drop_crypt
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
