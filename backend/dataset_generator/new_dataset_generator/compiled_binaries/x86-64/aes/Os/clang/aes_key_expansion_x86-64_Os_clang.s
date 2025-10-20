	.text
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	(%rdi,%rax), %cl
	movb	%cl, (%rsi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	leaq	16(%rsi), %rax
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	rcon(%rip), %rdi
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rdx, %r8
	shlq	$4, %r8
	movl	12(%rsi,%r8), %r8d
	movl	%r8d, -4(%rsp)
	movzwl	-2(%rsp), %r9d
	movb	-1(%rcx,%rdi), %r10b
	xorb	-3(%rsp), %r10b
	movw	%r9w, -3(%rsp)
	movb	%r8b, -1(%rsp)
	movb	%r10b, -4(%rsp)
	xorl	%r8d, %r8d
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %r9d
	andl	$3, %r9d
	movb	-4(%rsp,%r9), %r9b
	xorb	-16(%rax,%r8), %r9b
	movb	%r9b, (%rax,%r8)
	incq	%r8
	cmpq	$16, %r8
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	incq	%rcx
	incq	%rdx
	addq	$16, %rax
	cmpq	$10, %rdx
	jne	.LBB0_3
# %bb.6:
	retq
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
