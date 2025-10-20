	.file	"tinycrypt_hmac_prng.c"
	.text
	.p2align 4
	.type	update, @function
update:
.LFB15:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%r8d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r14d
	movl	$32, %edx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	240(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	movq	%r13, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	leaq	272(%rbx), %r12
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rcx, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movb	$0, 22(%rsp)
	movb	$1, 23(%rsp)
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movl	$1, %edx
	leaq	22(%rsp), %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	cmpq	$0, (%rsp)
	setne	%dl
	testl	%r15d, %r15d
	setne	%al
	andl	%eax, %edx
	movb	%dl, 15(%rsp)
	testq	%rbp, %rbp
	je	.L2
	testl	%r14d, %r14d
	jne	.L20
.L2:
	cmpb	$0, 15(%rsp)
	jne	.L5
.L4:
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	call	tc_hmac_final@PLT
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r12, %rdi
	call	tc_hmac_final@PLT
	testq	%rbp, %rbp
	je	.L1
	testl	%r14d, %r14d
	je	.L1
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	cmpb	$0, 15(%rsp)
	je	.L7
	movq	(%rsp), %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L20:
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	cmpb	$0, 15(%rsp)
	jne	.L5
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	call	tc_hmac_final@PLT
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r12, %rdi
	call	tc_hmac_final@PLT
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
.L7:
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	call	tc_hmac_final@PLT
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movq	%rbx, %rdx
	movl	$32, %esi
	movq	%r12, %rdi
	call	tc_hmac_final@PLT
.L1:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$40, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movq	(%rsp), %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	jmp	.L4
.L21:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.p2align 4
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L26
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
	je	.L22
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
	movl	$1, %eax
	movl	$0, 304(%rbx)
.L22:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.p2align 4
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
	jne	.L34
	testq	%rbx, %rbx
	je	.L34
	testq	%rcx, %rcx
	je	.L32
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jne	.L38
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
.L38:
	movq	%rbx, %rdi
	call	update
	movl	$1, %eax
	movl	$-1, 304(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.p2align 4
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L48
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
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	je	.L42
	movl	%esi, %r15d
	xorl	%eax, %eax
	leal	-1(%r15), %edx
	cmpl	$524287, %edx
	ja	.L39
	movl	304(%rbp), %edx
	movl	$-1, %eax
	testl	%edx, %edx
	je	.L39
	subl	$1, %edx
	movq	%rdi, %r12
	leaq	240(%rbp), %r14
	movl	%edx, 304(%rbp)
	leaq	272(%rbp), %r13
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$32, %edx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movl	$32, %ebx
	call	tc_hmac_set_key@PLT
	movq	%rbp, %rdi
	call	tc_hmac_init@PLT
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	tc_hmac_update@PLT
	movq	%rbp, %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	call	tc_hmac_final@PLT
	cmpl	%ebx, %r15d
	movq	%r12, %rdi
	movq	%r13, %rdx
	cmovbe	%r15, %rbx
	movl	%ebx, %ecx
	movl	%ebx, %esi
	addq	%rbx, %r12
	call	_copy@PLT
	movl	$32, %eax
	cmpl	%eax, %r15d
	cmovnb	%r15d, %eax
	subl	$32, %eax
	movl	%eax, %r15d
	jne	.L41
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	update
	movl	$1, %eax
.L39:
	addq	$8, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
	.p2align 4,,10
	.p2align 3
.L48:
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
