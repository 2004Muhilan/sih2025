	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       # -- Begin function tc_aes128_set_decrypt_key
	.p2align	4, 0x90
	.type	tc_aes128_set_decrypt_key,@function
tc_aes128_set_decrypt_key:              # @tc_aes128_set_decrypt_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tc_aes128_set_encrypt_key@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_decrypt                  # -- Begin function tc_aes_decrypt
	.p2align	4, 0x90
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         # @tc_aes_decrypt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_2:
	cmpq	$0, -24(%rbp)
	jne	.LBB1_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_4:
	cmpq	$0, -32(%rbp)
	jne	.LBB1_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_6:
	jmp	.LBB1_7
.LBB1_7:
	jmp	.LBB1_8
.LBB1_8:
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$160, %rsi
	callq	add_round_key
	movl	$9, -52(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jbe	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	-48(%rbp), %rdi
	callq	inv_shift_rows
	leaq	-48(%rbp), %rdi
	callq	inv_sub_bytes
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	shlq	$2, %rax
	addq	%rax, %rsi
	callq	add_round_key
	leaq	-48(%rbp), %rdi
	callq	inv_mix_columns
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	leaq	-48(%rbp), %rdi
	callq	inv_shift_rows
	leaq	-48(%rbp), %rdi
	callq	inv_sub_bytes
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	add_round_key
	movq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, -4(%rbp)
.LBB1_13:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add_round_key
	.type	add_round_key,@function
add_round_key:                          # @add_round_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 2(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 3(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 5(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	6(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 6(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	7(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 7(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	9(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 9(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	10(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 10(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 11(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 12(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 13(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 14(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 15(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	add_round_key, .Lfunc_end2-add_round_key
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function inv_shift_rows
	.type	inv_shift_rows,@function
inv_shift_rows:                         # @inv_shift_rows
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -32(%rbp)
	movq	-8(%rbp), %rax
	movb	13(%rax), %al
	movb	%al, -31(%rbp)
	movq	-8(%rbp), %rax
	movb	10(%rax), %al
	movb	%al, -30(%rbp)
	movq	-8(%rbp), %rax
	movb	7(%rax), %al
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movb	4(%rax), %al
	movb	%al, -28(%rbp)
	movq	-8(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -27(%rbp)
	movq	-8(%rbp), %rax
	movb	14(%rax), %al
	movb	%al, -26(%rbp)
	movq	-8(%rbp), %rax
	movb	11(%rax), %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rax
	movb	8(%rax), %al
	movb	%al, -24(%rbp)
	movq	-8(%rbp), %rax
	movb	5(%rax), %al
	movb	%al, -23(%rbp)
	movq	-8(%rbp), %rax
	movb	2(%rax), %al
	movb	%al, -22(%rbp)
	movq	-8(%rbp), %rax
	movb	15(%rax), %al
	movb	%al, -21(%rbp)
	movq	-8(%rbp), %rax
	movb	12(%rax), %al
	movb	%al, -20(%rbp)
	movq	-8(%rbp), %rax
	movb	9(%rax), %al
	movb	%al, -19(%rbp)
	movq	-8(%rbp), %rax
	movb	6(%rax), %al
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	movb	3(%rax), %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	inv_shift_rows, .Lfunc_end3-inv_shift_rows
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function inv_sub_bytes
	.type	inv_sub_bytes,@function
inv_sub_bytes:                          # @inv_sub_bytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jae	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	leaq	inv_sbox(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	inv_sub_bytes, .Lfunc_end4-inv_sub_bytes
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function inv_mix_columns
	.type	inv_mix_columns,@function
inv_mix_columns:                        # @inv_mix_columns
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rsi
	addq	$4, %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$12, %rdi
	movq	-8(%rbp), %rsi
	addq	$12, %rsi
	callq	mult_row_column
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	inv_mix_columns, .Lfunc_end5-inv_mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        # @mult_row_column
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-128(%rbp), %eax                # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-124(%rbp), %eax                # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movl	-120(%rbp), %ecx                # 4-byte Reload
	movb	%al, %dl
	movl	-116(%rbp), %eax                # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	-112(%rbp), %ecx                # 4-byte Reload
	movb	%al, %dl
	movl	-108(%rbp), %eax                # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	2(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-104(%rbp), %eax                # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-100(%rbp), %eax                # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movl	-96(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movl	-88(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	2(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	-80(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-76(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-72(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-68(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movl	-60(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-56(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movl	-52(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-48(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	-40(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-32(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	2(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-28(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movl	-24(%rbp), %ecx                 # 4-byte Reload
	movb	%al, %dl
	movl	-20(%rbp), %eax                 # 4-byte Reload
	movzbl	%dl, %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 3(%rax)
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	mult_row_column, .Lfunc_end6-mult_row_column
	.cfi_endproc
                                        # -- End function
	.type	inv_sbox,@object                # @inv_sbox
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tc_aes128_set_encrypt_key
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym inv_shift_rows
	.addrsig_sym inv_sub_bytes
	.addrsig_sym inv_mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym inv_sbox
