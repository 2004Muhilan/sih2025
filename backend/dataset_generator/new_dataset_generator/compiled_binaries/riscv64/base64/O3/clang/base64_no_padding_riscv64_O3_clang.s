	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        # -- Begin function base64_encode_no_padding
	.p2align	1
	.type	base64_encode_no_padding,@function
base64_encode_no_padding:               # @base64_encode_no_padding
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_11
# %bb.1:
	li	a3, 0
	li	t2, 0
	addi	a6, a0, 2
	addi	a7, a0, 1
.Lpcrel_hi0:
	auipc	a4, %pcrel_hi(b64)
	addi	t0, a4, %pcrel_lo(.Lpcrel_hi0)
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi	a3, a3, 3
	mv	t2, t4
	bgeu	a3, a1, .LBB0_12
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	add	a4, a0, a3
	lbu	a4, 0(a4)
	addi	t3, a3, 1
	slli	t5, a4, 16
	bgeu	t3, a1, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	add	a5, a7, a3
	lbu	a5, 0(a5)
	slli	a5, a5, 8
	or	t5, a5, t5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	addi	t1, a3, 2
	bgeu	t1, a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	add	a5, a6, a3
	lbu	a5, 0(a5)
	or	t5, t5, a5
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	srli	a5, t5, 18
	add	a5, a5, t0
	lbu	t4, 0(a5)
	add	a5, a2, t2
	sb	t4, 0(a5)
	slli	a4, t5, 46
	srli	a4, a4, 58
	add	a4, a4, t0
	lbu	a4, 0(a4)
	addi	t4, t2, 2
	sb	a4, 1(a5)
	bltu	t3, a1, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	bgeu	t1, a1, .LBB0_2
	j	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	slli	a4, t5, 52
	srli	a4, a4, 58
	add	a4, a4, t0
	lbu	a4, 0(a4)
	add	t4, t4, a2
	addi	t2, t2, 3
	sb	a4, 0(t4)
	mv	t4, t2
	bgeu	t1, a1, .LBB0_2
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	andi	a4, t5, 63
	add	a4, a4, t0
	lbu	a4, 0(a4)
	add	a5, a2, t4
	addi	t4, t4, 1
	sb	a4, 0(a5)
	j	.LBB0_2
.LBB0_11:
	li	t4, 0
.LBB0_12:
	add	a2, a2, t4
	sb	zero, 0(a2)
	ret
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cfi_endproc
                                        # -- End function
	.type	b64,@object                     # @b64
	.section	.rodata.str1.1,"aMS",@progbits,1
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
