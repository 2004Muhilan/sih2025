	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                # -- Begin function rsa_miller_rabin
	.type	rsa_miller_rabin,@function
rsa_miller_rabin:                       # @rsa_miller_rabin
	.cfi_startproc
# %bb.0:
	cmpq	$2, %rdi
	jae	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
.LBB0_4:
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_2:
	movq	%rdi, %rcx
	andq	$-2, %rcx
	movb	$1, %al
	cmpq	$2, %rcx
	je	.LBB0_4
# %bb.3:
	andb	$1, %dil
	movl	%edi, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
