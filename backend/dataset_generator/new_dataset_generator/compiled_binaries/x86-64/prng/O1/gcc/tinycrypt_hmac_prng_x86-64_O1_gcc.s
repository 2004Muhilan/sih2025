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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movl	%edx, %r14d
	movq	%rcx, %r15
	movl	%r8d, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movb	$0, 22(%rsp)
	movb	$1, 23(%rsp)
	leaq	240(%rdi), %r13
	movl	$32, %edx
	movq	%r13, %rsi
	call	tc_hmac_set_key@PLT
	movq	%rbx, %rdi
	call	tc_hmac_init@PLT
	leaq	272(%rbx), %r12
	movl	$32, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	leaq	22(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	testq	%rbp, %rbp
	je	.L2
	testl	%r14d, %r14d
	jne	.L11
.L2:
	testq	%r15, %r15
	setne	%dl
	cmpl	$0, 8(%rsp)
	setne	%al
	andb	%al, %dl
	movb	%dl, 15(%rsp)
	jne	.L3
.L6:
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
	je	.L8
	movl	8(%rsp), %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	jmp	.L8
.L11:
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	testq	%r15, %r15
	je	.L5
	cmpl	$0, 8(%rsp)
	jne	.L3
.L5:
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
.L8:
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
	jne	.L12
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
.L3:
	.cfi_restore_state
	movl	8(%rsp), %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	tc_hmac_update@PLT
	movb	$1, 15(%rsp)
	jmp	.L6
.L12:
	call	__stack_chk_fail@PLT
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
	je	.L17
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movl	%edx, %r12d
	movl	$0, %eax
	testq	%rsi, %rsi
	je	.L13
	leaq	240(%rdi), %rdi
	movl	$32, %edx
	movl	$0, %esi
	call	_set@PLT
	leaq	272(%rbx), %rdi
	movl	$32, %edx
	movl	$1, %esi
	call	_set@PLT
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	update
	movl	$0, 304(%rbx)
	movl	$1, %eax
.L13:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	movl	$0, %eax
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	sete	%al
	cmpl	$31, %edx
	setbe	%dil
	orb	%dil, %al
	jne	.L25
	testq	%rbx, %rbx
	je	.L25
	testq	%rcx, %rcx
	je	.L23
	movl	$0, %eax
	testl	%r8d, %r8d
	je	.L21
	movq	%rbx, %rdi
	call	update
.L24:
	movl	$-1, 304(%rbx)
	movl	$1, %eax
	jmp	.L21
.L23:
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rbx, %rdi
	call	update
	jmp	.L24
.L25:
	movl	$0, %eax
.L21:
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
	je	.L36
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %r13
	movl	%esi, %r12d
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L31
	leal	-1(%rsi), %edx
	movl	$0, %eax
	cmpl	$524287, %edx
	ja	.L28
	movl	304(%rbp), %edx
	movl	$-1, %eax
	testl	%edx, %edx
	je	.L28
	subl	$1, %edx
	movl	%edx, 304(%rbp)
	leaq	240(%rbp), %r15
.L30:
	movl	$32, %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	tc_hmac_set_key@PLT
	movq	%rbp, %rdi
	call	tc_hmac_init@PLT
	leaq	272(%rbp), %r14
	movl	$32, %edx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	tc_hmac_update@PLT
	movq	%rbp, %rdx
	movl	$32, %esi
	movq	%r14, %rdi
	call	tc_hmac_final@PLT
	movl	$32, %ebx
	cmpl	%ebx, %r12d
	cmovbe	%r12d, %ebx
	movl	%ebx, %ecx
	movq	%r14, %rdx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	_copy@PLT
	movl	%ebx, %ebx
	addq	%rbx, %r13
	movl	$32, %eax
	cmpl	%eax, %r12d
	cmovnb	%r12d, %eax
	subl	$32, %eax
	movl	%eax, %r12d
	jne	.L30
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rbp, %rdi
	call	update
	movl	$1, %eax
.L28:
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
.L31:
	.cfi_restore_state
	movl	$0, %eax
	jmp	.L28
.L36:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movl	$0, %eax
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
