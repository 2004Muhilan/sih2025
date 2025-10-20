	.file	"des_initial_permutation.c"
	.text
	.p2align 4
	.globl	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	IP(%rip), %r8
	movl	$64, %esi
	movabsq	$-9223372036854775808, %r9
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%esi, %eax
	subb	(%r8,%rcx), %al
	btq	%rax, %rdi
	jnc	.L2
	movq	%r9, %rax
	shrq	%cl, %rax
	orq	%rax, %rdx
.L2:
	addq	$1, %rcx
	cmpq	$64, %rcx
	jne	.L3
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.align 32
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
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
