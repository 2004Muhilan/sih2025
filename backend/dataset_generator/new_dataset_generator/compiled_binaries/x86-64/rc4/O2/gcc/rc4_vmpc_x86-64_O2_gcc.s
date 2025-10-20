	.file	"rc4_vmpc.c"
	.text
	.p2align 4
	.globl	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movdqa	.LC0(%rip), %xmm3
	movdqa	.LC1(%rip), %xmm9
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	movq	%rsp, %rax
	movdqa	.LC3(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm8
	leaq	256(%rsp), %rdx
	movdqa	.LC4(%rip), %xmm6
	movdqa	.LC5(%rip), %xmm5
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm3, %xmm2
	addq	$16, %rax
	paddd	%xmm9, %xmm3
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm0
	paddd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm2, %xmm0
	paddd	%xmm6, %xmm2
	paddd	%xmm7, %xmm0
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm1
	punpckhwd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm4, %xmm0
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	packuswb	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2
	testq	%rsi, %rsi
	je	.L1
	addq	%rdi, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	addb	(%rsp,%rdx), %al
	movq	%rdx, %rcx
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %edx
	movq	%rdx, %rax
	movzbl	(%rsp,%rdx), %edx
	movzbl	(%rsp,%rdx), %edx
	addl	$1, %edx
	movzbl	%dl, %edx
	xorb	(%rsp,%rdx), %cl
	movb	%cl, -1(%rdi)
	cmpq	%rsi, %rdi
	jne	.L4
.L1:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$280, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	16
	.long	16
	.long	16
	.long	16
	.align 16
.LC2:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC3:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC4:
	.long	12
	.long	12
	.long	12
	.long	12
	.align 16
.LC5:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
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
