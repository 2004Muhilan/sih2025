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
	addi	a1, a0, 16
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(sbox)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi0)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	add	a3, a3, a2
	lbu	a3, 0(a3)
	sb	a3, 0(a0)
	addi	a0, a0, 1
	bne	a0, a1, .LBB0_1
# %bb.2:
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
	addi	a1, a0, 16
.Lpcrel_hi1:
	auipc	a2, %pcrel_hi(aes_inv_sub_bytes.inv_sbox)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi1)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	add	a3, a3, a2
	lbu	a3, 0(a3)
	sb	a3, 0(a0)
	addi	a0, a0, 1
	bne	a0, a1, .LBB1_1
# %bb.2:
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
