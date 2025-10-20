	.file	"tinycrypt_hmac_prng.c"
	.text
	.type	update, @function
update:
.LFB15:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	movl	$32, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	240(%rdi), %rax
	movb	$0, 22(%rsp)
	movq	%rax, %rsi
	movb	$1, 23(%rsp)
	movq	%rax, (%rsp)
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	leaq	272(%rbx), %rax
	movl	$32, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)
	call	tc_hmac_update@PLT
	leaq	22(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	testq	%rbp, %rbp
	je	.L2
	testl	%r12d, %r12d
	je	.L2
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
.L2:
	testq	%r13, %r13
	setne	%r15b
	testl	%r14d, %r14d
	setne	%al
	andb	%al, %r15b
	je	.L3
	movl	%r14d, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
.L3:
	movq	(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$32, %esi
	call	tc_hmac_final@PLT
	movq	(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movq	8(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	8(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$32, %esi
	call	tc_hmac_final@PLT
	testq	%rbp, %rbp
	je	.L1
	testl	%r12d, %r12d
	je	.L1
	movq	(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movq	8(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	testb	%r15b, %r15b
	je	.L5
	movl	%r14d, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
.L5:
	movq	(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$32, %esi
	call	tc_hmac_final@PLT
	movq	(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movq	8(%rsp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	8(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$32, %esi
	call	tc_hmac_final@PLT
.L1:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	addq	$40, %rsp
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
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L25
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	testq	%rsi, %rsi
	je	.L21
	movq	%rdi, %rbx
	movl	%edx, %r12d
	leaq	240(%rdi), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	call	_set@PLT
	movl	$32, %edx
	movl	$1, %esi
	leaq	272(%rbx), %rdi
	call	_set@PLT
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	update
	xorl	%eax, %eax
	movl	%eax, 304(%rbx)
	movl	$1, %eax
.L21:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L25:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB17:
	.cfi_startproc
	endbr64
	testq	%rsi, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	sete	%al
	cmpl	$31, %edx
	setbe	%dil
	orb	%dil, %al
	jne	.L33
	testq	%rbx, %rbx
	je	.L33
	testq	%rcx, %rcx
	je	.L31
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.L29
	jmp	.L37
.L31:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
.L37:
	movq	%rbx, %rdi
	call	update
	movl	$1, %eax
	movl	$-1, 304(%rbx)
	jmp	.L29
.L33:
	xorl	%eax, %eax
.L29:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L46
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	pushq	%rcx
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	je	.L38
	leal	-1(%rsi), %edx
	movl	%esi, %ebp
	xorl	%eax, %eax
	cmpl	$524287, %edx
	ja	.L38
	movl	304(%rbx), %edx
	orl	$-1, %eax
	testl	%edx, %edx
	je	.L38
	decl	%edx
	movq	%rdi, %r13
	leaq	240(%rbx), %r14
	movl	%edx, 304(%rbx)
.L40:
	movl	$32, %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movl	$32, %r12d
	call	tc_hmac_set_key@PLT
	leaq	272(%rbx), %r15
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r15, %rdi
	call	tc_hmac_final@PLT
	cmpl	%r12d, %ebp
	movq	%r13, %rdi
	movq	%r15, %rdx
	cmovbe	%ebp, %r12d
	movl	%r12d, %ecx
	movl	%r12d, %esi
	movl	%r12d, %r12d
	call	_copy@PLT
	movl	$32, %eax
	addq	%r12, %r13
	cmpl	%eax, %ebp
	cmovb	%eax, %ebp
	subl	$32, %ebp
	jne	.L40
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	update
	movl	$1, %eax
.L38:
	popq	%rdx
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
.L46:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
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
