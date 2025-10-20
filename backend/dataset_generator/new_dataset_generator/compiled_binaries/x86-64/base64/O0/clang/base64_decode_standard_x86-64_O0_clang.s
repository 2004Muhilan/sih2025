	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.p2align	4, 0x90
	.type	base64_char_value,@function
base64_char_value:                      # @base64_char_value
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
	cmpl	$43, %eax
	jne	.LBB0_11
# %bb.10:
	movl	$62, -4(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	movsbl	-5(%rbp), %eax
	cmpl	$47, %eax
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, -32(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$61, %eax
	setne	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_10
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -40(%rbp)
	jge	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	movl	-36(%rbp), %eax
	shll	$6, %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movsbl	(%rax,%rcx), %edi
	callq	base64_char_value
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 # 4-byte Reload
	orl	%ecx, %eax
	movl	%eax, -36(%rbp)
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	movb	%dl, (%rax,%rcx)
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	movb	%dl, (%rax,%rcx)
	movl	-36(%rbp), %eax
	andl	$255, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	movb	%dl, (%rax,%rcx)
# %bb.9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_10:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_char_value
