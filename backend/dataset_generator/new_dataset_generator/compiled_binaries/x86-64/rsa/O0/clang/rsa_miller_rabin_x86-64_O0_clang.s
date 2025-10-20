	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                # -- Begin function rsa_miller_rabin
	.p2align	4, 0x90
	.type	rsa_miller_rabin,@function
rsa_miller_rabin:                       # @rsa_miller_rabin
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$2, -16(%rbp)
	jae	.LBB0_2
# %bb.1:
	movb	$0, -1(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	cmpq	$2, -16(%rbp)
	je	.LBB0_4
# %bb.3:
	cmpq	$3, -16(%rbp)
	jne	.LBB0_5
.LBB0_4:
	movb	$1, -1(%rbp)
	jmp	.LBB0_11
.LBB0_5:
	movq	-16(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.6:
	movb	$0, -1(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_10:
	movb	$1, -1(%rbp)
.LBB0_11:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
