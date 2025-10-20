	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.p2align	4, 0x90
	.type	rc4_prga,@function
rc4_prga:                               # @rc4_prga
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	addl	$1, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
                                        # kill: def $rdx killed $edx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movb	-25(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
                                        # kill: def $rdx killed $edx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
