	.file	"aes_sub_bytes.c"
	.text
	.globl	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	leaq	sbox(%rip), %rcx
.L2:
	movzbl	(%rdi,%rax), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_sub_bytes, .-aes_sub_bytes
	.globl	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
.LFB1:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	leaq	inv_sbox.0(%rip), %rcx
.L6:
	movzbl	(%rdi,%rax), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L6
	ret
	.cfi_endproc
.LFE1:
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align 32
	.type	inv_sbox.0, @object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.string	"R\tj\32506\2458"
	.zero	247
	.align 32
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	239
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
