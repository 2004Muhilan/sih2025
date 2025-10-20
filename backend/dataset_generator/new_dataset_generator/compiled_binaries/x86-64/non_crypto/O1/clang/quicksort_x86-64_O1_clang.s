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
	movslq	%edx, %rcx
	cmpl	%ecx, %esi
	jge	.LBB1_6
# %bb.1:
	movl	(%rdi,%rcx,4), %eax
	movslq	%esi, %rdx
	decl	%esi
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	incq	%rdx
	cmpq	%rdx, %rcx
	je	.LBB1_5
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movslq	%esi, %r9
	incl	%esi
	movl	4(%rdi,%r9,4), %r10d
	movl	%r8d, 4(%rdi,%r9,4)
	movl	%r10d, (%rdi,%rdx,4)
	jmp	.LBB1_4
.LBB1_5:
	incl	%esi
.LBB1_6:
	movslq	%esi, %rax
	movl	(%rdi,%rax,4), %edx
	movl	(%rdi,%rcx,4), %esi
	movl	%esi, (%rdi,%rax,4)
	movl	%edx, (%rdi,%rcx,4)
                                        # kill: def $eax killed $eax killed $rax
	retq
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %r14
	movslq	%edx, %r12
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	%ecx, %r15
	movl	4(%r14,%r15,4), %eax
	movl	(%r14,%r12,4), %ecx
	movl	%ecx, 4(%r14,%r15,4)
	movl	%eax, (%r14,%r12,4)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r15d, %edx
	callq	quicksort
	addl	$2, %r15d
	movl	%r15d, %esi
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	%ebx, %esi
	jge	.LBB2_7
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	(%r14,%r12,4), %eax
	leal	-1(%rsi), %ecx
	movslq	%esi, %rdx
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=2
	incq	%rdx
	cmpq	%rdx, %r12
	je	.LBB2_6
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rdx,4), %edi
	cmpl	%eax, %edi
	jge	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movslq	%ecx, %r8
	incl	%ecx
	movl	4(%r14,%r8,4), %r9d
	movl	%edi, 4(%r14,%r8,4)
	movl	%r9d, (%r14,%rdx,4)
	jmp	.LBB2_5
.LBB2_7:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
