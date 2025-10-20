	.file	"rc4_stream_cipher.c"
	.text
	.globl	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
.LFB14:
	.cfi_startproc
	endbr64
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
.L2:
	movb	%al, (%rsp,%rax)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L2
	testq	%rsi, %rsi
	je	.L1
	movq	%rdi, %rcx
	leaq	(%rdi,%rsi), %r10
	movl	$0, %edi
	movl	$0, %esi
.L4:
	addl	$1, %esi
	movzbl	%sil, %edx
	movl	%edx, %esi
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %eax
	addl	%eax, %edi
	movzbl	%dil, %r8d
	movzbl	(%rsp,%r8), %r9d
	movb	%r9b, (%rsp,%rdx)
	movb	%al, (%rsp,%r8)
	addb	(%rsp,%rdx), %al
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %eax
	xorb	%al, (%rcx)
	addq	$1, %rcx
	cmpq	%r10, %rcx
	jne	.L4
.L1:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L9
	addq	$280, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	rc4_stream, .-rc4_stream
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
