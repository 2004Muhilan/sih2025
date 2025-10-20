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
	lw	a4, 4(a0)
	lw	t0, 8(a0)
	lw	a6, 0(a0)
	lw	a7, 12(a0)
	and	a2, a4, t0
	lw	a3, 0(a1)
	not	a5, a4
	and	a5, a7, a5
	or	a2, a2, a5
	add	a3, a3, a6
	add	a2, a2, a3
	slli	a3, a2, 7
	add	a3, a3, a4
	and	t1, a3, a4
	lw	t2, 4(a1)
	not	a5, a3
	and	a5, t0, a5
	or	a5, t1, a5
	add	t2, t2, a7
	add	a5, a5, t2
	add	t3, a2, a5
	slli	a5, t3, 7
	add	a5, a5, a4
	and	t1, a5, a3
	lw	t2, 8(a1)
	not	a2, a5
	and	a2, a2, a4
	or	a2, t1, a2
	add	t2, t2, t0
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t4, a2, a4
	and	t1, t4, a5
	lw	t2, 12(a1)
	not	a2, t4
	and	a2, a2, a3
	or	a2, t1, a2
	add	t2, t2, a4
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t5, a2, a4
	and	t1, t5, t4
	lw	t2, 16(a1)
	not	a2, t5
	and	a2, a2, a5
	or	a2, t1, a2
	add	a3, a3, t2
	add	a2, a2, a3
	add	t3, t3, a2
	slli	a3, t3, 7
	add	a3, a3, a4
	and	t1, a3, t5
	lw	t2, 20(a1)
	not	a2, a3
	and	a2, t4, a2
	or	a2, t1, a2
	add	a5, a5, t2
	add	a2, a2, a5
	add	t3, t3, a2
	slli	a5, t3, 7
	add	a5, a5, a4
	and	t1, a5, a3
	lw	t2, 24(a1)
	not	a2, a5
	and	a2, t5, a2
	or	a2, t1, a2
	add	t2, t2, t4
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t4, a2, a4
	and	t1, t4, a5
	lw	t2, 28(a1)
	not	a2, t4
	and	a2, a2, a3
	or	a2, t1, a2
	add	t2, t2, t5
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t5, a2, a4
	and	t1, t5, t4
	lw	t2, 32(a1)
	not	a2, t5
	and	a2, a2, a5
	or	a2, t1, a2
	add	a3, a3, t2
	add	a2, a2, a3
	add	t3, t3, a2
	slli	a3, t3, 7
	add	a3, a3, a4
	and	t1, a3, t5
	lw	t2, 36(a1)
	not	a2, a3
	and	a2, t4, a2
	or	a2, t1, a2
	add	a5, a5, t2
	add	a2, a2, a5
	add	t3, t3, a2
	slli	a5, t3, 7
	add	a5, a5, a4
	and	t1, a5, a3
	lw	t2, 40(a1)
	not	a2, a5
	and	a2, t5, a2
	or	a2, t1, a2
	add	t2, t2, t4
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t4, a2, a4
	and	t1, t4, a5
	lw	t2, 44(a1)
	not	a2, t4
	and	a2, a2, a3
	or	a2, t1, a2
	add	t2, t2, t5
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	t5, a2, a4
	and	t1, t5, t4
	lw	t2, 48(a1)
	not	a2, t5
	and	a2, a2, a5
	or	a2, t1, a2
	add	a3, a3, t2
	add	a2, a2, a3
	add	t3, t3, a2
	slli	a3, t3, 7
	add	a3, a3, a4
	and	t1, a3, t5
	lw	t2, 52(a1)
	not	a2, a3
	and	a2, t4, a2
	or	a2, t1, a2
	add	a5, a5, t2
	add	a2, a2, a5
	add	t3, t3, a2
	slli	a5, t3, 7
	add	a5, a5, a4
	and	t1, a5, a3
	lw	t2, 56(a1)
	not	a2, a5
	and	a2, t5, a2
	or	a2, t1, a2
	add	t2, t2, t4
	add	a2, a2, t2
	add	t3, t3, a2
	slli	a2, t3, 7
	add	a2, a2, a4
	and	t1, a2, a5
	lw	t2, 60(a1)
	not	a1, a2
	and	a1, a1, a3
	or	a1, t1, a1
	add	t2, t2, t5
	add	a1, a1, t2
	add	a1, a1, t3
	slli	a1, a1, 7
	add	a3, a3, a6
	sw	a3, 0(a0)
	slli	a4, a4, 1
	add	a1, a1, a4
	sw	a1, 4(a0)
	add	a2, a2, t0
	sw	a2, 8(a0)
	add	a5, a5, a7
	sw	a5, 12(a0)
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
