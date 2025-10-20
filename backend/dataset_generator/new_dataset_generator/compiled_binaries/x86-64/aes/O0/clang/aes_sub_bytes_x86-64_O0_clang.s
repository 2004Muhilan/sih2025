	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.p2align	4, 0x90
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          # @aes_sub_bytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	leaq	sbox(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	leaq	aes_inv_sub_bytes.inv_sbox(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.addrsig_sym aes_inv_sub_bytes.inv_sbox
	.addrsig_sym sbox
