	.file	"quicksort.c"
	.text
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
	.globl	partition
	.type	partition, @function
partition:
.LFB1:
	.cfi_startproc
	endbr64
	movslq	%edx, %rcx
	movq	%rdi, %rax
	leaq	(%rdi,%rcx,4), %r8
	leal	-1(%rsi), %ecx
	movslq	%esi, %rsi
	movl	(%r8), %r10d
.L3:
	leal	1(%rcx), %edi
	cmpl	%esi, %edx
	jle	.L7
	movl	(%rax,%rsi,4), %r9d
	cmpl	%r10d, %r9d
	jge	.L4
	movslq	%edi, %rcx
	leaq	(%rax,%rcx,4), %rcx
	movl	(%rcx), %r11d
	movl	%r9d, (%rcx)
	movl	%edi, %ecx
	movl	%r11d, (%rax,%rsi,4)
.L4:
	incq	%rsi
	jmp	.L3
.L7:
	movslq	%ecx, %rcx
	leaq	4(%rax,%rcx,4), %rax
	movl	(%r8), %ecx
	movl	(%rax), %edx
	movl	%ecx, (%rax)
	movl	%edi, %eax
	movl	%edx, (%r8)
	ret
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.globl	quicksort
	.type	quicksort, @function
quicksort:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
.L10:
	cmpl	%r13d, %esi
	jge	.L8
	movl	%r13d, %edx
	movq	%r12, %rdi
	movl	%esi, 12(%rsp)
	call	partition
	movl	12(%rsp), %esi
	movq	%r12, %rdi
	movl	%eax, %ebp
	leal	-1(%rax), %edx
	call	quicksort
	leal	1(%rbp), %esi
	jmp	.L10
.L8:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
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
