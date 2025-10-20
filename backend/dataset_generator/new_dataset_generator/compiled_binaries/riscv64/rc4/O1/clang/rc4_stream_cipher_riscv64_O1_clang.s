	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      # -- Begin function rc4_stream
	.p2align	1
	.type	rc4_stream,@function
rc4_stream:                             # @rc4_stream
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	li	a2, 0
	mv	a3, sp
	li	a4, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a5, a3, a2
	sb	a2, 0(a5)
	addi	a2, a2, 1
	bne	a2, a4, .LBB0_1
# %bb.2:
	beqz	a1, .LBB0_5
# %bb.3:
	li	a2, 0
	li	t0, 0
	add	a6, a0, a1
	mv	a7, sp
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addi	a3, t0, 1
	andi	t0, a3, 255
	add	a5, a7, t0
	lbu	a1, 0(a5)
	add	a2, a2, a1
	andi	a4, a2, 255
	add	a4, a4, a7
	lbu	a3, 0(a4)
	sb	a3, 0(a5)
	sb	a1, 0(a4)
	lbu	a3, 0(a5)
	add	a1, a1, a3
	andi	a1, a1, 255
	add	a1, a1, a7
	lbu	a1, 0(a1)
	lbu	a3, 0(a0)
	xor	a1, a1, a3
	sb	a1, 0(a0)
	addi	a0, a0, 1
	bne	a0, a6, .LBB0_4
.LBB0_5:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	rc4_stream, .Lfunc_end0-rc4_stream
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
