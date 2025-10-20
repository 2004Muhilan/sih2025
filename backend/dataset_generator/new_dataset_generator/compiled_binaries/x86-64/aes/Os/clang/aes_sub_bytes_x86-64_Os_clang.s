	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          # @aes_sub_bytes
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	leaq	sbox(%rip), %rcx
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %edx
	movb	(%rdx,%rcx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	aes_sub_bytes, .Lfunc_end0-aes_sub_bytes
	.cfi_endproc
                                        # -- End function
	.globl	aes_inv_sub_bytes               # -- Begin function aes_inv_sub_bytes
	.type	aes_inv_sub_bytes,@function
aes_inv_sub_bytes:                      # @aes_inv_sub_bytes
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	leaq	aes_inv_sub_bytes.inv_sbox(%rip), %rcx
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %edx
	movb	(%rdx,%rcx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_1
# %bb.2:
	retq
.Lfunc_end1:
	.size	aes_inv_sub_bytes, .Lfunc_end1-aes_inv_sub_bytes
	.cfi_endproc
                                        # -- End function
	.type	aes_inv_sub_bytes.inv_sbox,@object # @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.zero	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,@object                    # @sbox
	.p2align	4, 0x0
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
