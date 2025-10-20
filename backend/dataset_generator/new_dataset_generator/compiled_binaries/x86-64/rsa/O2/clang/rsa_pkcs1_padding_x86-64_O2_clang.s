	.text
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   # -- Begin function rsa_pkcs1_pad
	.p2align	4, 0x90
	.type	rsa_pkcs1_pad,@function
rsa_pkcs1_pad:                          # @rsa_pkcs1_pad
	.cfi_startproc
# %bb.0:
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
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movw	$512, (%rdx)                    # imm = 0x200
	movq	%rsi, %r13
	notq	%r13
	addq	%rcx, %r13
	cmpq	$3, %r13
	jb	.LBB0_2
# %bb.1:
	leaq	2(%r12), %rdi
	movq	%r14, %rdx
	subq	%rbx, %rdx
	addq	$-3, %rdx
	movl	$255, %esi
	callq	memset@PLT
.LBB0_2:
	movb	$0, (%r12,%r13)
	addq	%r12, %r14
	subq	%rbx, %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
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
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
