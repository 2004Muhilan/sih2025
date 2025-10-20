	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.p2align	1
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          # @aes_sub_bytes
	.cfi_startproc
# %bb.0:
	lbu	a2, 0(a0)
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(sbox)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	add	a2, a2, a1
	lbu	a2, 0(a2)
	lbu	a3, 1(a0)
	sb	a2, 0(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 2(a0)
	sb	a2, 1(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 3(a0)
	sb	a2, 2(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 4(a0)
	sb	a2, 3(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 5(a0)
	sb	a2, 4(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 6(a0)
	sb	a2, 5(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 7(a0)
	sb	a2, 6(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 8(a0)
	sb	a2, 7(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 9(a0)
	sb	a2, 8(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 10(a0)
	sb	a2, 9(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 11(a0)
	sb	a2, 10(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 12(a0)
	sb	a2, 11(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 13(a0)
	sb	a2, 12(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 14(a0)
	sb	a2, 13(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 15(a0)
	sb	a2, 14(a0)
	add	a1, a1, a3
	lbu	a1, 0(a1)
	sb	a1, 15(a0)
	ret
.Lfunc_end0:
	.size	aes_sub_bytes, .Lfunc_end0-aes_sub_bytes
	.cfi_endproc
                                        # -- End function
	.globl	aes_inv_sub_bytes               # -- Begin function aes_inv_sub_bytes
	.p2align	1
	.type	aes_inv_sub_bytes,@function
aes_inv_sub_bytes:                      # @aes_inv_sub_bytes
	.cfi_startproc
# %bb.0:
	lbu	a2, 0(a0)
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(aes_inv_sub_bytes.inv_sbox)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi1)
	add	a2, a2, a1
	lbu	a2, 0(a2)
	lbu	a3, 1(a0)
	sb	a2, 0(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 2(a0)
	sb	a2, 1(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 3(a0)
	sb	a2, 2(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 4(a0)
	sb	a2, 3(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 5(a0)
	sb	a2, 4(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 6(a0)
	sb	a2, 5(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 7(a0)
	sb	a2, 6(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 8(a0)
	sb	a2, 7(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 9(a0)
	sb	a2, 8(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 10(a0)
	sb	a2, 9(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 11(a0)
	sb	a2, 10(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 12(a0)
	sb	a2, 11(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 13(a0)
	sb	a2, 12(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 14(a0)
	sb	a2, 13(a0)
	add	a3, a3, a1
	lbu	a2, 0(a3)
	lbu	a3, 15(a0)
	sb	a2, 14(a0)
	add	a1, a1, a3
	lbu	a1, 0(a1)
	sb	a1, 15(a0)
	ret
.Lfunc_end1:
	.size	aes_inv_sub_bytes, .Lfunc_end1-aes_inv_sub_bytes
	.cfi_endproc
                                        # -- End function
	.type	aes_inv_sub_bytes.inv_sbox,@object # @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",@progbits
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.zero	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,@object                    # @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
