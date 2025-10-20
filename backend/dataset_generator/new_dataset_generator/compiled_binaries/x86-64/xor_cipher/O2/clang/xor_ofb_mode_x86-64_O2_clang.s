	.text
	.file	"xor_ofb_mode.c"
	.globl	xor_ofb_mode                    # -- Begin function xor_ofb_mode
	.p2align	4, 0x90
	.type	xor_ofb_mode,@function
xor_ofb_mode:                           # @xor_ofb_mode
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_8
# %bb.1:
	movq	%rdx, %r9
	cmpq	$1, %rsi
	jne	.LBB0_9
# %bb.2:
	xorl	%r10d, %r10d
.LBB0_3:
	testb	$1, %sil
	je	.LBB0_8
# %bb.4:
	movq	%r10, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_5
# %bb.6:
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_7
.LBB0_9:
	movq	%rsi, %r11
	andq	$-2, %r11
	xorl	%r10d, %r10d
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	xorl	%edx, %edx
	divq	%rcx
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	xorb	(%r9,%rdx), %r8b
	xorb	%r8b, 1(%rdi,%r10)
	addq	$2, %r10
	cmpq	%r10, %r11
	je	.LBB0_3
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	xorb	(%r9,%rdx), %r8b
	xorb	%r8b, (%rdi,%r10)
	leaq	1(%r10), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_16
.LBB0_5:
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_7:
	xorb	(%r9,%rdx), %r8b
	xorb	%r8b, (%rdi,%r10)
.LBB0_8:
	retq
.Lfunc_end0:
	.size	xor_ofb_mode, .Lfunc_end0-xor_ofb_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
