	.file	"aes_key_expansion.c"
	.text
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.L2:
	movb	(%rdi,%rax), %dl
	movb	%dl, (%rcx,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L2
	leaq	rcon(%rip), %rdi
	xorl	%edx, %edx
	leaq	16(%rcx), %r9
.L3:
	movl	12(%rcx,%rdx), %eax
	movl	%eax, %esi
	movb	%al, 7(%rsp)
	shrl	$16, %esi
	movb	%sil, 5(%rsp)
	movl	%eax, %esi
	movzbl	%ah, %eax
	xorb	(%rdi), %al
	shrl	$24, %esi
	movb	%al, 4(%rsp)
	xorl	%eax, %eax
	movb	%sil, 6(%rsp)
	leaq	(%r9,%rdx), %rsi
.L4:
	movl	%eax, %r8d
	incl	%eax
	incq	%rsi
	andl	$3, %r8d
	movb	4(%rsp,%r8), %r8b
	xorb	-17(%rsi), %r8b
	movb	%r8b, -1(%rsi)
	cmpl	$16, %eax
	jne	.L4
	addq	$16, %rdx
	incq	%rdi
	cmpq	$160, %rdx
	jne	.L3
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align 8
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
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
