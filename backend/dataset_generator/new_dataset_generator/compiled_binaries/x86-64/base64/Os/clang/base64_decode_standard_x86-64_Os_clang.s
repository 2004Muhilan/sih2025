	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.type	base64_char_value,@function
base64_char_value:                      # @base64_char_value
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	leal	-65(%rax), %ecx
	cmpb	$25, %cl
	ja	.LBB0_3
# %bb.1:
	addl	$-65, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_3:
	leal	-97(%rax), %ecx
	cmpb	$25, %cl
	ja	.LBB0_5
# %bb.4:
	addl	$-71, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_5:
	leal	-48(%rax), %ecx
	cmpb	$9, %cl
	ja	.LBB0_7
# %bb.6:
	addl	$4, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_7:
	xorl	%ecx, %ecx
	cmpb	$47, %al
	setne	%cl
	negl	%ecx
	orl	$63, %ecx
	cmpb	$43, %al
	movl	$62, %eax
	cmovnel	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	base64_char_value, .Lfunc_end0-base64_char_value
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode_standard          # -- Begin function base64_decode_standard
	.type	base64_decode_standard,@function
base64_decode_standard:                 # @base64_decode_standard
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	$0, (%rdx)
	xorl	%r15d, %r15d
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	%rdi, %r12
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	(%rsp), %rax                    # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	testl	%eax, %eax
	je	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$61, %eax
	je	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r14d
	shll	$6, %r14d
	movsbl	(%r12,%r13), %edi
	callq	base64_char_value
	orl	%r14d, %eax
	incq	%r13
	cmpq	$4, %r13
	jne	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, %ecx
	shrl	$16, %ecx
	movq	(%rbx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rbx)
	movb	%cl, (%rbp,%rdx)
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%ah, (%rbp,%rcx)
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%al, (%rbp,%rcx)
	addq	$4, %r15
	addq	$4, %r12
	jmp	.LBB1_1
.LBB1_6:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
