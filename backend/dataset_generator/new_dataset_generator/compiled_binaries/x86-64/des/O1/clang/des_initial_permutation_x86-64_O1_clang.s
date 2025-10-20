	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         # -- Begin function des_initial_permutation
	.p2align	4, 0x90
	.type	des_initial_permutation,@function
des_initial_permutation:                # @des_initial_permutation
	.cfi_startproc
# %bb.0:
	xorl	%edx, %edx
	leaq	IP(%rip), %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$64, %cl
	subb	(%rdx,%rsi), %cl
	movzbl	%cl, %r8d
	movl	%edx, %ecx
	notb	%cl
	movl	$1, %r9d
	shlq	%cl, %r9
	btq	%r8, %rdi
	movl	$0, %ecx
	cmovbq	%r9, %rcx
	orq	%rcx, %rax
	incq	%rdx
	cmpq	$64, %rdx
	jne	.LBB0_1
# %bb.2:
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
