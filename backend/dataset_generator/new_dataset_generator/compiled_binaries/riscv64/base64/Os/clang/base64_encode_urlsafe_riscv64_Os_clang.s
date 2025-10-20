	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"base64_encode_urlsafe.c"
	.globl	base64_encode_urlsafe           # -- Begin function base64_encode_urlsafe
	.p2align	1
	.type	base64_encode_urlsafe,@function
base64_encode_urlsafe:                  # @base64_encode_urlsafe
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_8
# %bb.1:
	li	a5, 0
	addi	a2, a2, 3
.Lpcrel_hi0:
	auipc	a3, %pcrel_hi(b64url)
	addi	a7, a3, %pcrel_lo(.Lpcrel_hi0)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	addi	a4, a5, 1
	bgeu	a4, a1, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	add	a4, a4, a0
	lbu	a6, 0(a4)
	addi	a4, a5, 2
	bgeu	a4, a1, .LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	add	a3, a0, a4
	lbu	t0, 0(a3)
	addi	a4, a4, 1
	j	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	li	a6, 0
	bltu	a4, a1, .LBB0_4
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	li	t0, 0
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
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
	bltu	a4, a1, .LBB0_2
.LBB0_8:
	ret
.Lfunc_end0:
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cfi_endproc
                                        # -- End function
	.type	b64url,@object                  # @b64url
	.section	.rodata.str1.1,"aMS",@progbits,1
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
