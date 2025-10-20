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
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.L2:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.L2
	leaq	16(%rsi), %rdi
	leaq	rcon(%rip), %r9
	leaq	176(%rsi), %r8
	jmp	.L3
.L12:
	movzbl	5(%rsp), %eax
	movzbl	6(%rsp), %edx
	movb	%dl, 5(%rsp)
	movzbl	7(%rsp), %edx
	movb	%dl, 6(%rsp)
	movzbl	4(%rsp), %edx
	movb	%dl, 7(%rsp)
	xorb	(%r9), %al
	movb	%al, 4(%rsp)
	movl	$0, %edx
.L5:
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rdx), %eax
	andl	$3, %eax
	subl	%ecx, %eax
	cltq
	movzbl	4(%rsp,%rax), %eax
	xorb	-16(%rsi,%rdx), %al
	movb	%al, (%rsi,%rdx)
	addq	$1, %rdx
	cmpq	$16, %rdx
	jne	.L5
	addq	$16, %rdi
	addq	$1, %r9
	cmpq	%r8, %rdi
	je	.L1
.L3:
	movl	$0, %eax
	movq	%rdi, %rsi
.L4:
	movzbl	-4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp,%rax)
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.L4
	jmp	.L12
.L1:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
