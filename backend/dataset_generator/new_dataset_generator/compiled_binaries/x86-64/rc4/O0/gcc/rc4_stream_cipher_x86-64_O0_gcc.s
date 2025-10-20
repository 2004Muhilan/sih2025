	.file	"rc4_stream_cipher.c"
	.text
	.globl	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -284(%rbp)
	jmp	.L2
.L3:
	movl	-284(%rbp), %eax
	movl	%eax, %edx
	movl	-284(%rbp), %eax
	cltq
	movb	%dl, -272(%rbp,%rax)
	addl	$1, -284(%rbp)
.L2:
	cmpl	$255, -284(%rbp)
	jle	.L3
	movb	$0, -286(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -287(%rbp)
	movq	$0, -280(%rbp)
	jmp	.L4
.L5:
	movzbl	-288(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%eax, %edx
	movzbl	%dl, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -288(%rbp)
	movzbl	-288(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	addb	%al, -287(%rbp)
	movzbl	-288(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movb	%al, -285(%rbp)
	movzbl	-287(%rbp), %eax
	movzbl	-288(%rbp), %ecx
	cltq
	movzbl	-272(%rbp,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -272(%rbp,%rax)
	movzbl	-287(%rbp), %eax
	cltq
	movzbl	-285(%rbp), %edx
	movb	%dl, -272(%rbp,%rax)
	movq	-296(%rbp), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movzbl	-288(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %edx
	movzbl	-287(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	addl	%edx, %eax
	movzbl	%al, %eax
	cltq
	movzbl	-272(%rbp,%rax), %ecx
	movq	-296(%rbp), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -280(%rbp)
.L4:
	movq	-280(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jb	.L5
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
