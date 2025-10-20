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
	movslq	%edx, %rax
	leaq	(%rdi,%rax,4), %r11
	movl	(%r11), %r8d
	leal	-1(%rsi), %eax
	cmpl	%esi, %edx
	jle	.L3
	movslq	%esi, %r9
	leaq	(%rdi,%r9,4), %rcx
	subl	%esi, %edx
	addq	%r9, %rdx
	leaq	(%rdi,%rdx,4), %rsi
	jmp	.L5
.L4:
	addq	$4, %rcx
	cmpq	%rsi, %rcx
	je	.L3
.L5:
	movl	(%rcx), %edx
	cmpl	%r8d, %edx
	jge	.L4
	addl	$1, %eax
	movslq	%eax, %r9
	leaq	(%rdi,%r9,4), %r9
	movl	(%r9), %r10d
	movl	%edx, (%r9)
	movl	%r10d, (%rcx)
	jmp	.L4
.L3:
	movslq	%eax, %rdx
	leaq	4(%rdi,%rdx,4), %rdx
	movl	(%rdx), %ecx
	movl	(%r11), %esi
	movl	%esi, (%rdx)
	movl	%ecx, (%r11)
	addl	$1, %eax
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
	cmpl	%edx, %esi
	jl	.L13
	ret
.L13:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %r12
	movl	%esi, %r13d
	movl	%edx, %ebx
	call	partition
	movl	%eax, %ebp
	leal	-1(%rax), %edx
	movl	%r13d, %esi
	movq	%r12, %rdi
	call	quicksort
	leal	1(%rbp), %esi
	movl	%ebx, %edx
	movq	%r12, %rdi
	call	quicksort
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
