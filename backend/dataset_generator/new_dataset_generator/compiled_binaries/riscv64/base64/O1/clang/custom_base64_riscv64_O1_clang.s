	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_base64.c"
	.globl	base64_encode                   # -- Begin function base64_encode
	.p2align	1
	.type	base64_encode,@function
base64_encode:                          # @base64_encode
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_8
# %bb.1:
	li	a5, 0
	addi	a2, a2, 3
.Lpcrel_hi0:
	auipc	a3, %pcrel_hi(b64)
	addi	a7, a3, %pcrel_lo(.Lpcrel_hi0)
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	add	a3, a0, a4
	lbu	t0, 0(a3)
	addi	a4, a4, 1
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	add	a5, a5, a0
	lbu	a3, 0(a5)
	srli	a5, a3, 2
	add	a5, a5, a7
	lbu	a5, 0(a5)
	slli	a3, a3, 16
	slli	a6, a6, 8
	or	a3, a6, a3
	sb	a5, -3(a2)
	slli	a3, a3, 46
	srli	a3, a3, 58
	add	a3, a3, a7
	lbu	a3, 0(a3)
	or	a5, t0, a6
	sb	a3, -2(a2)
	slli	a5, a5, 52
	srli	a5, a5, 58
	add	a5, a5, a7
	lbu	a3, 0(a5)
	sb	a3, -1(a2)
	andi	a3, t0, 63
	add	a3, a3, a7
	lbu	a3, 0(a3)
	sb	a3, 0(a2)
	addi	a2, a2, 4
	mv	a5, a4
	bgeu	a4, a1, .LBB0_8
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addi	a4, a5, 1
	bgeu	a4, a1, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	add	a4, a4, a0
	lbu	a6, 0(a4)
	addi	a4, a5, 2
	bltu	a4, a1, .LBB0_2
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	li	a6, 0
	bltu	a4, a1, .LBB0_2
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	li	t0, 0
	j	.LBB0_3
.LBB0_8:
	ret
.Lfunc_end0:
	.size	base64_encode, .Lfunc_end0-base64_encode
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode                   # -- Begin function base64_decode
	.p2align	1
	.type	base64_decode,@function
base64_decode:                          # @base64_decode
	.cfi_startproc
# %bb.0:
	addi	a2, a1, 4
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	sb	a3, 0(a1)
	addi	a1, a1, 1
	addi	a0, a0, 1
	bne	a1, a2, .LBB1_1
# %bb.2:
	ret
.Lfunc_end1:
	.size	base64_decode, .Lfunc_end1-base64_decode
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
