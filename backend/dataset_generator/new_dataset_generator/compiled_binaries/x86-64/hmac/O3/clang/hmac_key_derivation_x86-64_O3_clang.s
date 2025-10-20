	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.p2align	4, 0x90
	.type	hmac_key_derive,@function
hmac_key_derive:                        # @hmac_key_derive
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	xorb	(%r9,%rdx), %r11b
	movb	%r11b, (%r8,%r10)
	incq	%r10
	cmpq	$32, %r10
	je	.LBB0_8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	orq	%rsi, %rax
	shrq	$32, %rax
	je	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rdi,%rdx), %r11d
	movq	%r10, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
