	.text
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                # -- Begin function xor_counter_mode
	.p2align	4, 0x90
	.type	xor_counter_mode,@function
xor_counter_mode:                       # @xor_counter_mode
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
	testb	$1, %sil
	jne	.LBB0_4
.LBB0_8:
	retq
.LBB0_9:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %r11
	andq	$-2, %r11
	leal	1(%r8), %eax
	movzbl	%al, %ebx
	xorl	%r10d, %r10d
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	xorl	%edx, %edx
	divq	%rcx
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	leal	(%rbx,%r10), %eax
	xorb	(%r9,%rdx), %al
	xorb	%al, 1(%rdi,%r10)
	addq	$2, %r10
	cmpq	%r10, %r11
	je	.LBB0_17
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
	leal	(%r8,%r10), %eax
	xorb	(%r9,%rdx), %al
	xorb	%al, (%rdi,%r10)
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
.LBB0_17:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	testb	$1, %sil
	je	.LBB0_8
.LBB0_4:
	movq	%r10, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_5
# %bb.6:
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_7
.LBB0_5:
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_7:
	addl	%r10d, %r8d
	xorb	(%r9,%rdx), %r8b
	xorb	%r8b, (%rdi,%r10)
	retq
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
