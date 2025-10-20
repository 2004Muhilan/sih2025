	.file	"aes_key_expansion.c"
	.text
	.p2align 4
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rcx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.L2
	leaq	rcon(%rip), %rdi
	addq	$16, %rcx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movl	-4(%rcx), %ebx
	addl	$16, %esi
	movl	%ebx, %r8d
	movzbl	%bl, %eax
	movzbl	%bh, %edx
	xorb	(%rdi), %dl
	shrl	$16, %r8d
	shldl	$8, %ebx, %eax
	movzbl	%r8b, %r8d
	sall	$8, %eax
	orl	%r8d, %eax
	movzbl	%dl, %r8d
	xorb	-16(%rcx), %dl
	sall	$8, %eax
	movb	%dl, (%rcx)
	orl	%r8d, %eax
	movl	%eax, 4(%rsp)
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rax, %rdx
	andl	$3, %edx
	movzbl	4(%rsp,%rdx), %edx
	xorb	-16(%rcx,%rax), %dl
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.L4
	addq	$1, %rdi
	addq	$16, %rcx
	cmpl	$160, %esi
	jne	.L3
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L11:
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
