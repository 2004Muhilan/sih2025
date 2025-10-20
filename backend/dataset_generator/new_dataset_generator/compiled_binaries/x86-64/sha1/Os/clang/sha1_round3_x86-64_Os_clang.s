	.text
	.file	"sha1_round3.c"
	.globl	sha1_round3                     # -- Begin function sha1_round3
	.type	sha1_round3,@function
sha1_round3:                            # @sha1_round3
	.cfi_startproc
# %bb.0:
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $ecx killed $ecx def $rcx
	roll	$5, %edi
	movl	%ecx, %eax
	orl	%edx, %eax
	andl	%esi, %eax
	andl	%edx, %ecx
	orl	%eax, %ecx
	addl	%r9d, %r8d
	addl	%edi, %r8d
	leal	(%rcx,%r8), %eax
	addl	$-1894007588, %eax              # imm = 0x8F1BBCDC
	retq
.Lfunc_end0:
	.size	sha1_round3, .Lfunc_end0-sha1_round3
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
