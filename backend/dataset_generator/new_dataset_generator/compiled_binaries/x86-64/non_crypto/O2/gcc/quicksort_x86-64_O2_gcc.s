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
	jle	.L38
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
.L27:
	movl	%r12d, %edx
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	partition
	leal	-1(%rax), %r13d
	movl	%eax, %r14d
	cmpl	%ebp, %r13d
	jle	.L11
	movl	%eax, 28(%rsp)
	movl	%ebp, %r14d
	movq	%rbx, %rbp
	movl	%r13d, %ebx
.L26:
	movl	%ebx, %edx
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	partition
	leal	-1(%rax), %r15d
	movl	%eax, %r13d
	cmpl	%r14d, %r15d
	jle	.L12
	movl	%ebx, 32(%rsp)
	movl	%r12d, 36(%rsp)
	movl	%r14d, %r12d
.L25:
	movl	%r12d, %esi
	movl	%r15d, %edx
	movq	%rbp, %rdi
	call	partition
	leal	-1(%rax), %esi
	movl	%esi, 20(%rsp)
	cmpl	%r12d, %esi
	jle	.L13
	movl	%eax, 40(%rsp)
	movl	%r12d, %eax
	movl	%r15d, %r12d
	movl	%eax, %r15d
.L24:
	movl	20(%rsp), %edx
	movl	%r15d, %esi
	movq	%rbp, %rdi
	call	partition
	leal	-1(%rax), %ebx
	cmpl	%r15d, %ebx
	jle	.L14
	movl	%r13d, 44(%rsp)
	movl	%eax, 48(%rsp)
	movl	%ebx, %eax
	movl	%r12d, %ebx
	movl	%eax, %r12d
.L23:
	movl	%r12d, %edx
	movl	%r15d, %esi
	movq	%rbp, %rdi
	call	partition
	leal	-1(%rax), %r14d
	movl	%eax, %r13d
	cmpl	%r15d, %r14d
	jle	.L15
.L22:
	movl	%r14d, %edx
	movl	%r15d, %esi
	movq	%rbp, %rdi
	call	partition
	movl	%eax, 8(%rsp)
	subl	$1, %eax
	movl	%eax, 12(%rsp)
	cmpl	%r15d, %eax
	jle	.L16
	movl	%r14d, %r9d
	movl	%r12d, %r14d
	movq	%rbp, %r12
	movl	%r13d, %ebp
	movl	%ebx, %r13d
.L21:
	movl	12(%rsp), %edx
	movl	%r15d, %esi
	movq	%r12, %rdi
	movl	%r9d, 16(%rsp)
	call	partition
	movl	16(%rsp), %r9d
	leal	-1(%rax), %ebx
	movl	%eax, 24(%rsp)
	cmpl	%r15d, %ebx
	jle	.L17
	movl	%ebp, 16(%rsp)
	movl	%r15d, %ebp
	movl	%r9d, %r15d
.L20:
	movl	%ebx, %edx
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	partition
	leal	-1(%rax), %r8d
	movl	%eax, %ecx
	cmpl	%ebp, %r8d
	jle	.L18
	movl	%ebx, %r9d
	movl	%ebp, %ebx
.L19:
	movl	%r8d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	movl	%ecx, 60(%rsp)
	movl	%r9d, 56(%rsp)
	movl	%r8d, 52(%rsp)
	call	partition
	movl	%ebx, %esi
	movq	%r12, %rdi
	leal	-1(%rax), %edx
	movl	%eax, %ebp
	call	quicksort
	movl	52(%rsp), %r8d
	leal	1(%rbp), %ebx
	movl	60(%rsp), %ecx
	movl	56(%rsp), %r9d
	cmpl	%ebx, %r8d
	jg	.L19
	movl	%r9d, %ebx
.L18:
	leal	1(%rcx), %ebp
	cmpl	%ebp, %ebx
	jg	.L20
	movl	16(%rsp), %ebp
	movl	%r15d, %r9d
.L17:
	movl	24(%rsp), %r15d
	addl	$1, %r15d
	cmpl	%r15d, 12(%rsp)
	jg	.L21
	movl	%r13d, %ebx
	movl	%ebp, %r13d
	movq	%r12, %rbp
	movl	%r14d, %r12d
	movl	%r9d, %r14d
.L16:
	movl	8(%rsp), %r15d
	addl	$1, %r15d
	cmpl	%r15d, %r14d
	jg	.L22
.L15:
	leal	1(%r13), %r15d
	cmpl	%r15d, %r12d
	jg	.L23
	movl	44(%rsp), %r13d
	movl	48(%rsp), %eax
	movl	%ebx, %r12d
.L14:
	leal	1(%rax), %r15d
	cmpl	%r15d, 20(%rsp)
	jg	.L24
	movl	40(%rsp), %eax
	movl	%r12d, %r15d
.L13:
	leal	1(%rax), %r12d
	cmpl	%r12d, %r15d
	jg	.L25
	movl	32(%rsp), %ebx
	movl	36(%rsp), %r12d
.L12:
	leal	1(%r13), %r14d
	cmpl	%r14d, %ebx
	jg	.L26
	movl	28(%rsp), %r14d
	movq	%rbp, %rbx
.L11:
	leal	1(%r14), %ebp
	cmpl	%r12d, %ebp
	jl	.L27
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
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
