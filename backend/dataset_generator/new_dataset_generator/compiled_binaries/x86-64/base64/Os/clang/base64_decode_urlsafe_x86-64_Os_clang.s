	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.type	base64_url_char_value,@function
base64_url_char_value:                  # @base64_url_char_value
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
	cmpb	$95, %al
	setne	%cl
	negl	%ecx
	orl	$63, %ecx
	cmpb	$45, %al
	movl	$62, %eax
	cmovnel	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	base64_url_char_value, .Lfunc_end0-base64_url_char_value
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode_urlsafe           # -- Begin function base64_decode_urlsafe
	.type	base64_decode_urlsafe,@function
base64_decode_urlsafe:                  # @base64_decode_urlsafe
	.cfi_startproc
# %bb.0:
	movb	(%rdi), %al
	testb	%al, %al
	je	.LBB1_4
# %bb.1:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movsbl	%al, %edi
	callq	base64_url_char_value
	movb	%al, (%rbx,%r15)
	movb	1(%r14,%r15), %al
	incq	%r15
	testb	%al, %al
	jne	.LBB1_2
# %bb.3:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB1_4:
	retq
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
