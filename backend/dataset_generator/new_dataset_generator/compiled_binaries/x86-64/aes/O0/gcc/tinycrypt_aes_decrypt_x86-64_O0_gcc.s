	.file	"tinycrypt_aes_decrypt.c"
	.text
	.section	.rodata
	.align 32
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.string	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253"
	.ascii	"\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017"
	.ascii	"\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034"
	.ascii	"u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V"
	.ascii	">K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\307"
	.ascii	"1\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311"
	.ascii	"\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004"
	.ascii	"~\272w\326&\341i\024cU!\f}"
	.text
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tc_aes128_set_encrypt_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.type	mult_row_column, @function
mult_row_column:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movl	%ebx, %r12d
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	xorl	%eax, %r12d
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	movl	%r12d, %ebx
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	%edx, %r12d
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%ebx, %eax
	xorl	%eax, %r12d
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	xorl	%eax, %r12d
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	xorl	%r12d, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%edx, %ebx
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	xorl	%eax, %ebx
	movl	%ebx, %r12d
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%ebx, %eax
	xorl	%eax, %r12d
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	xorl	%r12d, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	%edx, %r12d
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	movl	%r12d, %ebx
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	xorl	%eax, %ebx
	movl	%ebx, %r12d
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%ebx, %edx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	xorl	%r12d, %edx
	movb	%dl, (%rax)
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mult_row_column, .-mult_row_column
	.type	inv_mix_columns, @function
inv_mix_columns:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	12(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	inv_mix_columns, .-inv_mix_columns
	.type	add_round_key, @function
add_round_key:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$9, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$13, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$13, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$14, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$15, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$15, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_round_key, .-add_round_key
	.type	inv_sub_bytes, @function
inv_sub_bytes:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	leaq	inv_sbox(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$15, -4(%rbp)
	jbe	.L9
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.type	inv_shift_rows, @function
inv_shift_rows:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -32(%rbp)
	movq	-40(%rbp), %rax
	movzbl	13(%rax), %eax
	movb	%al, -31(%rbp)
	movq	-40(%rbp), %rax
	movzbl	10(%rax), %eax
	movb	%al, -30(%rbp)
	movq	-40(%rbp), %rax
	movzbl	7(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-40(%rbp), %rax
	movzbl	4(%rax), %eax
	movb	%al, -28(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -27(%rbp)
	movq	-40(%rbp), %rax
	movzbl	14(%rax), %eax
	movb	%al, -26(%rbp)
	movq	-40(%rbp), %rax
	movzbl	11(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-40(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	5(%rax), %eax
	movb	%al, -23(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -22(%rbp)
	movq	-40(%rbp), %rax
	movzbl	15(%rax), %eax
	movb	%al, -21(%rbp)
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	movb	%al, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	9(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-40(%rbp), %rax
	movzbl	6(%rax), %eax
	movb	%al, -18(%rbp)
	movq	-40(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -17(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	inv_shift_rows, .-inv_shift_rows
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L19
.L13:
	cmpq	$0, -64(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L19
.L15:
	cmpq	$0, -72(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L19
.L16:
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	movq	-72(%rbp), %rax
	leaq	160(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	movl	$9, -36(%rbp)
	jmp	.L17
.L18:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inv_shift_rows
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inv_sub_bytes
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %edx
	sall	$2, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inv_mix_columns
	subl	$1, -36(%rbp)
.L17:
	cmpl	$0, -36(%rbp)
	jne	.L18
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inv_shift_rows
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inv_sub_bytes
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set@PLT
	movl	$1, %eax
.L19:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
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
