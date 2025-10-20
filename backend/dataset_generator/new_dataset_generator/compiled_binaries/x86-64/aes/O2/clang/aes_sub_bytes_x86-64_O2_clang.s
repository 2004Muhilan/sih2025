	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.p2align	4, 0x90
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          # @aes_sub_bytes
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %ecx
	leaq	sbox(%rip), %rax
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, (%rdi)
	movzbl	1(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 1(%rdi)
	movzbl	2(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 2(%rdi)
	movzbl	3(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 3(%rdi)
	movzbl	4(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 4(%rdi)
	movzbl	5(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 5(%rdi)
	movzbl	6(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 6(%rdi)
	movzbl	7(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 7(%rdi)
	movzbl	8(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 8(%rdi)
	movzbl	9(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 9(%rdi)
	movzbl	10(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 10(%rdi)
	movzbl	11(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 11(%rdi)
	movzbl	12(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 12(%rdi)
	movzbl	13(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 13(%rdi)
	movzbl	14(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 14(%rdi)
	movzbl	15(%rdi), %ecx
	movzbl	(%rcx,%rax), %eax
	movb	%al, 15(%rdi)
	retq
.Lfunc_end0:
	.size	aes_sub_bytes, .Lfunc_end0-aes_sub_bytes
	.cfi_endproc
                                        # -- End function
	.globl	aes_inv_sub_bytes               # -- Begin function aes_inv_sub_bytes
	.p2align	4, 0x90
	.type	aes_inv_sub_bytes,@function
aes_inv_sub_bytes:                      # @aes_inv_sub_bytes
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %ecx
	leaq	aes_inv_sub_bytes.inv_sbox(%rip), %rax
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, (%rdi)
	movzbl	1(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 1(%rdi)
	movzbl	2(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 2(%rdi)
	movzbl	3(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 3(%rdi)
	movzbl	4(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 4(%rdi)
	movzbl	5(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 5(%rdi)
	movzbl	6(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 6(%rdi)
	movzbl	7(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 7(%rdi)
	movzbl	8(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 8(%rdi)
	movzbl	9(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 9(%rdi)
	movzbl	10(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 10(%rdi)
	movzbl	11(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 11(%rdi)
	movzbl	12(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 12(%rdi)
	movzbl	13(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 13(%rdi)
	movzbl	14(%rdi), %ecx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 14(%rdi)
	movzbl	15(%rdi), %ecx
	movzbl	(%rcx,%rax), %eax
	movb	%al, 15(%rdi)
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
