	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.p2align	4, 0x90
	.type	base64_url_char_value,@function
base64_url_char_value:                  # @base64_url_char_value
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB0_3
# %bb.1:
	movsbl	-5(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB0_3
# %bb.2:
	movsbl	-5(%rbp), %eax
	subl	$65, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movsbl	-5(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB0_6
# %bb.4:
	movsbl	-5(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB0_6
# %bb.5:
	movsbl	-5(%rbp), %eax
	subl	$97, %eax
	addl	$26, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	movsbl	-5(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB0_9
# %bb.7:
	movsbl	-5(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB0_9
# %bb.8:
	movsbl	-5(%rbp), %eax
	subl	$48, %eax
	addl	$52, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_9:
	movsbl	-5(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB0_11
# %bb.10:
	movl	$62, -4(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	movsbl	-5(%rbp), %eax
	cmpl	$95, %eax
	jne	.LBB0_13
# %bb.12:
	movl	$63, -4(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	$-1, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	base64_url_char_value
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_url_char_value
