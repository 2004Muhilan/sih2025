	.file	"hmac_verify.c"
	.text
	.p2align 4
	.globl	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %r8
	testq	%rdx, %rdx
	je	.L8
	leaq	-1(%rdx), %rax
	cmpq	$14, %rax
	jbe	.L9
	movq	%rdx, %rcx
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	andq	$-16, %rcx
	.p2align 4,,10
	.p2align 3
.L4:
	movdqu	(%rdi,%rax), %xmm0
	movdqu	(%rsi,%rax), %xmm3
	addq	$16, %rax
	pxor	%xmm3, %xmm0
	por	%xmm0, %xmm1
	cmpq	%rax, %rcx
	jne	.L4
	movdqa	%xmm1, %xmm0
	psrldq	$8, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	psrldq	$4, %xmm2
	por	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	psrldq	$2, %xmm2
	por	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	psrldq	$1, %xmm2
	por	%xmm2, %xmm0
	movd	%xmm0, %eax
	movdqa	%xmm1, %xmm0
	psrldq	$8, %xmm1
	por	%xmm0, %xmm1
	cmpq	%rcx, %r8
	je	.L5
.L3:
	movq	%r8, %r9
	subq	%rcx, %r9
	leaq	-1(%r9), %rdx
	cmpq	$6, %rdx
	jbe	.L6
	movq	(%rdi,%rcx), %xmm0
	movq	(%rsi,%rcx), %xmm2
	pxor	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r10
	orb	%dh, %al
	shrq	$16, %r10
	orl	%r10d, %eax
	movq	%rdx, %r10
	shrq	$24, %r10
	orl	%r10d, %eax
	movq	%rdx, %r10
	shrq	$32, %r10
	orl	%r10d, %eax
	movq	%rdx, %r10
	shrq	$40, %r10
	orl	%r10d, %eax
	movq	%rdx, %r10
	shrq	$56, %rdx
	shrq	$48, %r10
	orl	%r10d, %eax
	orl	%edx, %eax
	movq	%r9, %rdx
	andq	$-8, %rdx
	addq	%rdx, %rcx
	andl	$7, %r9d
	je	.L5
.L6:
	movzbl	(%rdi,%rcx), %edx
	xorb	(%rsi,%rcx), %dl
	orl	%edx, %eax
	leaq	1(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	1(%rsi,%rcx), %edx
	xorb	1(%rdi,%rcx), %dl
	orl	%edx, %eax
	leaq	2(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	2(%rdi,%rcx), %edx
	xorb	2(%rsi,%rcx), %dl
	orl	%edx, %eax
	leaq	3(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	3(%rdi,%rcx), %edx
	xorb	3(%rsi,%rcx), %dl
	orl	%edx, %eax
	leaq	4(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	4(%rdi,%rcx), %edx
	xorb	4(%rsi,%rcx), %dl
	orl	%edx, %eax
	leaq	5(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	5(%rdi,%rcx), %edx
	xorb	5(%rsi,%rcx), %dl
	orl	%edx, %eax
	leaq	6(%rcx), %rdx
	cmpq	%r8, %rdx
	jnb	.L5
	movzbl	6(%rdi,%rcx), %edx
	xorb	6(%rsi,%rcx), %dl
	orl	%edx, %eax
.L5:
	testb	%al, %al
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$1, %eax
	ret
.L9:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
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
