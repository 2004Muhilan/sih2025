	.text
	.file	"quicksort.c"
	.globl	swap                            # -- Begin function swap
	.type	swap,@function
swap:                                   # @swap
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	movl	%eax, (%rsi)
	retq
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cfi_endproc
                                        # -- End function
	.globl	partition                       # -- Begin function partition
	.type	partition,@function
partition:                              # @partition
	.cfi_startproc
# %bb.0:
	movslq	%edx, %rcx
	movl	(%rdi,%rcx,4), %edx
	cmpl	%ecx, %esi
	jge	.LBB1_6
# %bb.1:
	movslq	%esi, %rax
	decl	%esi
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %r8d
	cmpl	%edx, %r8d
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movslq	%esi, %r9
	incl	%esi
	movl	4(%rdi,%r9,4), %r10d
	movl	%r8d, 4(%rdi,%r9,4)
	movl	%r10d, (%rdi,%rax,4)
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB1_2
# %bb.5:
	movl	(%rdi,%rcx,4), %edx
	incl	%esi
.LBB1_6:
	movslq	%esi, %rax
	movl	(%rdi,%rax,4), %esi
	movl	%edx, (%rdi,%rax,4)
	movl	%esi, (%rdi,%rcx,4)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.cfi_endproc
                                        # -- End function
	.globl	quicksort                       # -- Begin function quicksort
	.type	quicksort,@function
quicksort:                              # @quicksort
	.cfi_startproc
# %bb.0:
	cmpl	%edx, %esi
	jge	.LBB2_4
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	callq	partition
	movl	%eax, %r15d
	leal	-1(%r15), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	quicksort
	incl	%r15d
	movl	%r15d, %ebp
	cmpl	%ebx, %r15d
	jl	.LBB2_2
# %bb.3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB2_4:
	retq
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
