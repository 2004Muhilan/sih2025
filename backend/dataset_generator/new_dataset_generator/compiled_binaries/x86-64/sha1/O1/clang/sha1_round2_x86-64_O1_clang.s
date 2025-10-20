	.text
	.file	"sha1_round2.c"
	.globl	sha1_round2                     # -- Begin function sha1_round2
	.p2align	4, 0x90
	.type	sha1_round2,@function
sha1_round2:                            # @sha1_round2
	.cfi_startproc
# %bb.0:
                                        # kill: def $r9d killed $r9d def $r9
                                        # kill: def $esi killed $esi def $rsi
	roll	$5, %edi
	xorl	%edx, %esi
	xorl	%ecx, %esi
	addl	%edi, %esi
	addl	%r8d, %esi
	leal	(%r9,%rsi), %eax
	addl	$1859775393, %eax               # imm = 0x6ED9EBA1
	retq
.Lfunc_end0:
	.size	sha1_round2, .Lfunc_end0-sha1_round2
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
