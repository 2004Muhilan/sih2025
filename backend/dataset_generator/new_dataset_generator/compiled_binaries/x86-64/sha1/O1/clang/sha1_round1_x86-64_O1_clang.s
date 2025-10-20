	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     # -- Begin function sha1_round1
	.p2align	4, 0x90
	.type	sha1_round1,@function
sha1_round1:                            # @sha1_round1
	.cfi_startproc
# %bb.0:
                                        # kill: def $r9d killed $r9d def $r9
                                        # kill: def $esi killed $esi def $rsi
	roll	$5, %edi
	andl	%esi, %edx
	addl	%edi, %edx
	notl	%esi
	andl	%ecx, %esi
	addl	%r8d, %esi
	addl	%edx, %esi
	leal	(%r9,%rsi), %eax
	addl	$1518500249, %eax               # imm = 0x5A827999
	retq
.Lfunc_end0:
	.size	sha1_round1, .Lfunc_end0-sha1_round1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
