	.file	"rc4_stream_cipher.c"
	.text
	.globl	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
.LFB14:
	.cfi_startproc
	endbr64
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
.L2:
	movb	%al, 8(%rsp,%rax)
	incq	%rax
	cmpq	$256, %rax
	jne	.L2
	xorl	%edx, %edx
	xorl	%r8d, %r8d
.L3:
	cmpq	%rsi, %rdx
	je	.L9
	leal	1(%rdx), %ecx
	movzbl	%cl, %ecx
	movb	8(%rsp,%rcx), %al
	addl	%eax, %r8d
	movzbl	%r8b, %r9d
	movb	8(%rsp,%r9), %r10b
	movb	%r10b, 8(%rsp,%rcx)
	movb	%al, 8(%rsp,%r9)
	addb	8(%rsp,%rcx), %al
	movzbl	%al, %eax
	movb	8(%rsp,%rax), %al
	xorb	%al, (%rdi,%rdx)
	incq	%rdx
	jmp	.L3
.L9:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	addq	$280, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
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
