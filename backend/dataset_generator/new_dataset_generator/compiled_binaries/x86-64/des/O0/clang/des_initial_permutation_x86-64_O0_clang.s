	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         # -- Begin function des_initial_permutation
	.p2align	4, 0x90
	.type	des_initial_permutation,@function
des_initial_permutation:                # @des_initial_permutation
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rdx
	leaq	IP(%rip), %rcx
	movzbl	(%rcx,%rdx), %edx
	movl	$64, %ecx
	subl	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movl	$1, %edx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	%rdx, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$63, %eax
	subl	-20(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	orq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        # -- End function
	.type	IP,@object                      # @IP
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym IP
