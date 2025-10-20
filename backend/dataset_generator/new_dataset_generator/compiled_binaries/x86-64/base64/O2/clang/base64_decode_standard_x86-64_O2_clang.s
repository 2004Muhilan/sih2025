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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	$0, (%rdx)
	addq	$3, %rdi
	movl	$62, %eax
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-65, %r9d
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%r9d, %r10d
.LBB1_34:                               #   in Loop: Header=BB1_1 Depth=1
	shll	$12, %ecx
	shll	$6, %r8d
	orl	%ecx, %r8d
	orl	%r8d, %ebx
	shll	$6, %ebx
	orl	%r10d, %ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movq	(%rdx), %r8
	leaq	1(%r8), %r9
	movq	%r9, (%rdx)
	movb	%cl, (%rsi,%r8)
	movq	(%rdx), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, (%rdx)
	movb	%bh, (%rsi,%rcx)
	movq	(%rdx), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, (%rdx)
	movb	%bl, (%rsi,%rcx)
	addq	$4, %rdi
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdi), %r8d
	testl	%r8d, %r8d
	je	.LBB1_35
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$61, %r8d
	je	.LBB1_35
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movsbl	%r8b, %ecx
	leal	-65(%rcx), %r9d
	cmpb	$26, %r9b
	jae	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	addl	$-65, %ecx
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	leal	-97(%r8), %r9d
	cmpb	$25, %r9b
	ja	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	addl	$-71, %ecx
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	leal	-48(%r8), %r9d
	cmpb	$9, %r9b
	ja	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	addl	$4, %ecx
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	cmpb	$47, %r8b
	setne	%cl
	negl	%ecx
	orl	$63, %ecx
	cmpb	$43, %r8b
	cmovel	%eax, %ecx
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movsbl	-2(%rdi), %r9d
	leal	-65(%r9), %r8d
	cmpb	$26, %r8b
	jae	.LBB1_11
# %bb.16:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-65, %r9d
	jmp	.LBB1_17
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-97(%r9), %r8d
	cmpb	$26, %r8b
	jae	.LBB1_12
# %bb.15:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-71, %r9d
	jmp	.LBB1_17
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-48(%r9), %r8d
	cmpb	$10, %r8b
	jae	.LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$4, %r9d
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%r9d, %r8d
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	movsbl	-1(%rdi), %r9d
	leal	-65(%r9), %r10d
	cmpb	$26, %r10b
	jae	.LBB1_19
# %bb.24:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-65, %r9d
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-97(%r9), %r10d
	cmpb	$26, %r10b
	jae	.LBB1_20
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-71, %r9d
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-48(%r9), %r10d
	cmpb	$10, %r10b
	jae	.LBB1_21
# %bb.22:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$4, %r9d
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%r9d, %ebx
.LBB1_26:                               #   in Loop: Header=BB1_1 Depth=1
	movsbl	(%rdi), %r9d
	leal	-65(%r9), %r10d
	cmpb	$26, %r10b
	jb	.LBB1_32
# %bb.27:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-97(%r9), %r10d
	cmpb	$26, %r10b
	jae	.LBB1_28
# %bb.31:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-71, %r9d
	jmp	.LBB1_33
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-48(%r9), %r10d
	cmpb	$10, %r10b
	jae	.LBB1_29
# %bb.30:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$4, %r9d
	jmp	.LBB1_33
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r8d, %r8d
	cmpb	$47, %r9b
	setne	%r8b
	negl	%r8d
	orl	$63, %r8d
	cmpb	$43, %r9b
	cmovel	%eax, %r8d
	jmp	.LBB1_18
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%ebx, %ebx
	cmpb	$47, %r9b
	setne	%bl
	negl	%ebx
	orl	$63, %ebx
	cmpb	$43, %r9b
	cmovel	%eax, %ebx
	jmp	.LBB1_26
.LBB1_29:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r10d, %r10d
	cmpb	$47, %r9b
	setne	%r10b
	negl	%r10d
	orl	$63, %r10d
	cmpb	$43, %r9b
	cmovel	%eax, %r10d
	jmp	.LBB1_34
.LBB1_35:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
