	.file	"quicksort.c"
	.text
	.p2align 4
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	endbr64
	movl	(%rdi), %eax
	movl	(%rsi), %edx
	movl	%edx, (%rdi)
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.p2align 4
	.globl	partition
	.type	partition, @function
partition:
.LFB1:
	.cfi_startproc
	endbr64
	movslq	%edx, %rax
	movq	%rdi, %r9
	leaq	(%rdi,%rax,4), %r11
	leal	-1(%rsi), %edi
	movl	(%r11), %r8d
	cmpl	%esi, %edx
	jle	.L7
	movslq	%esi, %rax
	subl	%esi, %edx
	addq	%rax, %rdx
	leaq	(%r9,%rax,4), %rcx
	leaq	(%r9,%rdx,4), %rsi
	.p2align 4,,10
	.p2align 3
.L6:
	movl	(%rcx), %eax
	cmpl	%r8d, %eax
	jge	.L5
	addl	$1, %edi
	movslq	%edi, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movl	(%rdx), %r10d
	movl	%eax, (%rdx)
	movl	%r10d, (%rcx)
.L5:
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.L6
	movl	(%r11), %r8d
	leal	1(%rdi), %eax
.L4:
	movslq	%edi, %rdi
	leaq	4(%r9,%rdi,4), %rdx
	movl	(%rdx), %ecx
	movl	%r8d, (%rdx)
	movl	%ecx, (%r11)
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%esi, %eax
	jmp	.L4
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.p2align 4
	.globl	quicksort
	.type	quicksort, @function
quicksort:
.LFB2:
	.cfi_startproc
	endbr64
	cmpl	%esi, %edx
	jle	.L19
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movslq	%edx, %rax
	movl	%esi, %r9d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	(%rdi,%rax,4), %r13
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L14:
	movl	0(%r13), %esi
	leal	-1(%r9), %ebx
	cmpl	%r9d, %r12d
	jle	.L11
	movl	%r12d, %edx
	movslq	%r9d, %rcx
	subl	%r9d, %edx
	leaq	0(%rbp,%rcx,4), %rax
	addq	%rcx, %rdx
	leaq	0(%rbp,%rdx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L13:
	movl	(%rax), %edx
	cmpl	%edx, %esi
	jle	.L12
	addl	$1, %ebx
	movslq	%ebx, %rcx
	leaq	0(%rbp,%rcx,4), %rcx
	movl	(%rcx), %r8d
	movl	%edx, (%rcx)
	movl	%r8d, (%rax)
.L12:
	addq	$4, %rax
	cmpq	%rax, %rdi
	jne	.L13
	movl	0(%r13), %esi
.L11:
	movslq	%ebx, %rax
	movq	%rbp, %rdi
	leaq	4(%rbp,%rax,4), %rax
	movl	(%rax), %edx
	movl	%esi, (%rax)
	movl	%r9d, %esi
	movl	%edx, 0(%r13)
	movl	%ebx, %edx
	call	quicksort
	leal	2(%rbx), %r9d
	cmpl	%r12d, %r9d
	jl	.L14
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
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
