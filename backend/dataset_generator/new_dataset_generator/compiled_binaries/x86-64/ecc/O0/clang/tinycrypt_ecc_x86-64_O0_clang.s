	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	4, 0x90
	.type	uECC_set_rng,@function
uECC_set_rng:                           # @uECC_set_rng
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, g_rng_function(%rip)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	uECC_set_rng, .Lfunc_end0-uECC_set_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.p2align	4, 0x90
	.type	uECC_get_rng,@function
uECC_get_rng:                           # @uECC_get_rng
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	g_rng_function(%rip), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	uECC_get_rng, .Lfunc_end1-uECC_get_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.p2align	4, 0x90
	.type	uECC_curve_private_key_size,@function
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	uECC_curve_private_key_size, .Lfunc_end2-uECC_curve_private_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.p2align	4, 0x90
	.type	uECC_curve_public_key_size,@function
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %eax
	shll	%eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	uECC_curve_public_key_size, .Lfunc_end3-uECC_curve_public_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.p2align	4, 0x90
	.type	uECC_vli_clear,@function
uECC_vli_clear:                         # @uECC_vli_clear
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movb	$0, -10(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	-10(%rbp), %eax
	movsbl	-9(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movsbq	-10(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movb	-10(%rbp), %al
	addb	$1, %al
	movb	%al, -10(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	uECC_vli_clear, .Lfunc_end4-uECC_vli_clear
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.p2align	4, 0x90
	.type	uECC_vli_isZero,@function
uECC_vli_isZero:                        # @uECC_vli_isZero
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	$0, -16(%rbp)
	movb	$0, -17(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	-17(%rbp), %eax
	movsbl	-9(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movsbq	-17(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movb	-17(%rbp), %al
	addb	$1, %al
	movb	%al, -17(%rbp)
	jmp	.LBB5_1
.LBB5_4:
	cmpl	$0, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	uECC_vli_isZero, .Lfunc_end5-uECC_vli_isZero
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.p2align	4, 0x90
	.type	uECC_vli_testBit,@function
uECC_vli_testBit:                       # @uECC_vli_testBit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movq	%rdi, -8(%rbp)
	movw	%ax, -10(%rbp)
	movq	-8(%rbp), %rax
	movswl	-10(%rbp), %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movswl	-10(%rbp), %ecx
	andl	$31, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	andl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	uECC_vli_testBit, .Lfunc_end6-uECC_vli_testBit
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.p2align	4, 0x90
	.type	uECC_vli_numBits,@function
uECC_vli_numBits:                       # @uECC_vli_numBits
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	vli_numDigits
	movb	%al, -29(%rbp)
	movsbl	-29(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB7_2
# %bb.1:
	movw	$0, -2(%rbp)
	jmp	.LBB7_7
.LBB7_2:
	movq	-16(%rbp), %rax
	movsbl	-29(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB7_6
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movl	-28(%rbp), %eax
	shrl	%eax
	movl	%eax, -28(%rbp)
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_3
.LBB7_6:
	movsbl	-29(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	shll	$5, %eax
	addl	-24(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -2(%rbp)
.LBB7_7:
	movswl	-2(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function vli_numDigits
	.type	vli_numDigits,@function
vli_numDigits:                          # @vli_numDigits
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -10(%rbp)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	-10(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -11(%rbp)                  # 1-byte Spill
	jl	.LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movsbq	-10(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	sete	%al
	movb	%al, -11(%rbp)                  # 1-byte Spill
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	movb	-11(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_6
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	movb	-10(%rbp), %al
	addb	$-1, %al
	movb	%al, -10(%rbp)
	jmp	.LBB8_1
.LBB8_6:
	movsbl	-10(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	vli_numDigits, .Lfunc_end8-vli_numDigits
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	4, 0x90
	.type	uECC_vli_set,@function
uECC_vli_set:                           # @uECC_vli_set
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movb	$0, -18(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	-18(%rbp), %eax
	movsbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movsbq	-18(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movsbq	-18(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movb	-18(%rbp), %al
	addb	$1, %al
	movb	%al, -18(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	uECC_vli_set, .Lfunc_end9-uECC_vli_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	4, 0x90
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -25(%rbp)
	movsbl	-25(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -26(%rbp)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-26(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB10_9
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movsbq	-26(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movsbq	-26(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jbe	.LBB10_4
# %bb.3:
	movb	$1, -1(%rbp)
	jmp	.LBB10_10
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movsbq	-26(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movsbq	-26(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jae	.LBB10_6
# %bb.5:
	movb	$-1, -1(%rbp)
	jmp	.LBB10_10
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_8
.LBB10_8:                               #   in Loop: Header=BB10_1 Depth=1
	movb	-26(%rbp), %al
	addb	$-1, %al
	movb	%al, -26(%rbp)
	jmp	.LBB10_1
.LBB10_9:
	movb	$0, -1(%rbp)
.LBB10_10:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end10-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	4, 0x90
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         # @uECC_vli_equal
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movl	$0, -24(%rbp)
	movsbl	-17(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -25(%rbp)
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB11_4
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movsbq	-25(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movsbq	-25(%rbp), %rdx
	xorl	(%rcx,%rdx,4), %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	movb	-25(%rbp), %al
	addb	$-1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB11_1
.LBB11_4:
	cmpl	$0, -24(%rbp)
	sete	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	uECC_vli_equal, .Lfunc_end11-uECC_vli_equal
	.cfi_endproc
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	4, 0x90
	.type	cond_set,@function
cond_set:                               # @cond_set
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-8(%rbp), %ecx
	cmpl	$0, -12(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edx
	imull	%edx, %ecx
	orl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	cond_set, .Lfunc_end12-cond_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	4, 0x90
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           # @uECC_vli_sub
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	$0, -32(%rbp)
	movb	$0, -33(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-33(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movsbq	-33(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	cond_set
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movsbq	-33(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	movb	-33(%rbp), %al
	addb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB13_1
.LBB13_4:
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	uECC_vli_sub, .Lfunc_end13-uECC_vli_sub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	4, 0x90
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           # @uECC_vli_cmp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movsbl	-17(%rbp), %ecx
	callq	uECC_vli_sub
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	leaq	-64(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	uECC_vli_isZero
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-68(%rbp), %ecx
	shll	%ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	uECC_vli_cmp, .Lfunc_end14-uECC_vli_cmp
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	4, 0x90
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_add
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB15_2
# %bb.1:
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsbl	-33(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB15_3
.LBB15_2:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_sub
.LBB15_3:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	uECC_vli_modAdd, .Lfunc_end15-uECC_vli_modAdd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function uECC_vli_add
	.type	uECC_vli_add,@function
uECC_vli_add:                           # @uECC_vli_add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	$0, -32(%rbp)
	movb	$0, -33(%rbp)
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-33(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_4
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movsbq	-33(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbq	-33(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	cond_set
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movsbq	-33(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB16_1 Depth=1
	movb	-33(%rbp), %al
	addb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB16_1
.LBB16_4:
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	uECC_vli_add, .Lfunc_end16-uECC_vli_add
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	4, 0x90
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        # @uECC_vli_modSub
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_sub
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_add
.LBB17_2:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	uECC_vli_modSub, .Lfunc_end17-uECC_vli_modSub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	4, 0x90
	.type	uECC_vli_mmod,@function
uECC_vli_mmod:                          # @uECC_vli_mmod
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsbl	-25(%rbp), %eax
	shll	%eax
	shll	$5, %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movq	-24(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_numBits
	movw	%ax, %cx
	movl	-204(%rbp), %eax                # 4-byte Reload
	movswl	%cx, %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -182(%rbp)
	movswl	-182(%rbp), %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, -183(%rbp)
	movswl	-182(%rbp), %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
	movb	%dl, %al
	movb	%al, -184(%rbp)
	movl	$0, -188(%rbp)
	leaq	-96(%rbp), %rdi
	movsbl	-183(%rbp), %esi
	callq	uECC_vli_clear
	movsbl	-184(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB18_6
# %bb.1:
	movl	$0, -180(%rbp)
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB18_5
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	movq	-24(%rbp), %rax
	movl	-180(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movsbl	-184(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	orl	-188(%rbp), %ecx
	movsbl	-183(%rbp), %eax
	addl	-180(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movl	%ecx, -96(%rbp,%rax,4)
	movq	-24(%rbp), %rax
	movl	-180(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movsbl	-184(%rbp), %edx
	movl	$32, %ecx
	subl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, -188(%rbp)
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB18_2
.LBB18_5:
	jmp	.LBB18_7
.LBB18_6:
	leaq	-96(%rbp), %rdi
	movsbl	-183(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_set
.LBB18_7:
	movl	$1, -180(%rbp)
.LBB18_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
	movswl	-182(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB18_17
# %bb.9:                                #   in Loop: Header=BB18_8 Depth=1
	movl	$0, -192(%rbp)
	movb	$0, -193(%rbp)
.LBB18_10:                              #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	-193(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	shll	%ecx
	cmpl	%ecx, %eax
	jge	.LBB18_15
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=2
	movl	-180(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-193(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movsbq	-193(%rbp), %rcx
	subl	-96(%rbp,%rcx,4), %eax
	subl	-192(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	movl	-180(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	-176(%rbp,%rcx,8), %rcx
	movsbq	-193(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	je	.LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_10 Depth=2
	movl	-200(%rbp), %eax
	movl	-180(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	-176(%rbp,%rcx,8), %rcx
	movsbq	-193(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -192(%rbp)
.LBB18_13:                              #   in Loop: Header=BB18_10 Depth=2
	movl	-200(%rbp), %edx
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-193(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.14:                               #   in Loop: Header=BB18_10 Depth=2
	movb	-193(%rbp), %al
	addb	$1, %al
	movb	%al, -193(%rbp)
	jmp	.LBB18_10
.LBB18_15:                              #   in Loop: Header=BB18_8 Depth=1
	movl	-180(%rbp), %eax
	xorl	-192(%rbp), %eax
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -180(%rbp)
	leaq	-96(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
	movsbq	-25(%rbp), %rax
	movl	-96(%rbp,%rax,4), %ecx
	shll	$31, %ecx
	movsbl	-25(%rbp), %eax
	subl	$1, %eax
	cltq
	orl	-96(%rbp,%rax,4), %ecx
	movl	%ecx, -96(%rbp,%rax,4)
	leaq	-96(%rbp), %rdi
	movsbl	-25(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
# %bb.16:                               #   in Loop: Header=BB18_8 Depth=1
	movw	-182(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -182(%rbp)
	jmp	.LBB18_8
.LBB18_17:
	movq	-8(%rbp), %rdi
	movl	-180(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	-176(%rbp,%rax,8), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_set
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	uECC_vli_mmod, .Lfunc_end18-uECC_vli_mmod
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function uECC_vli_rshift1
	.type	uECC_vli_rshift1,@function
uECC_vli_rshift1:                       # @uECC_vli_rshift1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movsbl	-9(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -8(%rbp)
	cmpq	-24(%rbp), %rax
	jbe	.LBB19_3
# %bb.2:                                #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %ecx
	shrl	%ecx
	orl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-32(%rbp), %eax
	shll	$31, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_1
.LBB19_3:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	uECC_vli_rshift1, .Lfunc_end19-uECC_vli_rshift1
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	4, 0x90
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       # @uECC_vli_modMult
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_mult
	movq	-8(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_mmod
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	uECC_vli_modMult, .Lfunc_end20-uECC_vli_modMult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          # @uECC_vli_mult
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movb	$0, -42(%rbp)
.LBB21_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movsbl	-42(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_8
# %bb.2:                                #   in Loop: Header=BB21_1 Depth=1
	movb	$0, -41(%rbp)
.LBB21_3:                               #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	-41(%rbp), %eax
	movsbl	-42(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB21_6
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=2
	movq	-16(%rbp), %rax
	movsbq	-41(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movq	-24(%rbp), %rax
	movsbl	-42(%rbp), %ecx
	movsbl	-41(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	callq	muladd
# %bb.5:                                #   in Loop: Header=BB21_3 Depth=2
	movb	-41(%rbp), %al
	addb	$1, %al
	movb	%al, -41(%rbp)
	jmp	.LBB21_3
.LBB21_6:                               #   in Loop: Header=BB21_1 Depth=1
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movsbq	-42(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
# %bb.7:                                #   in Loop: Header=BB21_1 Depth=1
	movb	-42(%rbp), %al
	addb	$1, %al
	movb	%al, -42(%rbp)
	jmp	.LBB21_1
.LBB21_8:
	movb	-25(%rbp), %al
	movb	%al, -42(%rbp)
.LBB21_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_11 Depth 2
	movsbl	-42(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	shll	%ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_16
# %bb.10:                               #   in Loop: Header=BB21_9 Depth=1
	movsbl	-42(%rbp), %eax
	addl	$1, %eax
	movsbl	-25(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)
.LBB21_11:                              #   Parent Loop BB21_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	-41(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_14
# %bb.12:                               #   in Loop: Header=BB21_11 Depth=2
	movq	-16(%rbp), %rax
	movsbq	-41(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movq	-24(%rbp), %rax
	movsbl	-42(%rbp), %ecx
	movsbl	-41(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	callq	muladd
# %bb.13:                               #   in Loop: Header=BB21_11 Depth=2
	movb	-41(%rbp), %al
	addb	$1, %al
	movb	%al, -41(%rbp)
	jmp	.LBB21_11
.LBB21_14:                              #   in Loop: Header=BB21_9 Depth=1
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movsbq	-42(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
# %bb.15:                               #   in Loop: Header=BB21_9 Depth=1
	movb	-42(%rbp), %al
	addb	$1, %al
	movb	%al, -42(%rbp)
	jmp	.LBB21_9
.LBB21_16:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movsbl	-25(%rbp), %ecx
	shll	%ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	uECC_vli_mult, .Lfunc_end21-uECC_vli_mult
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	4, 0x90
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	callq	uECC_vli_mult
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	uECC_vli_modMult_fast, .Lfunc_end22-uECC_vli_modMult_fast
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.p2align	4, 0x90
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        # @uECC_vli_modInv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_isZero
	cmpl	$0, %eax
	je	.LBB23_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_clear
	jmp	.LBB23_19
.LBB23_2:
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_set
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_set
	leaq	-128(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_clear
	movl	$1, -128(%rbp)
	leaq	-160(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_clear
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movb	%al, -161(%rbp)
	movsbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB23_18
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	movl	-64(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	leaq	-64(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
	leaq	-128(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	vli_modInv_update
	jmp	.LBB23_17
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	movl	-96(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB23_8
# %bb.7:                                #   in Loop: Header=BB23_3 Depth=1
	leaq	-96(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
	leaq	-160(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	vli_modInv_update
	jmp	.LBB23_16
.LBB23_8:                               #   in Loop: Header=BB23_3 Depth=1
	movsbl	-161(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB23_12
# %bb.9:                                #   in Loop: Header=BB23_3 Depth=1
	leaq	-64(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_sub
	leaq	-64(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
	leaq	-128(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$0, %eax
	jge	.LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_3 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_add
.LBB23_11:                              #   in Loop: Header=BB23_3 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_sub
	leaq	-128(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	vli_modInv_update
	jmp	.LBB23_15
.LBB23_12:                              #   in Loop: Header=BB23_3 Depth=1
	leaq	-96(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_sub
	leaq	-96(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_rshift1
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$0, %eax
	jge	.LBB23_14
# %bb.13:                               #   in Loop: Header=BB23_3 Depth=1
	leaq	-160(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_add
.LBB23_14:                              #   in Loop: Header=BB23_3 Depth=1
	leaq	-160(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movsbl	-25(%rbp), %ecx
	callq	uECC_vli_sub
	leaq	-160(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	vli_modInv_update
.LBB23_15:                              #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_16
.LBB23_16:                              #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_17
.LBB23_17:                              #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_3
.LBB23_18:
	movq	-8(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_set
.LBB23_19:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	uECC_vli_modInv, .Lfunc_end23-uECC_vli_modInv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
vli_modInv_update:                      # @vli_modInv_update
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB24_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movsbl	-17(%rbp), %ecx
	callq	uECC_vli_add
	movl	%eax, -24(%rbp)
.LBB24_2:
	movq	-8(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	uECC_vli_rshift1
	cmpl	$0, -24(%rbp)
	je	.LBB24_4
# %bb.3:
	movq	-8(%rbp), %rax
	movsbl	-17(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	orl	$-2147483648, %edx              # imm = 0x80000000
	movl	%edx, (%rax,%rcx,4)
.LBB24_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	vli_modInv_update, .Lfunc_end24-vli_modInv_update
	.cfi_endproc
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	4, 0x90
	.type	double_jacobian_default,@function
double_jacobian_default:                # @double_jacobian_default
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -97(%rbp)
	movq	-24(%rbp), %rdi
	movsbl	-97(%rbp), %esi
	callq	uECC_vli_isZero
	cmpl	$0, %eax
	je	.LBB25_2
# %bb.1:
	jmp	.LBB25_6
.LBB25_2:
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	leaq	-96(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-64(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	uECC_vli_testBit
	cmpl	$0, %eax
	je	.LBB25_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	movsbl	-97(%rbp), %ecx
	callq	uECC_vli_add
	movl	%eax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	-97(%rbp), %esi
	callq	uECC_vli_rshift1
	movl	-104(%rbp), %edx
	shll	$31, %edx
	movq	-8(%rbp), %rax
	movsbl	-97(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	orl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB25_5
.LBB25_4:
	movq	-8(%rbp), %rdi
	movsbl	-97(%rbp), %esi
	callq	uECC_vli_rshift1
.LBB25_5:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-96(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-97(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_set
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_set
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_set
.LBB25_6:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	double_jacobian_default, .Lfunc_end25-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast,@function
uECC_vli_modSquare_fast:                # @uECC_vli_modSquare_fast
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	uECC_vli_modSquare_fast, .Lfunc_end26-uECC_vli_modSquare_fast
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	4, 0x90
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	.L__const.x_side_default._3(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const.x_side_default._3+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	.L__const.x_side_default._3+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const.x_side_default._3+24(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -65(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-65(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	addq	$132, %rdx
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-65(%rbp), %r8d
	callq	uECC_vli_modAdd
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	x_side_default, .Lfunc_end27-x_side_default
	.cfi_endproc
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	4, 0x90
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         # @uECC_secp256r1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	curve_secp256r1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	uECC_secp256r1, .Lfunc_end28-uECC_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	4, 0x90
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$8, %edx
	callq	uECC_vli_set
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_sub
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_sub
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_sub
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$8, %ecx
	callq	uECC_vli_sub
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB29_5
# %bb.1:
	jmp	.LBB29_2
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	curve_secp256r1(%rip), %rdx
	addq	$4, %rdx
	movl	$8, %ecx
	callq	uECC_vli_add
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# %bb.3:                                #   in Loop: Header=BB29_2 Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB29_2
# %bb.4:
	jmp	.LBB29_11
.LBB29_5:
	jmp	.LBB29_6
.LBB29_6:                               # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$0, -52(%rbp)
	movb	%al, -53(%rbp)                  # 1-byte Spill
	jne	.LBB29_8
# %bb.7:                                #   in Loop: Header=BB29_6 Depth=1
	movq	-8(%rbp), %rsi
	leaq	curve_secp256r1(%rip), %rdi
	addq	$4, %rdi
	movl	$8, %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$1, %eax
	setne	%al
	movb	%al, -53(%rbp)                  # 1-byte Spill
.LBB29_8:                               #   in Loop: Header=BB29_6 Depth=1
	movb	-53(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB29_9
	jmp	.LBB29_10
.LBB29_9:                               #   in Loop: Header=BB29_6 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	curve_secp256r1(%rip), %rdx
	addq	$4, %rdx
	movl	$8, %ecx
	callq	uECC_vli_sub
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB29_6
.LBB29_10:
	jmp	.LBB29_11
.LBB29_11:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end29-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	4, 0x90
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
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
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	shll	%eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	uECC_vli_isZero
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	EccPoint_isZero, .Lfunc_end30-EccPoint_isZero
	.cfi_endproc
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	4, 0x90
	.type	apply_z,@function
apply_z:                                # @apply_z
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-64(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	apply_z, .Lfunc_end31-apply_z
	.cfi_endproc
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	4, 0x90
	.type	XYcZ_add,@function
XYcZ_add:                               # @XYcZ_add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -81(%rbp)
	leaq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	leaq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-81(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movsbl	-81(%rbp), %edx
	callq	uECC_vli_set
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	XYcZ_add, .Lfunc_end32-XYcZ_add
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	4, 0x90
	.type	EccPoint_mult,@function
EccPoint_mult:                          # @EccPoint_mult
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movw	%r8w, %ax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movw	%ax, -34(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -217(%rbp)
	leaq	-112(%rbp), %rdi
	addq	$32, %rdi
	movq	-16(%rbp), %rsi
	movsbl	-217(%rbp), %edx
	callq	uECC_vli_set
	leaq	-176(%rbp), %rdi
	addq	$32, %rdi
	movq	-16(%rbp), %rsi
	movsbl	-217(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-217(%rbp), %edx
	callq	uECC_vli_set
	leaq	-112(%rbp), %rdi
	addq	$32, %rdi
	leaq	-176(%rbp), %rsi
	addq	$32, %rsi
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	XYcZ_initial_double
	movswl	-34(%rbp), %eax
	subl	$2, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -210(%rbp)
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	movswl	-210(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB33_4
# %bb.2:                                #   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rbp), %rdi
	movswl	-210(%rbp), %esi
	callq	uECC_vli_testBit
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -216(%rbp)
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdi
	shlq	$5, %rax
	addq	%rax, %rdi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rsi
	shlq	$5, %rax
	addq	%rax, %rsi
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_addC
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdi
	shlq	$5, %rax
	addq	%rax, %rdi
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rsi
	shlq	$5, %rax
	addq	%rax, %rsi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_add
# %bb.3:                                #   in Loop: Header=BB33_1 Depth=1
	movw	-210(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -210(%rbp)
	jmp	.LBB33_1
.LBB33_4:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	uECC_vli_testBit
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -216(%rbp)
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdi
	shlq	$5, %rax
	addq	%rax, %rdi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rsi
	shlq	$5, %rax
	addq	%rax, %rsi
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_addC
	leaq	-208(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	addq	$32, %rsi
	leaq	-112(%rbp), %rdx
	movq	-48(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-217(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movq	-48(%rbp), %rdx
	addq	$4, %rdx
	movsbl	-217(%rbp), %ecx
	callq	uECC_vli_modInv
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movsbl	-217(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdi
	shlq	$5, %rax
	addq	%rax, %rdi
	movl	-216(%rbp), %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rsi
	shlq	$5, %rax
	addq	%rax, %rsi
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-112(%rbp), %rdx
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	$1, %eax
	subl	-216(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	leaq	-176(%rbp), %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_add
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z
	movq	-8(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsbl	-217(%rbp), %edx
	callq	uECC_vli_set
	movq	-8(%rbp), %rdi
	movsbl	-217(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	leaq	-176(%rbp), %rsi
	movsbl	-217(%rbp), %edx
	callq	uECC_vli_set
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	EccPoint_mult, .Lfunc_end33-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function XYcZ_initial_double
	.type	XYcZ_initial_double,@function
XYcZ_initial_double:                    # @XYcZ_initial_double
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -81(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB34_2
# %bb.1:
	leaq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsbl	-81(%rbp), %edx
	callq	uECC_vli_set
	jmp	.LBB34_3
.LBB34_2:
	leaq	-80(%rbp), %rdi
	movsbl	-81(%rbp), %esi
	callq	uECC_vli_clear
	movl	$1, -80(%rbp)
.LBB34_3:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsbl	-81(%rbp), %edx
	callq	uECC_vli_set
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-81(%rbp), %edx
	callq	uECC_vli_set
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	*%rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	XYcZ_initial_double, .Lfunc_end34-XYcZ_initial_double
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -145(%rbp)
	leaq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	leaq	-112(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modAdd
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	leaq	-144(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-112(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	leaq	-112(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	uECC_vli_modMult_fast
	movq	-16(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-145(%rbp), %r8d
	callq	uECC_vli_modSub
	movq	-8(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movsbl	-145(%rbp), %edx
	callq	uECC_vli_set
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	XYcZ_addC, .Lfunc_end35-XYcZ_addC
	.cfi_endproc
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	4, 0x90
	.type	regularize_k,@function
regularize_k:                           # @regularize_k
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%rbp)
	movq	-32(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	addq	$36, %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_add
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jne	.LBB36_4
# %bb.1:
	movswl	-36(%rbp), %ecx
	movsbl	-33(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edx
	shll	$2, %edx
	shll	$3, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	jge	.LBB36_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movswl	-36(%rbp), %esi
	callq	uECC_vli_testBit
	cmpl	$0, %eax
	setne	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB36_3:
	movb	-42(%rbp), %al                  # 1-byte Reload
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB36_4:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	addq	$36, %rdx
	movsbl	-33(%rbp), %ecx
	callq	uECC_vli_add
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	regularize_k, .Lfunc_end36-regularize_k
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	4, 0x90
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	regularize_k
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$68, %rsi
	cmpl	$0, -116(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movq	-112(%rbp,%rax,8), %rdx
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-32(%rbp), %r9
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movswl	%ax, %r8d
	callq	EccPoint_mult
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	EccPoint_isZero
	cmpl	$0, %eax
	je	.LBB37_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB37_3
.LBB37_2:
	movl	$1, -4(%rbp)
.LBB37_3:
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	EccPoint_compute_public_key, .Lfunc_end37-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	4, 0x90
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB38_4
# %bb.2:                                #   in Loop: Header=BB38_1 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movsbl	-25(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	-32(%rbp), %ecx
	andl	$3, %ecx
	shll	$3, %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movsbq	-25(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB38_1 Depth=1
	movb	-25(%rbp), %al
	addb	$1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB38_1
.LBB38_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	uECC_vli_nativeToBytes, .Lfunc_end38-uECC_vli_nativeToBytes
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	4, 0x90
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	uECC_vli_clear
	movb	$0, -21(%rbp)
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	movsbl	-21(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movsbl	-21(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movsbq	-21(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	-28(%rbp), %ecx
	andl	$3, %ecx
	shll	$3, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	orl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	movb	-21(%rbp), %al
	addb	$1, %al
	movb	%al, -21(%rbp)
	jmp	.LBB39_1
.LBB39_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	uECC_vli_bytesToNative, .Lfunc_end39-uECC_vli_bytesToNative
	.cfi_endproc
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	4, 0x90
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               # @uECC_generate_random_int
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -25(%rbp)
	movl	$-1, -32(%rbp)
	movq	-24(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_numBits
	movw	%ax, -38(%rbp)
	cmpq	$0, g_rng_function(%rip)
	jne	.LBB40_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB40_12
.LBB40_2:
	movl	$0, -36(%rbp)
.LBB40_3:                               # =>This Inner Loop Header: Depth=1
	cmpl	$64, -36(%rbp)
	jae	.LBB40_11
# %bb.4:                                #   in Loop: Header=BB40_3 Depth=1
	movq	g_rng_function(%rip), %rax
	movq	-16(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	shll	$2, %esi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB40_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB40_12
.LBB40_6:                               #   in Loop: Header=BB40_3 Depth=1
	movl	-32(%rbp), %edx
	movsbl	-25(%rbp), %eax
	shll	$2, %eax
	shll	$3, %eax
	movswl	-38(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %edx
	movq	-16(%rbp), %rax
	movsbl	-25(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	andl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rdi
	movsbl	-25(%rbp), %esi
	callq	uECC_vli_isZero
	cmpl	$0, %eax
	jne	.LBB40_9
# %bb.7:                                #   in Loop: Header=BB40_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-25(%rbp), %edx
	callq	uECC_vli_cmp
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB40_9
# %bb.8:
	movl	$1, -4(%rbp)
	jmp	.LBB40_12
.LBB40_9:                               #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_10
.LBB40_10:                              #   in Loop: Header=BB40_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB40_3
.LBB40_11:
	movl	$0, -4(%rbp)
.LBB40_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	uECC_generate_random_int, .Lfunc_end40-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	4, 0x90
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -97(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	EccPoint_isZero
	cmpl	$0, %eax
	je	.LBB41_2
# %bb.1:
	movl	$-1, -4(%rbp)
	jmp	.LBB41_8
.LBB41_2:
	movq	-24(%rbp), %rdi
	addq	$4, %rdi
	movq	-16(%rbp), %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB41_4
# %bb.3:
	movq	-24(%rbp), %rdi
	addq	$4, %rdi
	movq	-16(%rbp), %rsi
	movsbl	-97(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB41_5
.LBB41_4:
	movl	$-2, -4(%rbp)
	jmp	.LBB41_8
.LBB41_5:
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-97(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rdx
	callq	uECC_vli_modSquare_fast
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsbl	-97(%rbp), %edx
	callq	uECC_vli_equal
	cmpl	$0, %eax
	je	.LBB41_7
# %bb.6:
	movl	$-3, -4(%rbp)
	jmp	.LBB41_8
.LBB41_7:
	movl	$0, -4(%rbp)
.LBB41_8:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	uECC_valid_point, .Lfunc_end41-uECC_valid_point
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	4, 0x90
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  # @uECC_valid_public_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rsi
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	addq	$68, %rsi
	movl	$16, %edx
	callq	uECC_vli_cmp_unsafe
	movsbl	%al, %eax
	cmpl	$0, %eax
	jne	.LBB42_2
# %bb.1:
	movl	$-4, -4(%rbp)
	jmp	.LBB42_3
.LBB42_2:
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	uECC_valid_point
	movl	%eax, -4(%rbp)
.LBB42_3:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	uECC_valid_public_key, .Lfunc_end42-uECC_valid_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	4, 0x90
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                # @uECC_compute_public_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	callq	uECC_vli_bytesToNative
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	uECC_vli_isZero
	cmpl	$0, %eax
	je	.LBB43_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB43_7
.LBB43_2:
	movq	-32(%rbp), %rdi
	addq	$36, %rdi
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edx
	callq	uECC_vli_cmp
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB43_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB43_7
.LBB43_4:
	leaq	-128(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	EccPoint_compute_public_key
	cmpl	$0, %eax
	jne	.LBB43_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB43_7
.LBB43_6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-128(%rbp), %rdx
	callq	uECC_vli_nativeToBytes
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	callq	uECC_vli_nativeToBytes
	movl	$1, -4(%rbp)
.LBB43_7:
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	uECC_compute_public_key, .Lfunc_end43-uECC_compute_public_key
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function muladd
	.type	muladd,@function
muladd:                                 # @muladd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $rax killed $eax
	movl	-8(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	imulq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $rax killed $eax
	shlq	$32, %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	muladd, .Lfunc_end44-muladd
	.cfi_endproc
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.data
	.p2align	3, 0x0
g_rng_function:
	.quad	default_CSPRNG
	.size	g_rng_function, 8

	.type	.L__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L__const.x_side_default._3:
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.L__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.short	256                             # 0x100
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4234356049                      # 0xfc632551
	.long	4089039554                      # 0xf3b9cac2
	.long	2803342980                      # 0xa7179e84
	.long	3169254061                      # 0xbce6faad
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	3633889942                      # 0xd898c296
	.long	4104206661                      # 0xf4a13945
	.long	770388896                       # 0x2deb33a0
	.long	1996717441                      # 0x77037d81
	.long	1671708914                      # 0x63a440f2
	.long	4173129445                      # 0xf8bce6e5
	.long	3777774151                      # 0xe12c4247
	.long	1796723186                      # 0x6b17d1f2
	.long	935285237                       # 0x37bf51f5
	.long	3417718888                      # 0xcbb64068
	.long	1798397646                      # 0x6b315ece
	.long	734933847                       # 0x2bce3357
	.long	2081398294                      # 0x7c0f9e16
	.long	2397563722                      # 0x8ee7eb4a
	.long	4263149467                      # 0xfe1a7f9b
	.long	1340293858                      # 0x4fe342e2
	.long	668098635                       # 0x27d2604b
	.long	1003371582                      # 0x3bce3c3e
	.long	3428036854                      # 0xcc53b0f6
	.long	1696401072                      # 0x651d06b0
	.long	1989707452                      # 0x769886bc
	.long	3018571093                      # 0xb3ebbd55
	.long	2855965671                      # 0xaa3a93e7
	.long	1522939352                      # 0x5ac635d8
	.zero	4
	.quad	double_jacobian_default
	.quad	x_side_default
	.quad	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 192

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym vli_numDigits
	.addrsig_sym uECC_vli_set
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_equal
	.addrsig_sym cond_set
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_add
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_rshift1
	.addrsig_sym uECC_vli_mult
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym vli_modInv_update
	.addrsig_sym double_jacobian_default
	.addrsig_sym uECC_vli_modSquare_fast
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym EccPoint_isZero
	.addrsig_sym apply_z
	.addrsig_sym XYcZ_add
	.addrsig_sym EccPoint_mult
	.addrsig_sym XYcZ_initial_double
	.addrsig_sym XYcZ_addC
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_valid_point
	.addrsig_sym default_CSPRNG
	.addrsig_sym muladd
	.addrsig_sym g_rng_function
	.addrsig_sym curve_secp256r1
