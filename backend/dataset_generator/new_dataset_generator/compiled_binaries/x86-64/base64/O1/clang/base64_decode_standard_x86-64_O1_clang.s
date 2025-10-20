	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.p2align	4, 0x90
	.type	base64_char_value,@function
base64_char_value:                      # @base64_char_value
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	leal	-65(%rax), %ecx
	cmpb	$25, %cl
	ja	.LBB0_2
# %bb.1:
	addl	$-65, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_2:
	leal	-97(%rax), %ecx
	cmpb	$25, %cl
	ja	.LBB0_4
# %bb.3:
	addl	$-71, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_4:
	leal	-48(%rax), %ecx
	cmpb	$9, %cl
	ja	.LBB0_6
# %bb.5:
	addl	$4, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_6:
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
	.p2align	4, 0x90
	.type	base64_decode_standard,@function
base64_decode_standard:                 # @base64_decode_standard
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	$0, (%rdx)
	xorl	%eax, %eax
	movl	$62, %ecx
	movq	%rdi, %r8
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%ebx, %r9d
	shrl	$16, %r9d
	movq	(%rdx), %r10
	leaq	1(%r10), %r11
	movq	%r11, (%rdx)
	movb	%r9b, (%rsi,%r10)
	movq	(%rdx), %rbp
	leaq	1(%rbp), %r9
	movq	%r9, (%rdx)
	movb	%bh, (%rsi,%rbp)
	movq	(%rdx), %r9
	leaq	1(%r9), %r10
	movq	%r10, (%rdx)
	movb	%bl, (%rsi,%r9)
	addq	$4, %rax
	addq	$4, %r8
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movzbl	(%rdi,%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$61, %r9d
	je	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=2
	addl	$-65, %r10d
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=2
	shll	$6, %ebx
	orl	%r10d, %ebx
	incq	%r9
	cmpq	$4, %r9
	je	.LBB1_13
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r8,%r9), %r10d
	leal	-65(%r10), %r11d
	cmpb	$25, %r11b
	jbe	.LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=2
	leal	-97(%r10), %r11d
	cmpb	$25, %r11b
	ja	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=2
	addl	$-71, %r10d
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=2
	leal	-48(%r10), %r11d
	cmpb	$9, %r11b
	ja	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=2
	addl	$4, %r10d
	jmp	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=2
	xorl	%r11d, %r11d
	cmpb	$47, %r10b
	setne	%r11b
	negl	%r11d
	orl	$63, %r11d
	cmpb	$43, %r10b
	cmovel	%ecx, %r11d
	movl	%r11d, %r10d
	jmp	.LBB1_12
.LBB1_6:
	popq	%rbx
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
