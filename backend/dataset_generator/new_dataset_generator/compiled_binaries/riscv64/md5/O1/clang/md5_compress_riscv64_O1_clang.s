	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
	.p2align	1
	.type	md5_compress,@function
md5_compress:                           # @md5_compress
	.cfi_startproc
# %bb.0:
	lw	t1, 0(a0)
	lw	t0, 4(a0)
	lw	a7, 8(a0)
	lw	a6, 12(a0)
	addi	t2, a1, 64
	mv	t3, t1
	mv	a2, t0
	mv	a4, a6
	mv	a3, a7
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mv	t4, a3
	mv	a5, a4
	mv	a3, a2
	and	t5, a2, t4
	not	a4, a2
	lw	a2, 0(a1)
	and	a4, a4, a5
	or	a4, t5, a4
	add	a4, a4, t3
	add	a2, a2, a4
	slli	a2, a2, 7
	addi	a1, a1, 4
	add	a2, a2, a3
	mv	t3, a5
	mv	a4, t4
	bne	a1, t2, .LBB0_1
# %bb.2:
	add	a5, a5, t1
	sw	a5, 0(a0)
	add	a2, a2, t0
	sw	a2, 4(a0)
	add	a3, a3, a7
	sw	a3, 8(a0)
	add	a6, a6, t4
	sw	a6, 12(a0)
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
