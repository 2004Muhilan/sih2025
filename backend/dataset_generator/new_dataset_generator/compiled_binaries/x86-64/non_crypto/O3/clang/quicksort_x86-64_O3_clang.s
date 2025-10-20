	.text
	.file	"quicksort.c"
	.globl	swap                            # -- Begin function swap
	.p2align	4, 0x90
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
	.p2align	4, 0x90
	.type	partition,@function
partition:                              # @partition
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	movslq	%edx, %rcx
	movl	(%rdi,%rcx,4), %r8d
	cmpl	%ecx, %esi
	jge	.LBB1_8
# %bb.1:
	leal	-1(%rsi), %eax
	movslq	%esi, %r9
	subl	%esi, %edx
	testb	$1, %dl
	jne	.LBB1_3
# %bb.2:
	movq	%r9, %rdx
	leaq	-1(%rcx), %rsi
	cmpq	%r9, %rsi
	jne	.LBB1_9
	jmp	.LBB1_7
.LBB1_3:
	movl	(%rdi,%r9,4), %edx
	cmpl	%r8d, %edx
	jge	.LBB1_5
# %bb.4:
	movl	(%rdi,%r9,4), %eax
	movl	%edx, (%rdi,%r9,4)
	movl	%eax, (%rdi,%r9,4)
	movl	%esi, %eax
.LBB1_5:
	leaq	1(%r9), %rdx
	leaq	-1(%rcx), %rsi
	cmpq	%r9, %rsi
	jne	.LBB1_9
.LBB1_7:
	movl	(%rdi,%rcx,4), %r8d
	incl	%eax
	movl	%eax, %esi
.LBB1_8:
	movslq	%esi, %rax
	movl	(%rdi,%rax,4), %edx
	movl	%r8d, (%rdi,%rax,4)
	movl	%edx, (%rdi,%rcx,4)
                                        # kill: def $eax killed $eax killed $rax
	retq
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	je	.LBB1_7
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %esi
	cmpl	%r8d, %esi
	jl	.LBB1_10
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movl	4(%rdi,%rdx,4), %esi
	cmpl	%r8d, %esi
	jge	.LBB1_13
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_9 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movl	4(%rdi,%r9,4), %r10d
	movl	%esi, 4(%rdi,%r9,4)
	movl	%r10d, (%rdi,%rdx,4)
	movl	4(%rdi,%rdx,4), %esi
	cmpl	%r8d, %esi
	jge	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movl	4(%rdi,%r9,4), %r10d
	movl	%esi, 4(%rdi,%r9,4)
	movl	%r10d, 4(%rdi,%rdx,4)
	jmp	.LBB1_13
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.cfi_endproc
                                        # -- End function
	.globl	quicksort                       # -- Begin function quicksort
	.p2align	4, 0x90
	.type	quicksort,@function
quicksort:                              # @quicksort
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	cmpl	%edx, %esi
	jge	.LBB2_15
# %bb.1:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rdi, %r14
	movslq	%edx, %r12
	leaq	-1(%r12), %r13
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%r12,4), %eax
	movslq	%ecx, %r15
	movl	4(%r14,%r15,4), %ecx
	movl	%eax, 4(%r14,%r15,4)
	movl	%ecx, (%r14,%r12,4)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r15d, %edx
	callq	quicksort
	addl	$2, %r15d
	movl	%r15d, %esi
	cmpl	%ebx, %r15d
	jge	.LBB2_14
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	movl	(%r14,%r12,4), %eax
	leal	-1(%rsi), %ecx
	movslq	%esi, %rdi
	movl	%ebx, %edx
	subl	%edi, %edx
	testb	$1, %dl
	jne	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, %rdx
	cmpq	%rdi, %r13
	jne	.LBB2_8
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%rdi,4), %edx
	cmpl	%eax, %edx
	jge	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movl	(%r14,%rdi,4), %ecx
	movl	%edx, (%r14,%rdi,4)
	movl	%ecx, (%r14,%rdi,4)
	movl	%esi, %ecx
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%rdi), %rdx
	cmpq	%rdi, %r13
	jne	.LBB2_8
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_12:                               #   in Loop: Header=BB2_8 Depth=2
	addq	$2, %rdx
	cmpq	%rdx, %r12
	je	.LBB2_13
.LBB2_8:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jl	.LBB2_9
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=2
	movl	4(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jge	.LBB2_12
	jmp	.LBB2_11
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=2
	movslq	%ecx, %r8
	incl	%ecx
	movl	4(%r14,%r8,4), %r9d
	movl	%edi, 4(%r14,%r8,4)
	movl	%r9d, (%r14,%rdx,4)
	movl	4(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jge	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_8 Depth=2
	movslq	%ecx, %r8
	incl	%ecx
	movl	4(%r14,%r8,4), %r9d
	movl	%edi, 4(%r14,%r8,4)
	movl	%r9d, 4(%r14,%rdx,4)
	jmp	.LBB2_12
.LBB2_14:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB2_15:
	retq
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
