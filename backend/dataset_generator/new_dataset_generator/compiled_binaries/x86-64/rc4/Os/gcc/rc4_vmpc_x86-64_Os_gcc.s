	.file	"rc4_vmpc.c"
	.text
	.globl	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movq	%rsi, %r8
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
.L2:
	movb	%al, 8(%rsp,%rax)
	incq	%rax
	cmpq	$256, %rax
	jne	.L2
	xorl	%edx, %edx
	xorl	%eax, %eax
.L3:
	cmpq	%r8, %rdx
	je	.L9
	movzbl	(%rdi,%rdx), %ecx
	addb	8(%rsp,%rcx), %al
	movq	%rcx, %rsi
	movzbl	%al, %eax
	movzbl	8(%rsp,%rax), %ecx
	movq	%rcx, %rax
	movzbl	8(%rsp,%rcx), %ecx
	movzbl	8(%rsp,%rcx), %ecx
	incl	%ecx
	movzbl	%cl, %ecx
	xorb	8(%rsp,%rcx), %sil
	movb	%sil, (%rdi,%rdx)
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
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
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
