	.text
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        # -- Begin function des_sbox
	.p2align	4, 0x90
	.type	des_sbox,@function
des_sbox:                               # @des_sbox
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$32, %eax
	sarl	$4, %eax
	movzbl	-1(%rbp), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$30, %eax
	sarl	%eax
	movl	%eax, -16(%rbp)
	movslq	-12(%rbp), %rcx
	leaq	S1(%rip), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	des_sbox, .Lfunc_end0-des_sbox
	.cfi_endproc
                                        # -- End function
	.type	S1,@object                      # @S1
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym S1
