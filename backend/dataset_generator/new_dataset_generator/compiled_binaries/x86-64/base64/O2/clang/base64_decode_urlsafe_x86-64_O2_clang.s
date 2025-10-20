	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.p2align	4, 0x90
	.type	base64_url_char_value,@function
base64_url_char_value:                  # @base64_url_char_value
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
	.p2align	4, 0x90
	.type	base64_decode_urlsafe,@function
base64_decode_urlsafe:                  # @base64_decode_urlsafe
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %edx
	testb	%dl, %dl
	je	.LBB1_10
# %bb.1:
	xorl	%eax, %eax
	movl	$62, %ecx
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_5 Depth=1
	addb	$-71, %dl
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %r8d
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	movb	%r8b, (%rsi,%rax)
	movzbl	1(%rdi,%rax), %edx
	incq	%rax
	testb	%dl, %dl
	je	.LBB1_10
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	leal	-65(%rdx), %r8d
	cmpb	$26, %r8b
	jb	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	leal	-97(%rdx), %r8d
	cmpb	$25, %r8b
	jbe	.LBB1_2
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	leal	-48(%rdx), %r8d
	cmpb	$9, %r8b
	ja	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=1
	addb	$4, %dl
	jmp	.LBB1_3
.LBB1_9:                                #   in Loop: Header=BB1_5 Depth=1
	cmpb	$95, %dl
	setne	%r8b
	negb	%r8b
	orb	$63, %r8b
	cmpb	$45, %dl
	movzbl	%r8b, %r8d
	cmovel	%ecx, %r8d
	jmp	.LBB1_4
.LBB1_10:
	retq
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
