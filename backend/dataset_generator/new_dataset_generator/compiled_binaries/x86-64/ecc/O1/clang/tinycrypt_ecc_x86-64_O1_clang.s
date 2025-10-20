	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	4, 0x90
	.type	uECC_set_rng,@function
uECC_set_rng:                           # @uECC_set_rng
	.cfi_startproc
# %bb.0:
	movq	%rdi, g_rng_function(%rip)
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
	movq	g_rng_function(%rip), %rax
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
	movswl	2(%rdi), %eax
	leal	7(%rax), %ecx
	addl	$14, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movsbl	1(%rdi), %eax
	addl	%eax, %eax
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
	testb	%sil, %sil
	jle	.LBB4_1
# %bb.2:
	movzbl	%sil, %edx
	shll	$2, %edx
	xorl	%esi, %esi
	jmp	memset@PLT                      # TAILCALL
.LBB4_1:
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
	testb	%sil, %sil
	jle	.LBB5_1
# %bb.2:
	movzbl	%sil, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB5_3
# %bb.4:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	retq
.LBB5_1:
	movl	$1, %eax
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
	movl	%esi, %ecx
	movl	%esi, %edx
	sarl	$5, %edx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movslq	%edx, %rcx
	andl	(%rdi,%rcx,4), %eax
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
	movzbl	%sil, %ecx
	leal	-1(%rcx), %eax
	movzbl	%al, %edx
	cmpb	$-1, %dl
	movl	$255, %eax
	cmovll	%edx, %eax
	incb	%al
	leaq	-1(%rcx), %rdx
                                        # kill: def $cl killed $cl killed $rcx
	incb	%cl
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB7_2
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, %esi
	andl	$127, %esi
	decb	%cl
	decq	%rdx
	cmpl	$0, (%rdi,%rsi,4)
	je	.LBB7_1
	jmp	.LBB7_4
.LBB7_2:
	movl	%eax, %ecx
.LBB7_4:
	xorl	%edx, %edx
	testb	%cl, %cl
	je	.LBB7_5
# %bb.6:
	movsbl	%cl, %eax
	decl	%eax
	movsbq	%cl, %rcx
	movl	-4(%rdi,%rcx,4), %ecx
	testl	%ecx, %ecx
	je	.LBB7_9
# %bb.7:
	xorl	%edx, %edx
	movl	%ecx, %esi
	.p2align	4, 0x90
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	shrl	%esi
	incl	%edx
	cmpl	$1, %ecx
	movl	%esi, %ecx
	ja	.LBB7_8
.LBB7_9:
	shll	$5, %eax
	addl	%edx, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB7_5:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	4, 0x90
	.type	uECC_vli_set,@function
uECC_vli_set:                           # @uECC_vli_set
	.cfi_startproc
# %bb.0:
	testb	%dl, %dl
	jle	.LBB8_3
# %bb.1:
	movzbl	%dl, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB8_2
.LBB8_3:
	retq
.Lfunc_end8:
	.size	uECC_vli_set, .Lfunc_end8-uECC_vli_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	4, 0x90
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.cfi_startproc
# %bb.0:
	movzbl	%dl, %eax
	decq	%rax
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB9_2
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB9_4
# %bb.5:                                #   in Loop: Header=BB9_1 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB9_1
# %bb.6:
	movb	$-1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB9_2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB9_4:
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end9:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end9-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	4, 0x90
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         # @uECC_vli_equal
	.cfi_startproc
# %bb.0:
	decb	%dl
	js	.LBB10_1
# %bb.2:
	movzbl	%dl, %eax
	incq	%rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rsi,%rax,4), %edx
	xorl	-4(%rdi,%rax,4), %edx
	orl	%edx, %ecx
	decq	%rax
	jg	.LBB10_3
# %bb.4:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	retq
.LBB10_1:
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	uECC_vli_equal, .Lfunc_end10-uECC_vli_equal
	.cfi_endproc
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	4, 0x90
	.type	cond_set,@function
cond_set:                               # @cond_set
	.cfi_startproc
# %bb.0:
	imull	%edx, %edi
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovel	%esi, %eax
	orl	%edi, %eax
	retq
.Lfunc_end11:
	.size	cond_set, .Lfunc_end11-cond_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	4, 0x90
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           # @uECC_vli_sub
	.cfi_startproc
# %bb.0:
	testb	%cl, %cl
	jle	.LBB12_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movzbl	%cl, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r10d
	movl	(%rdx,%r9,4), %r11d
	addl	%eax, %r11d
	xorl	%ebx, %ebx
	subl	%r11d, %r10d
	setb	%bl
	testl	%r11d, %r11d
	cmovnel	%r8d, %eax
	orl	%ebx, %eax
	movl	%r10d, (%rdi,%r9,4)
	incq	%r9
	cmpq	%r9, %rcx
	jne	.LBB12_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB12_1:
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	uECC_vli_sub, .Lfunc_end12-uECC_vli_sub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	4, 0x90
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           # @uECC_vli_cmp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%ecx, %ecx
	movzbl	%dl, %eax
	testb	%dl, %dl
	jle	.LBB13_4
# %bb.1:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r9,4), %r10d
	movl	(%rsi,%r9,4), %r11d
	addl	%r8d, %r11d
	xorl	%ebx, %ebx
	subl	%r11d, %r10d
	setb	%bl
	testl	%r11d, %r11d
	cmovnel	%ecx, %r8d
	orl	%ebx, %r8d
	movl	%r10d, -32(%rsp,%r9,4)
	incq	%r9
	cmpq	%r9, %rax
	jne	.LBB13_2
# %bb.3:
	testl	%r8d, %r8d
	sete	%cl
	addb	%cl, %cl
	addb	$-2, %cl
.LBB13_4:
	testb	%dl, %dl
	jle	.LBB13_5
# %bb.6:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	orl	-32(%rsp,%rdx,4), %esi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB13_7
# %bb.8:
	testl	%esi, %esi
	sete	%al
	jmp	.LBB13_9
.LBB13_5:
	movb	$1, %al
.LBB13_9:
	orb	%cl, %al
	xorb	$1, %al
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	uECC_vli_cmp, .Lfunc_end13-uECC_vli_cmp
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	4, 0x90
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.cfi_startproc
# %bb.0:
	movzbl	%r8b, %eax
	testb	%r8b, %r8b
	jle	.LBB14_4
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r11,4), %ebx
	leal	(%rbx,%r10), %ebp
	addl	(%rdx,%r11,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	setb	%r14b
	cmovnel	%r9d, %r10d
	orl	%r14d, %r10d
	movl	%ebp, (%rdi,%r11,4)
	incq	%r11
	cmpq	%r11, %rax
	jne	.LBB14_2
# %bb.3:
	testl	%r10d, %r10d
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	je	.LBB14_4
# %bb.12:
	testb	%r8b, %r8b
	jg	.LBB14_13
	jmp	.LBB14_15
.LBB14_4:
	leaq	-1(%rax), %rdx
	.p2align	4, 0x90
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB14_9
# %bb.6:                                #   in Loop: Header=BB14_5 Depth=1
	movl	%edx, %r9d
	andl	$127, %r9d
	movl	(%rcx,%r9,4), %esi
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %esi
	ja	.LBB14_7
# %bb.8:                                #   in Loop: Header=BB14_5 Depth=1
	decq	%rdx
	cmpl	%r9d, %esi
	jae	.LBB14_5
.LBB14_9:
	xorl	%edx, %edx
	testb	%r8b, %r8b
	jg	.LBB14_11
	jmp	.LBB14_15
.LBB14_7:
	movb	$1, %dl
	testb	%r8b, %r8b
	jle	.LBB14_15
.LBB14_11:
	testb	%dl, %dl
	jne	.LBB14_15
.LBB14_13:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rsi,4), %r9d
	addl	%r8d, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, (%rdi,%rsi,4)
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edx, %r8d
	orl	%r10d, %r8d
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB14_14
.LBB14_15:
	retq
.Lfunc_end14:
	.size	uECC_vli_modAdd, .Lfunc_end14-uECC_vli_modAdd
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	4, 0x90
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        # @uECC_vli_modSub
	.cfi_startproc
# %bb.0:
	movzbl	%r8b, %eax
	testb	%r8b, %r8b
	jle	.LBB15_1
# %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r11,4), %ebx
	movl	(%rdx,%r11,4), %ebp
	addl	%r10d, %ebp
	xorl	%r14d, %r14d
	subl	%ebp, %ebx
	setb	%r14b
	testl	%ebp, %ebp
	cmovnel	%r9d, %r10d
	orl	%r14d, %r10d
	movl	%ebx, (%rdi,%r11,4)
	incq	%r11
	cmpq	%r11, %rax
	jne	.LBB15_3
# %bb.4:
	testl	%r10d, %r10d
	sete	%dl
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	testb	%r8b, %r8b
	jg	.LBB15_6
	jmp	.LBB15_9
.LBB15_1:
	movb	$1, %dl
	testb	%r8b, %r8b
	jle	.LBB15_9
.LBB15_6:
	testb	%dl, %dl
	jne	.LBB15_9
# %bb.7:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rsi,4), %r9d
	leal	(%r9,%r8), %r10d
	addl	(%rcx,%rsi,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%edx, %r8d
	orl	%r11d, %r8d
	movl	%r10d, (%rdi,%rsi,4)
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB15_8
.LBB15_9:
	retq
.Lfunc_end15:
	.size	uECC_vli_modSub, .Lfunc_end15-uECC_vli_modSub
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	leaq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	leal	(%r14,%r14), %ebp
	movzbl	%r14b, %r11d
	leal	-1(%r11), %eax
	movzbl	%al, %ecx
	cmpb	$-1, %cl
	movl	$255, %eax
	cmovll	%ecx, %eax
	incb	%al
	movl	%r11d, %ecx
	incb	%cl
	leaq	-1(%r11), %rdx
	.p2align	4, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB16_2
# %bb.3:                                #   in Loop: Header=BB16_1 Depth=1
	movl	%edx, %esi
	andl	$127, %esi
	decb	%cl
	decq	%rdx
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB16_1
	jmp	.LBB16_4
.LBB16_2:
	movl	%eax, %ecx
.LBB16_4:
	xorl	%edx, %edx
	testb	%cl, %cl
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	je	.LBB16_5
# %bb.6:
	movsbl	%cl, %eax
	decl	%eax
	movsbq	%cl, %rcx
	movl	-4(%r15,%rcx,4), %ecx
	testl	%ecx, %ecx
	je	.LBB16_9
# %bb.7:
	xorl	%edx, %edx
	movl	%ecx, %esi
	.p2align	4, 0x90
.LBB16_8:                               # =>This Inner Loop Header: Depth=1
	shrl	%esi
	incl	%edx
	cmpl	$1, %ecx
	movl	%esi, %ecx
	ja	.LBB16_8
.LBB16_9:
	shll	$5, %eax
	addl	%edx, %eax
	jmp	.LBB16_10
.LBB16_5:
	xorl	%eax, %eax
.LBB16_10:
	movsbl	%r14b, %ebx
	shll	$6, %ebx
	subl	%eax, %ebx
	movswl	%bx, %r12d
	leal	31(%r12), %eax
	testl	%r12d, %r12d
	cmovnsl	%r12d, %eax
	movl	%eax, %r13d
	sarl	$5, %r13d
	andl	$-32, %eax
	subl	%eax, %r12d
	testb	%r13b, %r13b
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	jle	.LBB16_12
# %bb.11:
	movzbl	%r13b, %edx
	shll	$2, %edx
	leaq	64(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	8(%rsp), %r11                   # 8-byte Reload
.LBB16_12:
	testl	%r12d, %r12d
	jle	.LBB16_16
# %bb.13:
	testb	%r14b, %r14b
	je	.LBB16_18
# %bb.14:
	movsbl	%r13b, %edx
	movl	$32, %eax
	subl	%r12d, %eax
	movl	%r14d, %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB16_15:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdi,4), %r9d
	movl	%r9d, %r10d
	movl	%r12d, %ecx
	shll	%cl, %r10d
	orl	%r8d, %r10d
	leal	(%rdx,%rdi), %r8d
	movl	%eax, %ecx
	shrl	%cl, %r9d
	movl	%r10d, 64(%rsp,%r8,4)
	incq	%rdi
	movl	%r9d, %r8d
	cmpq	%rdi, %rsi
	jne	.LBB16_15
	jmp	.LBB16_18
.LBB16_16:
	testb	%r14b, %r14b
	jle	.LBB16_18
# %bb.17:
	movsbq	%r13b, %rax
	leaq	(%rsp,%rax,4), %rdi
	addq	$64, %rdi
	leal	(,%r11,4), %edx
	movq	%r15, %rsi
	callq	memcpy@PLT
	movq	8(%rsp), %r11                   # 8-byte Reload
.LBB16_18:
	testw	%bx, %bx
	js	.LBB16_19
# %bb.20:
	leaq	(%rsp,%r11,4), %rax
	addq	$64, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movsbq	%r14b, %rcx
	movl	%r14d, %edx
	decl	%edx
	movslq	%edx, %rdx
	leaq	(%rsp,%rcx,4), %rsi
	addq	$64, %rsi
	leaq	(%rsi,%r11,4), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$1, %r11d
	leaq	64(%rsp), %r8
	jmp	.LBB16_21
	.p2align	4, 0x90
.LBB16_31:                              #   in Loop: Header=BB16_21 Depth=1
	movl	64(%rsp,%rcx,4), %eax
	shll	$31, %eax
	orl	%eax, 64(%rsp,%rdx,4)
.LBB16_32:                              #   in Loop: Header=BB16_21 Depth=1
	movb	%r15b, %r11b
	leal	-1(%rbx), %eax
	testw	%bx, %bx
	movl	%eax, %ebx
	jle	.LBB16_33
.LBB16_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_24 Depth 2
                                        #     Child Loop BB16_27 Depth 2
                                        #     Child Loop BB16_30 Depth 2
	movl	%r11d, %r9d
	testb	%r14b, %r14b
	jle	.LBB16_22
# %bb.23:                               #   in Loop: Header=BB16_21 Depth=1
	movl	%r9d, %r10d
	movq	16(%rsp,%r10,8), %r11
	movl	%r9d, %r10d
	xorl	$1, %r10d
	movq	16(%rsp,%r10,8), %r15
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB16_24:                              #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	%r12b, %r12
	movl	(%r11,%r12,4), %r13d
	movl	64(%rsp,%r12,4), %edi
	addl	%r10d, %edi
	xorl	%eax, %eax
	subl	%edi, %r13d
	setb	%al
	testl	%edi, %edi
	cmovnel	%eax, %r10d
	movl	%r13d, (%r15,%r12,4)
	incb	%r12b
	movsbl	%r12b, %eax
	cmpl	%eax, %ebp
	jg	.LBB16_24
	jmp	.LBB16_25
	.p2align	4, 0x90
.LBB16_22:                              #   in Loop: Header=BB16_21 Depth=1
	xorl	%r10d, %r10d
.LBB16_25:                              #   in Loop: Header=BB16_21 Depth=1
	xorl	%r11d, %r11d
	cmpl	%r10d, %r9d
	sete	%r15b
	testb	%r14b, %r14b
	jle	.LBB16_31
# %bb.26:                               #   in Loop: Header=BB16_21 Depth=1
	xorl	%r13d, %r13d
	movq	56(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB16_27:                              #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r12), %eax
	movl	%eax, %edi
	shrl	%edi
	orl	%r13d, %edi
	movl	%edi, -4(%r12)
	leaq	-4(%r12), %rdi
	shll	$31, %eax
	movq	%rdi, %r12
	movl	%eax, %r13d
	cmpq	%r8, %rdi
	ja	.LBB16_27
# %bb.28:                               #   in Loop: Header=BB16_21 Depth=1
	movl	64(%rsp,%rcx,4), %eax
	shll	$31, %eax
	orl	%eax, 64(%rsp,%rdx,4)
	testb	%r14b, %r14b
	jle	.LBB16_32
# %bb.29:                               #   in Loop: Header=BB16_21 Depth=1
	xorl	%r13d, %r13d
	movq	48(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB16_30:                              #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r12), %eax
	movl	%eax, %edi
	shrl	%edi
	orl	%r13d, %edi
	movl	%edi, -4(%r12)
	leaq	-4(%r12), %rdi
	shll	$31, %eax
	movq	%rdi, %r12
	movl	%eax, %r13d
	cmpq	%rsi, %rdi
	ja	.LBB16_30
	jmp	.LBB16_32
.LBB16_33:
	xorl	%eax, %eax
	cmpl	%r10d, %r9d
	sete	%al
	movq	8(%rsp), %r11                   # 8-byte Reload
	jmp	.LBB16_34
.LBB16_19:
	movl	$1, %eax
.LBB16_34:
	testb	%r14b, %r14b
	movq	40(%rsp), %rsi                  # 8-byte Reload
	jle	.LBB16_37
# %bb.35:
	movq	16(%rsp,%rax,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB16_36:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rcx,4), %edx
	movl	%edx, (%rsi,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r11
	jne	.LBB16_36
.LBB16_37:
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	uECC_vli_mmod, .Lfunc_end16-uECC_vli_mmod
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	4, 0x90
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       # @uECC_vli_modMult
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%r8d, %ebx
	movq	%rcx, %r14
	movq	%rdi, %r15
	movq	%rsp, %r12
	movq	%r12, %rdi
	movl	%r8d, %ecx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	uECC_vli_mmod
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          # @uECC_vli_mult
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testb	%cl, %cl
	jle	.LBB18_1
# %bb.4:
	movzbl	%cl, %r9d
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	%rdx, %rbx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
	movq	%rax, %r14
	movl	%r8d, %eax
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB18_6:                               #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%r12,4), %r13d
	movl	(%r15), %ebp
	imulq	%r13, %rbp
	shlq	$32, %rax
	movl	%r14d, %r14d
	orq	%rax, %r14
	addq	%rbp, %r14
	adcl	$0, %r8d
	movq	%r14, %rax
	shrq	$32, %rax
	incq	%r12
	addq	$-4, %r15
	cmpq	%r12, %r11
	jne	.LBB18_6
# %bb.7:                                #   in Loop: Header=BB18_5 Depth=1
	movl	%r14d, (%rdi,%r10,4)
	incq	%r10
	incq	%r11
	addq	$4, %rbx
	cmpq	%r9, %r10
	jne	.LBB18_5
	jmp	.LBB18_2
.LBB18_1:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
.LBB18_2:
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movsbl	%cl, %r10d
	leal	-1(,%r10,2), %edx
	cmpl	%r10d, %edx
	jle	.LBB18_3
# %bb.8:
	movsbq	%cl, %r10
	movb	$1, %r11b
	movl	%ecx, %ebx
	jmp	.LBB18_9
	.p2align	4, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_9 Depth=1
	movl	%r8d, %r15d
	movl	%eax, (%rdi,%r14,4)
	movsbl	%bl, %r9d
	incb	%r11b
	movl	%ebp, %r8d
	movl	%r15d, %eax
	cmpl	%r9d, %edx
	jle	.LBB18_13
.LBB18_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	movsbq	%bl, %r14
	leal	1(%r14), %ebx
	movl	%ebx, %r15d
	subb	%cl, %r15b
	xorl	%ebp, %ebp
	cmpb	%cl, %r15b
	jge	.LBB18_12
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=1
	leaq	(,%r14,4), %r15
	movsbq	%r11b, %r12
	leaq	(,%r12,4), %r13
	subq	%r13, %r15
	addq	-8(%rsp), %r15                  # 8-byte Folded Reload
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB18_11:                              #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%r12,4), %r13d
	movl	(%r15), %r9d
	imulq	%r13, %r9
	shlq	$32, %r8
	movl	%eax, %eax
	orq	%r8, %rax
	addq	%r9, %rax
	adcl	$0, %ebp
	movq	%rax, %r8
	shrq	$32, %r8
	incq	%r12
	addq	$-4, %r15
	cmpq	%r10, %r12
	jl	.LBB18_11
	jmp	.LBB18_12
.LBB18_3:
	movl	%eax, %r15d
.LBB18_13:
	movslq	%edx, %rax
	movl	%r15d, (%rdi,%rax,4)
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	uECC_vli_mult, .Lfunc_end18-uECC_vli_mult
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	4, 0x90
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movsbl	(%rcx), %ecx
	movq	%rsp, %r15
	movq	%r15, %rdi
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*184(%rbx)
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	uECC_vli_modMult_fast, .Lfunc_end19-uECC_vli_modMult_fast
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	testb	%cl, %cl
	jle	.LBB20_111
# %bb.1:
	movq	%rdx, %r14
	movzbl	%cl, %r13d
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%rsi,%rax,4), %edx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_2
# %bb.3:
	testl	%edx, %edx
	je	.LBB20_4
# %bb.6:
	testb	%cl, %cl
	jle	.LBB20_8
# %bb.7:
	leal	(,%r13,4), %r15d
	leaq	160(%rsp), %rdi
	movq	%r15, %rdx
	movl	%ecx, %ebx
	callq	memcpy@PLT
	leaq	128(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movl	$1, 16(%rsp)
	leaq	48(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movl	%ebx, %ecx
	jmp	.LBB20_9
.LBB20_4:
	testb	%cl, %cl
	jle	.LBB20_111
# %bb.5:
	shll	$2, %r13d
	movq	88(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movq	%r13, %rdx
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	memset@PLT                      # TAILCALL
.LBB20_8:
	.cfi_def_cfa_offset 256
	movl	$1, 16(%rsp)
.LBB20_9:
	leaq	(%rsp,%r13,4), %rax
	addq	$128, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	48(%rsp,%r13,4), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	44(%rsp,%r13,4), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	160(%rsp,%r13,4), %r8
	leaq	16(%rsp,%r13,4), %r9
	leaq	12(%rsp,%r13,4), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leaq	-1(%r13), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	leaq	160(%rsp), %r15
	leaq	16(%rsp), %r12
	xorl	%ebp, %ebp
	leaq	128(%rsp), %rdi
	leaq	48(%rsp), %rsi
	jmp	.LBB20_10
	.p2align	4, 0x90
.LBB20_31:                              #   in Loop: Header=BB20_10 Depth=1
	orb	$-128, 3(%r10)
.LBB20_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_11 Depth 2
                                        #       Child Loop BB20_83 Depth 3
                                        #       Child Loop BB20_86 Depth 3
                                        #       Child Loop BB20_88 Depth 3
                                        #       Child Loop BB20_93 Depth 3
                                        #       Child Loop BB20_96 Depth 3
                                        #       Child Loop BB20_101 Depth 3
                                        #       Child Loop BB20_105 Depth 3
                                        #       Child Loop BB20_55 Depth 3
                                        #       Child Loop BB20_58 Depth 3
                                        #       Child Loop BB20_60 Depth 3
                                        #       Child Loop BB20_65 Depth 3
                                        #       Child Loop BB20_68 Depth 3
                                        #       Child Loop BB20_73 Depth 3
                                        #       Child Loop BB20_77 Depth 3
                                        #       Child Loop BB20_38 Depth 3
                                        #       Child Loop BB20_43 Depth 3
                                        #       Child Loop BB20_47 Depth 3
                                        #       Child Loop BB20_19 Depth 3
                                        #       Child Loop BB20_24 Depth 3
                                        #       Child Loop BB20_28 Depth 3
                                        #     Child Loop BB20_108 Depth 2
                                        #     Child Loop BB20_80 Depth 2
                                        #     Child Loop BB20_51 Depth 2
                                        #     Child Loop BB20_34 Depth 2
	movq	%r13, %rbx
.LBB20_11:                              #   Parent Loop BB20_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_83 Depth 3
                                        #       Child Loop BB20_86 Depth 3
                                        #       Child Loop BB20_88 Depth 3
                                        #       Child Loop BB20_93 Depth 3
                                        #       Child Loop BB20_96 Depth 3
                                        #       Child Loop BB20_101 Depth 3
                                        #       Child Loop BB20_105 Depth 3
                                        #       Child Loop BB20_55 Depth 3
                                        #       Child Loop BB20_58 Depth 3
                                        #       Child Loop BB20_60 Depth 3
                                        #       Child Loop BB20_65 Depth 3
                                        #       Child Loop BB20_68 Depth 3
                                        #       Child Loop BB20_73 Depth 3
                                        #       Child Loop BB20_77 Depth 3
                                        #       Child Loop BB20_38 Depth 3
                                        #       Child Loop BB20_43 Depth 3
                                        #       Child Loop BB20_47 Depth 3
                                        #       Child Loop BB20_19 Depth 3
                                        #       Child Loop BB20_24 Depth 3
                                        #       Child Loop BB20_28 Depth 3
	decq	%rbx
	testb	%bl, %bl
	js	.LBB20_14
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=2
	movl	%ebx, %eax
	andl	$127, %eax
	movl	160(%rsp,%rax,4), %r10d
	movl	128(%rsp,%rax,4), %r11d
	movb	$1, %al
	cmpl	%r11d, %r10d
	ja	.LBB20_15
# %bb.13:                               #   in Loop: Header=BB20_11 Depth=2
	jae	.LBB20_11
	.p2align	4, 0x90
.LBB20_14:                              #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
.LBB20_15:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%bl, %bl
	js	.LBB20_109
# %bb.16:                               #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 160(%rsp)
	jne	.LBB20_35
# %bb.17:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_20
# %bb.18:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%r10d, %r10d
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB20_19:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rax), %r11d
	movl	%r11d, %ebx
	shrl	%ebx
	orl	%r10d, %ebx
	movl	%ebx, -4(%rax)
	leaq	-4(%rax), %rbx
	shll	$31, %r11d
	movq	%rbx, %rax
	movl	%r11d, %r10d
	cmpq	%r15, %rbx
	ja	.LBB20_19
.LBB20_20:                              #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 16(%rsp)
	jne	.LBB20_21
# %bb.32:                               #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	testb	%cl, %cl
	jg	.LBB20_33
	jmp	.LBB20_11
	.p2align	4, 0x90
.LBB20_35:                              #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 128(%rsp)
	jne	.LBB20_52
# %bb.36:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_39
# %bb.37:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%r10d, %r10d
	movq	104(%rsp), %rax                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_38:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%rdi, %r11
	ja	.LBB20_38
.LBB20_39:                              #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 48(%rsp)
	jne	.LBB20_40
# %bb.49:                               #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	testb	%cl, %cl
	jg	.LBB20_50
	jmp	.LBB20_11
	.p2align	4, 0x90
.LBB20_21:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_22
# %bb.23:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_24:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rsp,%rax,4), %r10d
	leal	(%r10,%rbx), %r11d
	addl	(%r14,%rax,4), %r11d
	xorl	%edx, %edx
	cmpl	%r10d, %r11d
	setb	%dl
	cmovnel	%ebp, %ebx
	orl	%edx, %ebx
	movl	%r11d, 16(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_24
# %bb.25:                               #   in Loop: Header=BB20_11 Depth=2
	testl	%ebx, %ebx
	sete	%al
	testb	%cl, %cl
	jg	.LBB20_27
	jmp	.LBB20_29
	.p2align	4, 0x90
.LBB20_52:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%al, %al
	je	.LBB20_81
# %bb.53:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_59
# %bb.54:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_55:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	128(%rsp,%rax,4), %edx
	addl	%ebx, %edx
	xorl	%r10d, %r10d
	subl	%edx, 160(%rsp,%rax,4)
	setb	%r10b
	testl	%edx, %edx
	cmovnel	%ebp, %ebx
	orl	%r10d, %ebx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_55
# %bb.56:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_59
# %bb.57:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%r10d, %r10d
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB20_58:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%r15, %r11
	ja	.LBB20_58
.LBB20_59:                              #   in Loop: Header=BB20_11 Depth=2
	movq	112(%rsp), %rax                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_60:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	js	.LBB20_66
# %bb.61:                               #   in Loop: Header=BB20_60 Depth=3
	movl	%eax, %edx
	andl	$127, %edx
	movl	16(%rsp,%rdx,4), %r10d
	movl	48(%rsp,%rdx,4), %ebx
	cmpl	%ebx, %r10d
	ja	.LBB20_66
# %bb.62:                               #   in Loop: Header=BB20_60 Depth=3
	decq	%rax
	cmpl	%ebx, %r10d
	jae	.LBB20_60
# %bb.63:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_69
# %bb.64:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_65:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rsp,%rax,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	(%r14,%rax,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%edx, %r10d
	setb	%r11b
	cmovnel	%ebp, %ebx
	orl	%r11d, %ebx
	movl	%r10d, 16(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_65
.LBB20_66:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_69
# %bb.67:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_68:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	48(%rsp,%rax,4), %edx
	addl	%ebx, %edx
	xorl	%r10d, %r10d
	subl	%edx, 16(%rsp,%rax,4)
	setb	%r10b
	testl	%edx, %edx
	cmovnel	%ebp, %ebx
	orl	%r10d, %ebx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_68
.LBB20_69:                              #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 16(%rsp)
	jne	.LBB20_70
# %bb.78:                               #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	testb	%cl, %cl
	jg	.LBB20_79
	jmp	.LBB20_11
.LBB20_40:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_41
# %bb.42:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_43:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	48(%rsp,%rax,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	(%r14,%rax,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%edx, %r10d
	setb	%r11b
	cmovnel	%ebp, %ebx
	orl	%r11d, %ebx
	movl	%r10d, 48(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_43
# %bb.44:                               #   in Loop: Header=BB20_11 Depth=2
	testl	%ebx, %ebx
	sete	%al
	testb	%cl, %cl
	jg	.LBB20_46
	jmp	.LBB20_48
.LBB20_81:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_87
# %bb.82:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_83:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	160(%rsp,%rax,4), %edx
	addl	%ebx, %edx
	xorl	%r10d, %r10d
	subl	%edx, 128(%rsp,%rax,4)
	setb	%r10b
	testl	%edx, %edx
	cmovnel	%ebp, %ebx
	orl	%r10d, %ebx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_83
# %bb.84:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_87
# %bb.85:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%r10d, %r10d
	movq	104(%rsp), %rax                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_86:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%rdi, %r11
	ja	.LBB20_86
.LBB20_87:                              #   in Loop: Header=BB20_11 Depth=2
	movq	112(%rsp), %rax                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_88:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	js	.LBB20_94
# %bb.89:                               #   in Loop: Header=BB20_88 Depth=3
	movl	%eax, %edx
	andl	$127, %edx
	movl	48(%rsp,%rdx,4), %r10d
	movl	16(%rsp,%rdx,4), %ebx
	cmpl	%ebx, %r10d
	ja	.LBB20_94
# %bb.90:                               #   in Loop: Header=BB20_88 Depth=3
	decq	%rax
	cmpl	%ebx, %r10d
	jae	.LBB20_88
# %bb.91:                               #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_97
# %bb.92:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_93:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	48(%rsp,%rax,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	(%r14,%rax,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%edx, %r10d
	setb	%r11b
	cmovnel	%ebp, %ebx
	orl	%r11d, %ebx
	movl	%r10d, 48(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_93
.LBB20_94:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_97
# %bb.95:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_96:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rsp,%rax,4), %edx
	addl	%ebx, %edx
	xorl	%r10d, %r10d
	subl	%edx, 48(%rsp,%rax,4)
	setb	%r10b
	testl	%edx, %edx
	cmovnel	%ebp, %ebx
	orl	%r10d, %ebx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_96
.LBB20_97:                              #   in Loop: Header=BB20_11 Depth=2
	testb	$1, 48(%rsp)
	jne	.LBB20_98
# %bb.106:                              #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	testb	%cl, %cl
	jg	.LBB20_107
	jmp	.LBB20_11
.LBB20_22:                              #   in Loop: Header=BB20_11 Depth=2
	movb	$1, %al
	testb	%cl, %cl
	jle	.LBB20_29
.LBB20_27:                              #   in Loop: Header=BB20_11 Depth=2
	xorl	%ebx, %ebx
	movq	%r9, %r10
	.p2align	4, 0x90
.LBB20_28:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%r10), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%ebx, %r11d
	movl	%r11d, -4(%r10)
	leaq	-4(%r10), %r11
	shll	$31, %edx
	movq	%r11, %r10
	movl	%edx, %ebx
	cmpq	%r12, %r11
	ja	.LBB20_28
.LBB20_29:                              #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	movq	120(%rsp), %r10                 # 8-byte Reload
	testb	%al, %al
	jne	.LBB20_11
	jmp	.LBB20_31
.LBB20_70:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_71
# %bb.72:                               #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_73:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rsp,%rax,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	(%r14,%rax,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%edx, %r10d
	setb	%r11b
	cmovnel	%ebp, %ebx
	orl	%r11d, %ebx
	movl	%r10d, 16(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_73
# %bb.74:                               #   in Loop: Header=BB20_11 Depth=2
	testl	%ebx, %ebx
	sete	%al
	testb	%cl, %cl
	jg	.LBB20_76
	jmp	.LBB20_29
.LBB20_98:                              #   in Loop: Header=BB20_11 Depth=2
	testb	%cl, %cl
	jle	.LBB20_99
# %bb.100:                              #   in Loop: Header=BB20_11 Depth=2
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_101:                             #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	48(%rsp,%rax,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	(%r14,%rax,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%edx, %r10d
	setb	%r11b
	cmovnel	%ebp, %ebx
	orl	%r11d, %ebx
	movl	%r10d, 48(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB20_101
# %bb.102:                              #   in Loop: Header=BB20_11 Depth=2
	testl	%ebx, %ebx
	sete	%al
	testb	%cl, %cl
	jg	.LBB20_104
	jmp	.LBB20_48
.LBB20_41:                              #   in Loop: Header=BB20_11 Depth=2
	movb	$1, %al
	testb	%cl, %cl
	jle	.LBB20_48
.LBB20_46:                              #   in Loop: Header=BB20_11 Depth=2
	xorl	%ebx, %ebx
	movq	8(%rsp), %r10                   # 8-byte Reload
	.p2align	4, 0x90
.LBB20_47:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%r10), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%ebx, %r11d
	movl	%r11d, -4(%r10)
	leaq	-4(%r10), %r11
	shll	$31, %edx
	movq	%r11, %r10
	movl	%edx, %ebx
	cmpq	%rsi, %r11
	ja	.LBB20_47
	jmp	.LBB20_48
.LBB20_71:                              #   in Loop: Header=BB20_11 Depth=2
	movb	$1, %al
	testb	%cl, %cl
	jle	.LBB20_29
.LBB20_76:                              #   in Loop: Header=BB20_11 Depth=2
	xorl	%ebx, %ebx
	movq	%r9, %r10
	.p2align	4, 0x90
.LBB20_77:                              #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%r10), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%ebx, %r11d
	movl	%r11d, -4(%r10)
	leaq	-4(%r10), %r11
	shll	$31, %edx
	movq	%r11, %r10
	movl	%edx, %ebx
	cmpq	%r12, %r11
	ja	.LBB20_77
	jmp	.LBB20_29
.LBB20_99:                              #   in Loop: Header=BB20_11 Depth=2
	movb	$1, %al
	testb	%cl, %cl
	jle	.LBB20_48
.LBB20_104:                             #   in Loop: Header=BB20_11 Depth=2
	xorl	%ebx, %ebx
	movq	8(%rsp), %r10                   # 8-byte Reload
	.p2align	4, 0x90
.LBB20_105:                             #   Parent Loop BB20_10 Depth=1
                                        #     Parent Loop BB20_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%r10), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%ebx, %r11d
	movl	%r11d, -4(%r10)
	leaq	-4(%r10), %r11
	shll	$31, %edx
	movq	%r11, %r10
	movl	%edx, %ebx
	cmpq	%rsi, %r11
	ja	.LBB20_105
.LBB20_48:                              #   in Loop: Header=BB20_11 Depth=2
	movq	%r13, %rbx
	movq	96(%rsp), %r10                  # 8-byte Reload
	testb	%al, %al
	jne	.LBB20_11
	jmp	.LBB20_31
	.p2align	4, 0x90
.LBB20_33:                              #   in Loop: Header=BB20_10 Depth=1
	xorl	%r10d, %r10d
	movq	%r9, %rax
	.p2align	4, 0x90
.LBB20_34:                              #   Parent Loop BB20_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%r12, %r11
	ja	.LBB20_34
	jmp	.LBB20_10
.LBB20_50:                              #   in Loop: Header=BB20_10 Depth=1
	xorl	%r10d, %r10d
	movq	8(%rsp), %rax                   # 8-byte Reload
	.p2align	4, 0x90
.LBB20_51:                              #   Parent Loop BB20_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%rsi, %r11
	ja	.LBB20_51
	jmp	.LBB20_10
.LBB20_79:                              #   in Loop: Header=BB20_10 Depth=1
	xorl	%r10d, %r10d
	movq	%r9, %rax
	.p2align	4, 0x90
.LBB20_80:                              #   Parent Loop BB20_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%r12, %r11
	ja	.LBB20_80
	jmp	.LBB20_10
.LBB20_107:                             #   in Loop: Header=BB20_10 Depth=1
	xorl	%r10d, %r10d
	movq	8(%rsp), %rax                   # 8-byte Reload
	.p2align	4, 0x90
.LBB20_108:                             #   Parent Loop BB20_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %r11d
	shrl	%r11d
	orl	%r10d, %r11d
	movl	%r11d, -4(%rax)
	leaq	-4(%rax), %r11
	shll	$31, %edx
	movq	%r11, %rax
	movl	%edx, %r10d
	cmpq	%rsi, %r11
	ja	.LBB20_108
	jmp	.LBB20_10
.LBB20_109:
	testb	%cl, %cl
	jle	.LBB20_111
# %bb.110:
	shll	$2, %r13d
	leaq	16(%rsp), %rsi
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
.LBB20_111:
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rdi, %r15
	movzbl	(%rcx), %ebx
	testb	%bl, %bl
	jle	.LBB21_1
# %bb.2:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	orl	(%r14,%rax,4), %ecx
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB21_3
# %bb.4:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	testl	%eax, %eax
	jne	.LBB21_127
	jmp	.LBB21_6
.LBB21_1:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.LBB21_127
.LBB21_6:
	movsbl	%bl, %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%rsi, %rdx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	callq	uECC_vli_mult
	leaq	48(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	leaq	16(%rsp), %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%rbp, %rdi
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	%r13, %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	testb	%bl, %bl
	jle	.LBB21_10
# %bb.7:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	leal	(%rsi,%rcx), %edi
	addl	(%r14,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%r15,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_8
# %bb.9:
	testl	%ecx, %ecx
	jne	.LBB21_18
.LBB21_10:
	leaq	-1(%rbx), %rax
	.p2align	4, 0x90
.LBB21_11:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB21_15
# %bb.12:                               #   in Loop: Header=BB21_11 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r12,%rdx,4), %ecx
	movl	(%r15,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB21_13
# %bb.14:                               #   in Loop: Header=BB21_11 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB21_11
.LBB21_15:
	xorl	%eax, %eax
	testb	%bl, %bl
	jg	.LBB21_17
	jmp	.LBB21_20
.LBB21_13:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_20
.LBB21_17:
	testb	%al, %al
	jne	.LBB21_20
.LBB21_18:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_19:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r12,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r15,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_19
.LBB21_20:
	testb	%bl, %bl
	jle	.LBB21_24
# %bb.21:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_22:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rdx,4), %esi
	leal	(%rcx,%rsi,2), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%r14,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_22
# %bb.23:
	testl	%ecx, %ecx
	jne	.LBB21_32
.LBB21_24:
	leaq	-1(%rbx), %rax
	.p2align	4, 0x90
.LBB21_25:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB21_29
# %bb.26:                               #   in Loop: Header=BB21_25 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r12,%rdx,4), %ecx
	movl	(%r14,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB21_27
# %bb.28:                               #   in Loop: Header=BB21_25 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB21_25
.LBB21_29:
	xorl	%eax, %eax
	testb	%bl, %bl
	jg	.LBB21_31
	jmp	.LBB21_34
.LBB21_27:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_34
.LBB21_31:
	testb	%al, %al
	jne	.LBB21_34
.LBB21_32:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_33:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r12,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r14,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_33
.LBB21_34:
	testb	%bl, %bl
	jle	.LBB21_35
# %bb.36:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_37:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	movl	(%r14,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%r14,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_37
# %bb.38:
	testl	%ecx, %ecx
	sete	%al
	testb	%bl, %bl
	jg	.LBB21_40
	jmp	.LBB21_43
.LBB21_35:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_43
.LBB21_40:
	testb	%al, %al
	jne	.LBB21_43
# %bb.41:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_42:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r12,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_42
.LBB21_43:
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	testb	%bl, %bl
	jle	.LBB21_47
# %bb.44:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_45:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	leal	(%rcx,%rsi,2), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%r14,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_45
# %bb.46:
	testl	%ecx, %ecx
	jne	.LBB21_55
.LBB21_47:
	leaq	-1(%rbx), %rax
	.p2align	4, 0x90
.LBB21_48:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB21_52
# %bb.49:                               #   in Loop: Header=BB21_48 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r12,%rdx,4), %ecx
	movl	(%r14,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB21_50
# %bb.51:                               #   in Loop: Header=BB21_48 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB21_48
.LBB21_52:
	xorl	%eax, %eax
	testb	%bl, %bl
	jg	.LBB21_54
	jmp	.LBB21_57
.LBB21_50:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_57
.LBB21_54:
	testb	%al, %al
	jne	.LBB21_57
.LBB21_55:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_56:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r12,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r14,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_56
.LBB21_57:
	testb	%bl, %bl
	jle	.LBB21_61
# %bb.58:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_59:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	leal	(%rsi,%rcx), %edi
	addl	(%r14,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%r15,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_59
# %bb.60:
	testl	%ecx, %ecx
	jne	.LBB21_69
.LBB21_61:
	leaq	-1(%rbx), %rax
	.p2align	4, 0x90
.LBB21_62:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB21_66
# %bb.63:                               #   in Loop: Header=BB21_62 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r12,%rdx,4), %ecx
	movl	(%r15,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB21_64
# %bb.65:                               #   in Loop: Header=BB21_62 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB21_62
.LBB21_66:
	xorl	%eax, %eax
	testb	%bl, %bl
	jg	.LBB21_68
	jmp	.LBB21_71
.LBB21_64:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_71
.LBB21_68:
	testb	%al, %al
	jne	.LBB21_71
.LBB21_69:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_70:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r12,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r15,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_70
.LBB21_71:
	testb	$1, (%r15)
	jne	.LBB21_72
# %bb.80:
	testb	%bl, %bl
	jle	.LBB21_83
# %bb.81:
	leaq	(%r15,%rbx,4), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_82:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r15, %rsi
	ja	.LBB21_82
	jmp	.LBB21_83
.LBB21_72:
	testb	%bl, %bl
	jle	.LBB21_73
# %bb.74:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB21_75:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	leal	(%rsi,%rax), %edi
	addl	4(%r12,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%ecx, %eax
	orl	%r8d, %eax
	movl	%edi, (%r15,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_75
# %bb.76:
	testb	%bl, %bl
	jg	.LBB21_77
	jmp	.LBB21_79
.LBB21_73:
	xorl	%eax, %eax
	testb	%bl, %bl
	jle	.LBB21_79
.LBB21_77:
	leaq	(%r15,%rbx,4), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_78:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %esi
	movl	%esi, %edi
	shrl	%edi
	orl	%edx, %edi
	movl	%edi, -4(%rcx)
	leaq	-4(%rcx), %rdi
	shll	$31, %esi
	movq	%rdi, %rcx
	movl	%esi, %edx
	cmpq	%r15, %rdi
	ja	.LBB21_78
.LBB21_79:
	shll	$31, %eax
	movsbq	%bl, %rcx
	orl	%eax, -4(%r15,%rcx,4)
.LBB21_83:
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	testb	%bl, %bl
	jle	.LBB21_84
# %bb.85:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_86:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r14,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_86
# %bb.87:
	testl	%ecx, %ecx
	sete	%al
	testb	%bl, %bl
	jg	.LBB21_89
	jmp	.LBB21_92
.LBB21_84:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_92
.LBB21_89:
	testb	%al, %al
	jne	.LBB21_92
# %bb.90:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_91:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r12,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_91
.LBB21_92:
	testb	%bl, %bl
	jle	.LBB21_93
# %bb.94:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_95:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r14,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_95
# %bb.96:
	testl	%ecx, %ecx
	sete	%al
	testb	%bl, %bl
	jg	.LBB21_98
	jmp	.LBB21_101
.LBB21_93:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_101
.LBB21_98:
	testb	%al, %al
	jne	.LBB21_101
# %bb.99:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_100:                             # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r12,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_100
.LBB21_101:
	testb	%bl, %bl
	jle	.LBB21_102
# %bb.103:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_104:                             # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, 16(%rsp,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_104
# %bb.105:
	testl	%ecx, %ecx
	sete	%al
	testb	%bl, %bl
	jg	.LBB21_107
	jmp	.LBB21_110
.LBB21_102:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_110
.LBB21_107:
	testb	%al, %al
	jne	.LBB21_110
# %bb.108:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_109:                             # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r12,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 16(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_109
.LBB21_110:
	movsbl	(%r12), %ecx
	leaq	80(%rsp), %r13
	leaq	16(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*184(%r12)
	testb	%bl, %bl
	jle	.LBB21_111
# %bb.112:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_113:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	movl	48(%rsp,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, 48(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB21_113
# %bb.114:
	testl	%ecx, %ecx
	sete	%al
	testb	%bl, %bl
	jg	.LBB21_116
	jmp	.LBB21_119
.LBB21_111:
	movb	$1, %al
	testb	%bl, %bl
	jle	.LBB21_119
.LBB21_116:
	testb	%al, %al
	jne	.LBB21_119
# %bb.117:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB21_118:                             # =>This Inner Loop Header: Depth=1
	movl	48(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r12,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 48(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB21_118
.LBB21_119:
	testb	%bl, %bl
	jle	.LBB21_127
# %bb.120:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB21_121:                             # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB21_121
# %bb.122:
	testb	%bl, %bl
	jle	.LBB21_127
# %bb.123:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB21_124:                             # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rax,4), %ecx
	movl	%ecx, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB21_124
# %bb.125:
	testb	%bl, %bl
	jle	.LBB21_127
# %bb.126:
	leal	(,%rbx,4), %edx
	leaq	48(%rsp), %rsi
	movq	%rbp, %rdi
	callq	memcpy@PLT
.LBB21_127:
	addq	$152, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	double_jacobian_default, .Lfunc_end21-double_jacobian_default
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movsbl	(%rdx), %ebp
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%rsi, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*184(%rbx)
	movzbl	%bpl, %r13d
	testl	%ebp, %ebp
	jle	.LBB22_1
# %bb.2:
	leal	(,%r13,4), %eax
	xorl	%ecx, %ecx
	leaq	.L__const.x_side_default._3(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx), %r8d
	addl	%esi, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, (%r14,%rdi)
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%ecx, %esi
	orl	%r9d, %esi
	addq	$4, %rdi
	cmpq	%rdi, %rax
	jne	.LBB22_3
# %bb.4:
	testl	%esi, %esi
	sete	%al
	testb	%r13b, %r13b
	jg	.LBB22_6
	jmp	.LBB22_9
.LBB22_1:
	movb	$1, %al
	testb	%r13b, %r13b
	jle	.LBB22_9
.LBB22_6:
	testb	%al, %al
	jne	.LBB22_9
# %bb.7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%rbx,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r13
	jne	.LBB22_8
.LBB22_9:
	movsbl	(%rbx), %ecx
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*184(%rbx)
	testb	%r13b, %r13b
	jle	.LBB22_13
# %bb.10:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rdx,4), %esi
	leal	(%rsi,%rcx), %edi
	addl	132(%rbx,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%r14,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %r13
	jne	.LBB22_11
# %bb.12:
	testl	%ecx, %ecx
	jne	.LBB22_21
.LBB22_13:
	leaq	-1(%r13), %rax
	.p2align	4, 0x90
.LBB22_14:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB22_18
# %bb.15:                               #   in Loop: Header=BB22_14 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%rbx,%rdx,4), %ecx
	movl	(%r14,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB22_16
# %bb.17:                               #   in Loop: Header=BB22_14 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB22_14
.LBB22_18:
	xorl	%eax, %eax
	testb	%r13b, %r13b
	jg	.LBB22_20
	jmp	.LBB22_23
.LBB22_16:
	movb	$1, %al
	testb	%r13b, %r13b
	jle	.LBB22_23
.LBB22_20:
	testb	%al, %al
	jne	.LBB22_23
.LBB22_21:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB22_22:                              # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r14,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %r13
	jne	.LBB22_22
.LBB22_23:
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	x_side_default, .Lfunc_end22-x_side_default
	.cfi_endproc
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	4, 0x90
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         # @uECC_secp256r1
	.cfi_startproc
# %bb.0:
	leaq	curve_secp256r1(%rip), %rax
	retq
.Lfunc_end23:
	.size	uECC_secp256r1, .Lfunc_end23-uECC_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	4, 0x90
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$8, %rax
	jne	.LBB24_1
# %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$0, -32(%rsp)
	movq	$0, -40(%rsp)
	movl	44(%rsi), %eax
	movl	%eax, -28(%rsp)
	movl	48(%rsi), %eax
	movl	%eax, -24(%rsp)
	movl	52(%rsi), %eax
	movl	%eax, -20(%rsp)
	movl	56(%rsi), %eax
	movl	%eax, -16(%rsp)
	movl	60(%rsi), %eax
	movl	%eax, -12(%rsp)
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%rdx,4), %r8d
	leal	(%rcx,%r8,2), %r9d
	xorl	%r10d, %r10d
	cmpl	%r8d, %r9d
	setb	%r10b
	cmovnel	%eax, %ecx
	orl	%r10d, %ecx
	movl	%r9d, -40(%rsp,%rdx,4)
	incq	%rdx
	cmpq	$8, %rdx
	jne	.LBB24_3
# %bb.4:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r9d
	leal	(%r9,%rdx), %r10d
	addl	-40(%rsp,%r8,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%eax, %edx
	orl	%r11d, %edx
	movl	%r10d, (%rdi,%r8,4)
	incq	%r8
	cmpq	$8, %r8
	jne	.LBB24_5
# %bb.6:
	movl	48(%rsi), %eax
	movl	%eax, -28(%rsp)
	movl	52(%rsi), %eax
	movl	%eax, -24(%rsp)
	movl	56(%rsi), %eax
	movl	%eax, -20(%rsp)
	movl	60(%rsi), %eax
	movl	%eax, -16(%rsp)
	movl	$0, -12(%rsp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r9,4), %r10d
	leal	(%r8,%r10,2), %r11d
	xorl	%ebx, %ebx
	cmpl	%r10d, %r11d
	setb	%bl
	cmovnel	%eax, %r8d
	orl	%ebx, %r8d
	movl	%r11d, -40(%rsp,%r9,4)
	incq	%r9
	cmpq	$8, %r9
	jne	.LBB24_7
# %bb.8:
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB24_9:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r10,4), %r11d
	leal	(%r11,%rax), %ebx
	addl	-40(%rsp,%r10,4), %ebx
	xorl	%ebp, %ebp
	cmpl	%r11d, %ebx
	setb	%bpl
	cmovnel	%r9d, %eax
	orl	%ebp, %eax
	movl	%ebx, (%rdi,%r10,4)
	incq	%r10
	cmpq	$8, %r10
	jne	.LBB24_9
# %bb.10:
	movl	32(%rsi), %r9d
	movl	%r9d, -40(%rsp)
	movl	36(%rsi), %r9d
	movl	%r9d, -36(%rsp)
	movl	40(%rsi), %r9d
	movl	%r9d, -32(%rsp)
	movl	$0, -20(%rsp)
	movq	$0, -28(%rsp)
	movl	56(%rsi), %r9d
	movl	%r9d, -16(%rsp)
	movl	60(%rsi), %r9d
	movl	%r9d, -12(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB24_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r11,4), %ebx
	leal	(%rbx,%r9), %ebp
	addl	-40(%rsp,%r11,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	setb	%r14b
	cmovnel	%r10d, %r9d
	orl	%r14d, %r9d
	movl	%ebp, (%rdi,%r11,4)
	incq	%r11
	cmpq	$8, %r11
	jne	.LBB24_11
# %bb.12:
	movl	36(%rsi), %r10d
	movl	%r10d, -40(%rsp)
	movl	40(%rsi), %r10d
	movl	%r10d, -36(%rsp)
	movl	44(%rsi), %r10d
	movl	%r10d, -32(%rsp)
	movl	52(%rsi), %r10d
	movl	%r10d, -28(%rsp)
	movl	56(%rsi), %r11d
	movl	%r11d, -24(%rsp)
	movl	60(%rsi), %r11d
	movl	%r11d, -20(%rsp)
	movl	%r10d, -16(%rsp)
	movl	32(%rsi), %r10d
	movl	%r10d, -12(%rsp)
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB24_13:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %r14d
	leal	(%r14,%r10), %ebp
	addl	-40(%rsp,%rbx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	setb	%r15b
	cmovnel	%r11d, %r10d
	orl	%r15d, %r10d
	movl	%ebp, (%rdi,%rbx,4)
	incq	%rbx
	cmpq	$8, %rbx
	jne	.LBB24_13
# %bb.14:
	movl	44(%rsi), %r11d
	movl	%r11d, -40(%rsp)
	movl	48(%rsi), %r11d
	movl	%r11d, -36(%rsp)
	movl	52(%rsi), %r11d
	movl	%r11d, -32(%rsp)
	movl	$0, -20(%rsp)
	movq	$0, -28(%rsp)
	movl	32(%rsi), %r11d
	movl	%r11d, -16(%rsp)
	movl	40(%rsi), %r11d
	movl	%r11d, -12(%rsp)
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB24_15:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r14,4), %ebp
	addl	%r11d, %ebp
	xorl	%r15d, %r15d
	subl	%ebp, (%rdi,%r14,4)
	setb	%r15b
	testl	%ebp, %ebp
	cmovnel	%ebx, %r11d
	orl	%r15d, %r11d
	incq	%r14
	cmpq	$8, %r14
	jne	.LBB24_15
# %bb.16:
	movl	48(%rsi), %ebx
	movl	%ebx, -40(%rsp)
	movl	52(%rsi), %ebx
	movl	%ebx, -36(%rsp)
	movl	56(%rsi), %ebx
	movl	%ebx, -32(%rsp)
	movl	60(%rsi), %ebx
	movl	%ebx, -28(%rsp)
	movq	$0, -24(%rsp)
	movl	36(%rsi), %ebx
	movl	%ebx, -16(%rsp)
	movl	44(%rsi), %ebx
	movl	%ebx, -12(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB24_17:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %ebp
	addl	%ebx, %ebp
	xorl	%r12d, %r12d
	subl	%ebp, (%rdi,%r15,4)
	setb	%r12b
	testl	%ebp, %ebp
	cmovnel	%r14d, %ebx
	orl	%r12d, %ebx
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB24_17
# %bb.18:
	movl	52(%rsi), %ebp
	movl	%ebp, -40(%rsp)
	movl	56(%rsi), %ebp
	movl	%ebp, -36(%rsp)
	movl	60(%rsi), %ebp
	movl	%ebp, -32(%rsp)
	movl	32(%rsi), %ebp
	movl	%ebp, -28(%rsp)
	movl	36(%rsi), %ebp
	movl	%ebp, -24(%rsp)
	movl	40(%rsi), %ebp
	movl	%ebp, -20(%rsp)
	movl	$0, -16(%rsp)
	movl	48(%rsi), %ebp
	movl	%ebp, -12(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB24_19:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %r12d
	addl	%ebp, %r12d
	xorl	%r13d, %r13d
	subl	%r12d, (%rdi,%r15,4)
	setb	%r13b
	testl	%r12d, %r12d
	cmovnel	%r14d, %ebp
	orl	%r13d, %ebp
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB24_19
# %bb.20:
	movl	56(%rsi), %r14d
	movl	%r14d, -40(%rsp)
	movl	60(%rsi), %r14d
	movl	%r14d, -36(%rsp)
	movl	$0, -32(%rsp)
	movl	36(%rsi), %r14d
	movl	%r14d, -28(%rsp)
	movl	40(%rsi), %r14d
	movl	%r14d, -24(%rsp)
	movl	44(%rsi), %r14d
	movl	%r14d, -20(%rsp)
	movl	$0, -16(%rsp)
	movl	52(%rsi), %esi
	movl	%esi, -12(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB24_21:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %r12d
	addl	%esi, %r12d
	xorl	%r13d, %r13d
	subl	%r12d, (%rdi,%r15,4)
	setb	%r13b
	testl	%r12d, %r12d
	cmovnel	%r14d, %esi
	orl	%r13d, %esi
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB24_21
# %bb.22:
	addl	%ecx, %edx
	addl	%r8d, %edx
	addl	%r9d, %eax
	addl	%r10d, %eax
	addl	%edx, %eax
	addl	%ebx, %r11d
	addl	%ebp, %r11d
	addl	%esi, %r11d
	subl	%r11d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	leaq	curve_secp256r1(%rip), %rcx
	js	.LBB24_32
# %bb.23:
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB24_25
	.p2align	4, 0x90
.LBB24_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_30 Depth 2
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB24_30:                              #   Parent Loop BB24_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx,%rsi,4), %r9d
	addl	%r8d, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, (%rdi,%rsi,4)
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edx, %r8d
	orl	%r10d, %r8d
	incq	%rsi
	cmpq	$8, %rsi
	jne	.LBB24_30
# %bb.31:                               #   in Loop: Header=BB24_29 Depth=1
	subl	%r8d, %eax
	testl	%eax, %eax
	jne	.LBB24_29
.LBB24_25:
	movl	$7, %esi
	.p2align	4, 0x90
.LBB24_26:                              # =>This Inner Loop Header: Depth=1
	testb	%sil, %sil
	js	.LBB24_29
# %bb.27:                               #   in Loop: Header=BB24_26 Depth=1
	movl	%esi, %r9d
	andl	$127, %r9d
	movl	4(%rcx,%r9,4), %r8d
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB24_36
# %bb.28:                               #   in Loop: Header=BB24_26 Depth=1
	decq	%rsi
	cmpl	%r9d, %r8d
	jae	.LBB24_26
	jmp	.LBB24_29
.LBB24_32:
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_34 Depth 2
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB24_34:                              #   Parent Loop BB24_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r8,4), %r9d
	leal	(%r9,%rsi), %r10d
	addl	4(%rcx,%r8,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%edx, %esi
	orl	%r11d, %esi
	movl	%r10d, (%rdi,%r8,4)
	incq	%r8
	cmpq	$8, %r8
	jne	.LBB24_34
# %bb.35:                               #   in Loop: Header=BB24_33 Depth=1
	addl	%esi, %eax
	js	.LBB24_33
.LBB24_36:
	retq
.Lfunc_end24:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end24-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	4, 0x90
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
	.cfi_startproc
# %bb.0:
	movzbl	(%rsi), %eax
	addb	%al, %al
	testb	%al, %al
	jle	.LBB25_1
# %bb.2:
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB25_3
# %bb.4:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	retq
.LBB25_1:
	movl	$1, %eax
	retq
.Lfunc_end25:
	.size	EccPoint_isZero, .Lfunc_end25-EccPoint_isZero
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movsbl	(%rcx), %ecx
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	leaq	64(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*184(%rbx)
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	apply_z, .Lfunc_end26-apply_z
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movzbl	(%r8), %ebp
	testb	%bpl, %bpl
	jle	.LBB27_1
# %bb.2:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	movl	(%r13,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_3
# %bb.4:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_6
	jmp	.LBB27_9
.LBB27_1:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_9
.LBB27_6:
	testb	%al, %al
	jne	.LBB27_9
# %bb.7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_8
.LBB27_9:
	movsbl	%bpl, %ecx
	leaq	32(%rsp), %rdi
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	movq	%rsp, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r14)
	movsbl	(%r14), %ecx
	leaq	32(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rsp, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r14)
	movsbl	(%r14), %ecx
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rsp, %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB27_10
# %bb.11:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r15,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_12
# %bb.13:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_15
	jmp	.LBB27_18
.LBB27_10:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_18
.LBB27_15:
	testb	%al, %al
	jne	.LBB27_18
# %bb.16:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_17:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r15,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_17
.LBB27_18:
	movsbl	(%r14), %ecx
	leaq	32(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%rsp, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB27_19
# %bb.20:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_21:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%rsp,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_21
# %bb.22:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_24
	jmp	.LBB27_27
.LBB27_19:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_27
.LBB27_24:
	testb	%al, %al
	jne	.LBB27_27
# %bb.25:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_26:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_26
.LBB27_27:
	testb	%bpl, %bpl
	jle	.LBB27_28
# %bb.29:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_30:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%rsp,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_30
# %bb.31:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_33
	jmp	.LBB27_36
.LBB27_28:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_36
.LBB27_33:
	testb	%al, %al
	jne	.LBB27_36
# %bb.34:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_35:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_35
.LBB27_36:
	testb	%bpl, %bpl
	jle	.LBB27_37
# %bb.38:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_39:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%rbx,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_39
# %bb.40:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_42
	jmp	.LBB27_45
.LBB27_37:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_45
.LBB27_42:
	testb	%al, %al
	jne	.LBB27_45
# %bb.43:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_44:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rbx,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_44
.LBB27_45:
	movsbl	(%r14), %ecx
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB27_46
# %bb.47:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_48:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rdx,4), %esi
	movl	(%rsp,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%rbx,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_48
# %bb.49:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_51
	jmp	.LBB27_54
.LBB27_46:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_54
.LBB27_51:
	testb	%al, %al
	jne	.LBB27_54
# %bb.52:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_53:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rbx,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_53
.LBB27_54:
	movsbl	(%r14), %ecx
	leaq	32(%rsp), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB27_55
# %bb.56:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_57:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r15,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB27_57
# %bb.58:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB27_60
	jmp	.LBB27_63
.LBB27_55:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB27_63
.LBB27_60:
	testb	%al, %al
	jne	.LBB27_63
# %bb.61:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_62:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r15,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB27_62
.LBB27_63:
	testb	%bpl, %bpl
	jle	.LBB27_65
# %bb.64:
	leal	(,%rbp,4), %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	callq	memcpy@PLT
.LBB27_65:
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	XYcZ_add, .Lfunc_end27-XYcZ_add
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
	movq	%rcx, %r13
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	movsbq	(%r9), %r14
	movzbl	%r14b, %ebx
	leaq	192(%rsp), %rdi
	testq	%r14, %r14
	jle	.LBB28_2
# %bb.1:
	leal	(,%rbx,4), %edx
	movq	%r12, %rsi
	callq	memcpy@PLT
.LBB28_2:
	leaq	256(%rsp), %rdi
	leaq	(%r12,%r14,4), %rbp
	testb	%bl, %bl
	jle	.LBB28_4
# %bb.3:
	leal	(,%rbx,4), %edx
	movq	%rbp, %rsi
	callq	memcpy@PLT
.LBB28_4:
	testq	%r13, %r13
	movq	%r12, 152(%rsp)                 # 8-byte Spill
	je	.LBB28_7
# %bb.5:
	testb	%bl, %bl
	jle	.LBB28_12
# %bb.6:
	leal	(,%rbx,4), %edx
	leaq	32(%rsp), %rdi
	movq	%r13, %rsi
	callq	memcpy@PLT
	testb	%bl, %bl
	jle	.LBB28_12
.LBB28_11:
	leal	(,%rbx,4), %r12d
	leaq	160(%rsp), %rdi
	leaq	192(%rsp), %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
	leaq	224(%rsp), %rdi
	leaq	256(%rsp), %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB28_12:
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	movq	%r14, 128(%rsp)                 # 8-byte Spill
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movsbl	%bl, %ecx
	leaq	64(%rsp), %r14
	leaq	32(%rsp), %rbp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	leaq	288(%rsp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	leaq	192(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	leaq	256(%rsp), %r13
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	*168(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	leaq	288(%rsp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	leaq	160(%rsp), %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %r14
	leaq	224(%rsp), %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movl	16(%rsp), %eax                  # 4-byte Reload
	addl	$-2, %eax
	testw	%ax, %ax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB28_15
# %bb.13:
	movzwl	%ax, %r14d
	.p2align	4, 0x90
.LBB28_14:                              # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	shrl	$5, %eax
	movl	$1, %edx
	movl	%r14d, %ecx
	shll	%cl, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	testl	%edx, (%rdi,%rax,4)
	sete	%cl
	setne	%sil
	shll	$5, %esi
	leaq	(%rsp,%rsi), %r12
	addq	$160, %r12
	leaq	(%rsp,%rsi), %r13
	addq	$224, %r13
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %rbp
	addq	$160, %rbp
	leaq	224(%rsp,%rcx), %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	callq	XYcZ_addC
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leal	-1(%r14), %eax
	cmpl	$1, %r14d
	movl	%eax, %r14d
	jg	.LBB28_14
.LBB28_15:
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %r14
	addq	$160, %r14
	leaq	(%rsp,%rcx), %rbp
	addq	$224, %rbp
	xorl	$1, %eax
	shll	$5, %eax
	leaq	(%rsp,%rax), %rdx
	addq	$160, %rdx
	leaq	224(%rsp,%rax), %rcx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%r15, %r8
	callq	XYcZ_addC
	movq	24(%rsp), %r9                   # 8-byte Reload
	testb	%r9b, %r9b
	jle	.LBB28_16
# %bb.17:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_18:                              # =>This Inner Loop Header: Depth=1
	movl	192(%rsp,%rdx,4), %esi
	movl	160(%rsp,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, 32(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %r9
	jne	.LBB28_18
# %bb.19:
	testl	%ecx, %ecx
	sete	%al
	jmp	.LBB28_20
.LBB28_7:
	testb	%r14b, %r14b
	jle	.LBB28_9
# %bb.8:
	leal	(,%rbx,4), %edx
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB28_9:
	movl	$1, 32(%rsp)
	testb	%bl, %bl
	jg	.LBB28_11
	jmp	.LBB28_12
.LBB28_16:
	movb	$1, %al
.LBB28_20:
	leaq	4(%r15), %r13
	testb	%r9b, %r9b
	jle	.LBB28_24
# %bb.21:
	testb	%al, %al
	jne	.LBB28_24
# %bb.22:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB28_23:                              # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	(%r13,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 32(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r9
	jne	.LBB28_23
.LBB28_24:
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	leaq	32(%rsp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	152(%rsp), %rdx                 # 8-byte Reload
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	24(%rsp), %ecx                  # 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_modInv
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	144(%rsp), %rdx                 # 8-byte Reload
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	leaq	288(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	leaq	160(%rsp), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	64(%rsp), %rbx
	leaq	224(%rsp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	callq	*184(%r15)
	testb	%bl, %bl
	jle	.LBB28_26
# %bb.25:
	leal	(,%rbx,4), %edx
	leaq	160(%rsp), %rsi
	movq	136(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdi
	callq	memcpy@PLT
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax,4), %rdi
	shll	$2, %ebx
	leaq	224(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB28_26:
	addq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	EccPoint_mult, .Lfunc_end28-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzbl	(%r8), %ebp
	testb	%bpl, %bpl
	jle	.LBB29_1
# %bb.2:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, 32(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_3
# %bb.4:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_6
	jmp	.LBB29_9
.LBB29_1:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_9
.LBB29_6:
	testb	%al, %al
	jne	.LBB29_9
# %bb.7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_8:                               # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 32(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_8
.LBB29_9:
	movsbl	%bpl, %ecx
	leaq	96(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	leaq	32(%rsp), %rdi
	leaq	96(%rsp), %rsi
	callq	*184(%r14)
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	32(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	leaq	96(%rsp), %rsi
	callq	*184(%r14)
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %rdi
	movq	%r13, %rsi
	leaq	32(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	leaq	96(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_13
# %bb.10:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rdx,4), %esi
	leal	(%rsi,%rcx), %edi
	addl	(%r15,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, 32(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_11
# %bb.12:
	testl	%ecx, %ecx
	jne	.LBB29_21
.LBB29_13:
	leaq	-1(%rbp), %rax
	.p2align	4, 0x90
.LBB29_14:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB29_18
# %bb.15:                               #   in Loop: Header=BB29_14 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r14,%rdx,4), %ecx
	movl	32(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB29_16
# %bb.17:                               #   in Loop: Header=BB29_14 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB29_14
.LBB29_18:
	xorl	%eax, %eax
	testb	%bpl, %bpl
	jg	.LBB29_20
	jmp	.LBB29_23
.LBB29_16:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_23
.LBB29_20:
	testb	%al, %al
	jne	.LBB29_23
.LBB29_21:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_22:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r14,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, 32(%rsp,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_22
.LBB29_23:
	testb	%bpl, %bpl
	jle	.LBB29_24
# %bb.25:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_26:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r12,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_26
# %bb.27:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_29
	jmp	.LBB29_32
.LBB29_24:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_32
.LBB29_29:
	testb	%al, %al
	jne	.LBB29_32
# %bb.30:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_31:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r12,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_31
.LBB29_32:
	testb	%bpl, %bpl
	jle	.LBB29_33
# %bb.34:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_35:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_35
# %bb.36:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_38
	jmp	.LBB29_41
.LBB29_33:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_41
.LBB29_38:
	testb	%al, %al
	jne	.LBB29_41
# %bb.39:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_40:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_40
.LBB29_41:
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %rdi
	movq	%rsp, %rdx
	movq	%r15, %rsi
	callq	uECC_vli_mult
	movq	%r15, %rdi
	leaq	96(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_45
# %bb.42:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_43:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	leal	(%rsi,%rcx), %edi
	addl	(%r13,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%edi, (%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_43
# %bb.44:
	testl	%ecx, %ecx
	jne	.LBB29_53
.LBB29_45:
	leaq	-1(%rbp), %rax
	.p2align	4, 0x90
.LBB29_46:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB29_50
# %bb.47:                               #   in Loop: Header=BB29_46 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r14,%rdx,4), %ecx
	movl	(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB29_48
# %bb.49:                               #   in Loop: Header=BB29_46 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB29_46
.LBB29_50:
	xorl	%eax, %eax
	testb	%bpl, %bpl
	jg	.LBB29_52
	jmp	.LBB29_55
.LBB29_48:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_55
.LBB29_52:
	testb	%al, %al
	jne	.LBB29_55
.LBB29_53:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_54:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r14,%rcx,4), %esi
	addl	%edx, %esi
	xorl	%edi, %edi
	subl	%esi, (%rsp,%rcx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%edi, %edx
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_54
.LBB29_55:
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	leaq	96(%rsp), %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_56
# %bb.57:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_58:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r13,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_58
# %bb.59:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_61
	jmp	.LBB29_64
.LBB29_56:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_64
.LBB29_61:
	testb	%al, %al
	jne	.LBB29_64
# %bb.62:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_63:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r13,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_63
.LBB29_64:
	testb	%bpl, %bpl
	jle	.LBB29_65
# %bb.66:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_67:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	movl	(%r13,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, 64(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_67
# %bb.68:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_70
	jmp	.LBB29_73
.LBB29_65:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_73
.LBB29_70:
	testb	%al, %al
	jne	.LBB29_73
# %bb.71:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_72:                              # =>This Inner Loop Header: Depth=1
	movl	64(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 64(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_72
.LBB29_73:
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %r13
	leaq	64(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_74
# %bb.75:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_76:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, (%r12,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_76
# %bb.77:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_79
	jmp	.LBB29_82
.LBB29_74:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_82
.LBB29_79:
	testb	%al, %al
	jne	.LBB29_82
# %bb.80:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_81:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r12,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_81
.LBB29_82:
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %r12
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	leaq	64(%rsp), %rdi
	movq	%r12, %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_83
# %bb.84:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_85:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rdx,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, 64(%rsp,%rdx,4)
	setb	%dil
	testl	%esi, %esi
	cmovnel	%eax, %ecx
	orl	%edi, %ecx
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_85
# %bb.86:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_88
	jmp	.LBB29_91
.LBB29_83:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_91
.LBB29_88:
	testb	%al, %al
	jne	.LBB29_91
# %bb.89:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_90:                              # =>This Inner Loop Header: Depth=1
	movl	64(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, 64(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_90
.LBB29_91:
	testb	%bpl, %bpl
	jle	.LBB29_92
# %bb.93:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_94:                              # =>This Inner Loop Header: Depth=1
	movl	64(%rsp,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_94
# %bb.95:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_97
	jmp	.LBB29_100
.LBB29_92:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_100
.LBB29_97:
	testb	%al, %al
	jne	.LBB29_100
# %bb.98:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_99:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_99
.LBB29_100:
	movsbl	(%r14), %ecx
	leaq	96(%rsp), %r12
	movq	%rsp, %r13
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*184(%r14)
	testb	%bpl, %bpl
	jle	.LBB29_101
# %bb.102:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_103:                             # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rdx,4), %esi
	movl	(%r15,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%eax, %ecx
	orl	%r8d, %ecx
	movl	%esi, (%r15,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB29_103
# %bb.104:
	testl	%ecx, %ecx
	sete	%al
	testb	%bpl, %bpl
	jg	.LBB29_106
	jmp	.LBB29_109
.LBB29_101:
	movb	$1, %al
	testb	%bpl, %bpl
	jle	.LBB29_109
.LBB29_106:
	testb	%al, %al
	jne	.LBB29_109
# %bb.107:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB29_108:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %esi
	leal	(%rsi,%rdx), %edi
	addl	4(%r14,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	%edi, (%r15,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB29_108
.LBB29_109:
	testb	%bpl, %bpl
	jle	.LBB29_111
# %bb.110:
	leal	(,%rbp,4), %edx
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy@PLT
.LBB29_111:
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	XYcZ_addC, .Lfunc_end29-XYcZ_addC
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movswl	2(%rcx), %r9d
	leal	31(%r9), %eax
	leal	62(%r9), %r8d
	testl	%eax, %eax
	cmovnsl	%eax, %r8d
	sarl	$5, %r8d
	testb	%r8b, %r8b
	jle	.LBB30_4
# %bb.1:
	movzbl	%r8b, %eax
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB30_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %r14d
	leal	(%r14,%r11), %ebp
	addl	36(%rcx,%rbx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	setb	%r15b
	cmovnel	%r10d, %r11d
	orl	%r15d, %r11d
	movl	%ebp, (%rsi,%rbx,4)
	incq	%rbx
	cmpq	%rbx, %rax
	jne	.LBB30_2
# %bb.3:
	movl	$1, %eax
	testl	%r11d, %r11d
	jne	.LBB30_6
.LBB30_4:
	movsbl	%r8b, %edi
	shll	$5, %edi
	xorl	%eax, %eax
	cmpl	%r9d, %edi
	jle	.LBB30_6
# %bb.5:
	movl	%r9d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rsi,%rax,4), %edi
	xorl	%eax, %eax
	btl	%r9d, %edi
	setb	%al
.LBB30_6:
	testb	%r8b, %r8b
	jle	.LBB30_9
# %bb.7:
	movzbl	%r8b, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB30_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r11d
	leal	(%r11,%r10), %ebx
	addl	36(%rcx,%r9,4), %ebx
	xorl	%ebp, %ebp
	cmpl	%r11d, %ebx
	setb	%bpl
	cmovnel	%r8d, %r10d
	orl	%ebp, %r10d
	movl	%ebx, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rdi
	jne	.LBB30_8
.LBB30_9:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	regularize_k, .Lfunc_end30-regularize_k
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	movswl	2(%rdx), %eax
	leal	31(%rax), %edx
	leal	62(%rax), %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$5, %ecx
	testb	%cl, %cl
	jle	.LBB31_5
# %bb.1:
	movzbl	%cl, %edx
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r10d
	leal	(%r10,%r8), %r11d
	addl	36(%r14,%r9,4), %r11d
	xorl	%ebp, %ebp
	cmpl	%r10d, %r11d
	setb	%bpl
	cmovnel	%edi, %r8d
	orl	%ebp, %r8d
	movl	%r11d, 16(%rsp,%r9,4)
	incq	%r9
	cmpq	%r9, %rdx
	jne	.LBB31_2
# %bb.3:
	testl	%r8d, %r8d
	je	.LBB31_5
# %bb.4:
	xorl	%edx, %edx
	jmp	.LBB31_7
.LBB31_5:
	movsbl	%cl, %esi
	shll	$5, %esi
	movl	$1, %edx
	cmpl	%eax, %esi
	jle	.LBB31_7
# %bb.6:
	movl	%eax, %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	16(%rsp,%rdx,4), %esi
	xorl	%edx, %edx
	btl	%eax, %esi
	setae	%dl
.LBB31_7:
	testb	%cl, %cl
	jle	.LBB31_10
# %bb.8:
	movzbl	%cl, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB31_9:                               # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rdi,4), %r9d
	leal	(%r9,%r8), %r10d
	addl	36(%r14,%rdi,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%esi, %r8d
	orl	%r11d, %r8d
	movl	%r10d, 48(%rsp,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rcx
	jne	.LBB31_9
.LBB31_10:
	leaq	68(%r14), %rsi
	movq	(%rsp,%rdx,8), %rdx
	incl	%eax
	movswl	%ax, %r8d
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r9
	callq	EccPoint_mult
	movzbl	(%r14), %eax
	addb	%al, %al
	testb	%al, %al
	jle	.LBB31_14
# %bb.11:
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB31_12:                              # =>This Inner Loop Header: Depth=1
	orl	(%rbx,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB31_12
# %bb.13:
	xorl	%r15d, %r15d
	testl	%edx, %edx
	setne	%r15b
.LBB31_14:
	movl	%r15d, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	EccPoint_compute_public_key, .Lfunc_end31-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	4, 0x90
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB32_3
# %bb.1:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	notl	%ecx
	addl	%esi, %ecx
	movl	%ecx, %r8d
	andl	$-4, %r8d
	movl	(%rdx,%r8), %r8d
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r8d
	movsbq	%al, %rax
	movb	%r8b, (%rdi,%rax)
	incb	%al
	movsbl	%al, %ecx
	cmpl	%esi, %ecx
	jl	.LBB32_2
.LBB32_3:
	retq
.Lfunc_end32:
	.size	uECC_vli_nativeToBytes, .Lfunc_end32-uECC_vli_nativeToBytes
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	4, 0x90
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leal	3(%rbx), %ecx
	leal	6(%rbx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$2, %eax
	testb	%al, %al
	jle	.LBB33_2
# %bb.1:
	movzbl	%al, %edx
	shll	$2, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB33_2:
	testl	%ebx, %ebx
	jle	.LBB33_5
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	notl	%edx
	addl	%ebx, %edx
	movsbq	%al, %rax
	movzbl	(%r14,%rax), %esi
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	andl	$-4, %edx
	orl	%esi, (%r15,%rdx)
	incb	%al
	movsbl	%al, %edx
	cmpl	%ebx, %edx
	jl	.LBB33_4
.LBB33_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	uECC_vli_bytesToNative, .Lfunc_end33-uECC_vli_bytesToNative
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzbl	%bl, %r13d
	leal	-1(%r13), %eax
	movzbl	%al, %ecx
	cmpb	$-1, %cl
	movl	$255, %eax
	cmovll	%ecx, %eax
	incb	%al
	movl	%r13d, %ecx
	incb	%cl
	leaq	-1(%r13), %rdx
	.p2align	4, 0x90
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB34_2
# %bb.3:                                #   in Loop: Header=BB34_1 Depth=1
	movl	%edx, %esi
	andl	$127, %esi
	decb	%cl
	decq	%rdx
	cmpl	$0, (%r14,%rsi,4)
	je	.LBB34_1
	jmp	.LBB34_4
.LBB34_2:
	movl	%eax, %ecx
.LBB34_4:
	xorl	%ebp, %ebp
	movl	$0, %eax
	testb	%cl, %cl
	je	.LBB34_9
# %bb.5:
	movsbl	%cl, %eax
	decl	%eax
	movsbq	%cl, %rcx
	movl	-4(%r14,%rcx,4), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB34_8
# %bb.6:
	movl	%edx, %esi
	.p2align	4, 0x90
.LBB34_7:                               # =>This Inner Loop Header: Depth=1
	shrl	%esi
	incl	%ecx
	cmpl	$1, %edx
	movl	%esi, %edx
	ja	.LBB34_7
.LBB34_8:
	shll	$5, %eax
	addl	%ecx, %eax
.LBB34_9:
	cmpq	$0, g_rng_function(%rip)
	je	.LBB34_30
# %bb.10:
	movsbl	%bl, %ecx
	leal	(,%rcx,4), %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	shll	$5, %ecx
	subl	%eax, %ecx
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shrl	%cl, %eax
	movl	%eax, (%rsp)                    # 4-byte Spill
	movsbq	%bl, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB34_11
.LBB34_23:                              #   in Loop: Header=BB34_11 Depth=1
	movb	$1, %cl
	orb	%al, %cl
	jne	.LBB34_29
	jmp	.LBB34_28
	.p2align	4, 0x90
.LBB34_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_15 Depth 2
                                        #     Child Loop BB34_20 Depth 2
                                        #     Child Loop BB34_25 Depth 2
	movq	%r15, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	callq	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.LBB34_30
# %bb.12:                               #   in Loop: Header=BB34_11 Depth=1
	movl	(%rsp), %eax                    # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	andl	%eax, -4(%r15,%rcx,4)
	testb	%bl, %bl
	jle	.LBB34_13
# %bb.14:                               #   in Loop: Header=BB34_11 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB34_15:                              #   Parent Loop BB34_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	(%r15,%rax,4), %ecx
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB34_15
# %bb.16:                               #   in Loop: Header=BB34_11 Depth=1
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	testl	%eax, %eax
	jne	.LBB34_29
	jmp	.LBB34_18
	.p2align	4, 0x90
.LBB34_13:                              #   in Loop: Header=BB34_11 Depth=1
	movl	$1, %eax
	testl	%eax, %eax
	jne	.LBB34_29
.LBB34_18:                              #   in Loop: Header=BB34_11 Depth=1
	xorl	%eax, %eax
	testb	%bl, %bl
	jle	.LBB34_22
# %bb.19:                               #   in Loop: Header=BB34_11 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB34_20:                              #   Parent Loop BB34_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rcx,4), %edx
	movl	(%r15,%rcx,4), %esi
	addl	%eax, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	testl	%esi, %esi
	cmovnel	%ebp, %eax
	orl	%edi, %eax
	movl	%edx, 16(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r13
	jne	.LBB34_20
# %bb.21:                               #   in Loop: Header=BB34_11 Depth=1
	testl	%eax, %eax
	sete	%al
	addb	%al, %al
	addb	$-2, %al
.LBB34_22:                              #   in Loop: Header=BB34_11 Depth=1
	testb	%bl, %bl
	jle	.LBB34_23
# %bb.24:                               #   in Loop: Header=BB34_11 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB34_25:                              #   Parent Loop BB34_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	16(%rsp,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %r13
	jne	.LBB34_25
# %bb.26:                               #   in Loop: Header=BB34_11 Depth=1
	testl	%edx, %edx
	sete	%cl
	orb	%al, %cl
	je	.LBB34_28
.LBB34_29:                              #   in Loop: Header=BB34_11 Depth=1
	incl	%r12d
	cmpl	$64, %r12d
	jne	.LBB34_11
	jmp	.LBB34_30
.LBB34_28:
	movl	$1, %ebp
.LBB34_30:
	movl	%ebp, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	uECC_generate_random_int, .Lfunc_end34-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	4, 0x90
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	(%rsi), %r12d
	leal	(%r12,%r12), %edx
	movl	$-1, %eax
	testb	%dl, %dl
	jle	.LBB35_17
# %bb.1:
	movsbq	%r12b, %rcx
	movzbl	%dl, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%r8,4), %r9d
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB35_2
# %bb.3:
	testl	%r9d, %r9d
	je	.LBB35_17
# %bb.4:
	leaq	-1(%r12), %rdx
	movl	$-2, %eax
	.p2align	4, 0x90
.LBB35_5:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB35_17
# %bb.6:                                #   in Loop: Header=BB35_5 Depth=1
	movl	%edx, %r9d
	andl	$127, %r9d
	movl	4(%rsi,%r9,4), %r8d
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB35_8
# %bb.7:                                #   in Loop: Header=BB35_5 Depth=1
	decq	%rdx
	cmpl	%r9d, %r8d
	jae	.LBB35_5
	jmp	.LBB35_17
.LBB35_8:
	leaq	(%rdi,%rcx,4), %rdx
	leaq	-1(%r12), %rcx
	.p2align	4, 0x90
.LBB35_9:                               # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	js	.LBB35_17
# %bb.10:                               #   in Loop: Header=BB35_9 Depth=1
	movl	%ecx, %r9d
	andl	$127, %r9d
	movl	4(%rsi,%r9,4), %r8d
	movl	(%rdx,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB35_12
# %bb.11:                               #   in Loop: Header=BB35_9 Depth=1
	decq	%rcx
	cmpl	%r9d, %r8d
	jae	.LBB35_9
	jmp	.LBB35_17
.LBB35_12:
	movsbl	%r12b, %ecx
	leaq	32(%rsp), %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%rsi, %r15
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*176(%r15)
	decb	%r12b
	js	.LBB35_13
# %bb.14:
	movzbl	%r12b, %eax
	incq	%rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB35_15:                              # =>This Inner Loop Header: Depth=1
	movl	28(%rsp,%rax,4), %edx
	xorl	-4(%rsp,%rax,4), %edx
	orl	%edx, %ecx
	decq	%rax
	jg	.LBB35_15
# %bb.16:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	leal	(%rax,%rax,2), %eax
	addl	$-3, %eax
	jmp	.LBB35_17
.LBB35_13:
	xorl	%eax, %eax
.LBB35_17:
	addq	$104, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	uECC_valid_point, .Lfunc_end35-uECC_valid_point
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsbl	1(%rsi), %r15d
	movslq	%r15d, %r13
	movzbl	%r13b, %ebp
	leal	3(%r13), %eax
	leal	6(%r13), %r12d
	testl	%eax, %eax
	cmovnsl	%eax, %r12d
	sarl	$2, %r12d
	testb	%r12b, %r12b
	jle	.LBB36_2
# %bb.1:
	movzbl	%r12b, %edx
	shll	$2, %edx
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB36_2:
	testb	%r13b, %r13b
	jle	.LBB36_5
# %bb.3:
	leal	-1(%r15), %eax
	leal	-8(,%r15,8), %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB36_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rsi), %edi
	movl	%edx, %ecx
	andb	$24, %cl
	shll	%cl, %edi
	movl	%eax, %ecx
	andl	$-4, %ecx
	orl	%edi, 16(%rsp,%rcx)
	incq	%rsi
	decl	%eax
	addl	$-8, %edx
	cmpq	%rsi, %rbp
	jne	.LBB36_4
.LBB36_5:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movsbq	(%rbx), %rax
	leaq	(%rsp,%rax,4), %r15
	addq	$16, %r15
	testb	%r12b, %r12b
	jle	.LBB36_7
# %bb.6:
	movzbl	%r12b, %edx
	shll	$2, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB36_7:
	testb	%bpl, %bpl
	jle	.LBB36_10
# %bb.8:
	addq	%r13, %r14
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movzbl	%cl, %eax
	movl	%ecx, %edx
	decl	%edx
	leal	-8(,%rcx,8), %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rdi), %r8d
	movl	%esi, %ecx
	andb	$24, %cl
	shll	%cl, %r8d
	movl	%edx, %ecx
	andl	$-4, %ecx
	orl	%r8d, (%r15,%rcx)
	incq	%rdi
	decl	%edx
	addl	$-8, %esi
	cmpq	%rdi, %rax
	jne	.LBB36_9
.LBB36_10:
	movl	$15, %edx
	movl	$-4, %eax
	.p2align	4, 0x90
.LBB36_11:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	testb	%cl, %cl
	js	.LBB36_15
# %bb.12:                               #   in Loop: Header=BB36_11 Depth=1
	movl	%ecx, %esi
	andl	$127, %esi
	movl	16(%rsp,%rsi,4), %edi
	leaq	-1(%rcx), %rdx
	cmpl	68(%rbx,%rsi,4), %edi
	je	.LBB36_11
# %bb.13:
	testb	%cl, %cl
	js	.LBB36_15
# %bb.14:
	leaq	16(%rsp), %rdi
	movq	%rbx, %rsi
	callq	uECC_valid_point
.LBB36_15:
	addq	$88, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	uECC_valid_public_key, .Lfunc_end36-uECC_valid_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	4, 0x90
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                # @uECC_compute_public_key
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
	subq	$96, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movswl	2(%rdx), %r12d
	leal	7(%r12), %eax
	leal	14(%r12), %r13d
	testl	%eax, %eax
	cmovnsl	%eax, %r13d
	sarl	$3, %r13d
	leal	3(%r13), %ecx
	leal	6(%r13), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$2, %eax
	testb	%al, %al
	jle	.LBB37_2
# %bb.1:
	movzbl	%al, %edx
	shll	$2, %edx
	movq	%rsp, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB37_2:
	testw	%r12w, %r12w
	jle	.LBB37_5
# %bb.3:
	xorl	%eax, %eax
	movb	$1, %dl
	.p2align	4, 0x90
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	leal	-1(%rdx), %ecx
	notl	%eax
	addl	%r13d, %eax
	movsbq	%cl, %rcx
	movzbl	(%r15,%rcx), %esi
	leal	(,%rax,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	andl	$-4, %eax
	orl	%esi, (%rsp,%rax)
	movsbl	%dl, %eax
	incb	%dl
	cmpl	%eax, %r13d
	jg	.LBB37_4
.LBB37_5:
	leal	31(%r12), %eax
	addl	$62, %r12d
	testl	%eax, %eax
	cmovnsl	%eax, %r12d
	sarl	$5, %r12d
	testb	%r12b, %r12b
	jle	.LBB37_18
# %bb.6:
	movzbl	%r12b, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	orl	(%rsp,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB37_7
# %bb.8:
	testl	%edx, %edx
	je	.LBB37_18
# %bb.9:
	xorl	%ecx, %ecx
	testb	%r12b, %r12b
	jle	.LBB37_13
# %bb.10:
	movzbl	%r12b, %eax
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB37_11:                              # =>This Inner Loop Header: Depth=1
	movl	36(%r14,%rsi,4), %edi
	movl	(%rsp,%rsi,4), %r8d
	addl	%edx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%ecx, %edx
	orl	%r9d, %edx
	movl	%edi, 32(%rsp,%rsi,4)
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB37_11
# %bb.12:
	testl	%edx, %edx
	sete	%cl
	addb	%cl, %cl
	addb	$-2, %cl
.LBB37_13:
	testb	%r12b, %r12b
	jle	.LBB37_19
# %bb.14:
	movzbl	%r12b, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB37_15:                              # =>This Inner Loop Header: Depth=1
	orl	32(%rsp,%rdx,4), %esi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB37_15
# %bb.16:
	testl	%esi, %esi
	sete	%dl
	jmp	.LBB37_20
.LBB37_18:
	xorl	%eax, %eax
	jmp	.LBB37_21
.LBB37_19:
	movb	$1, %dl
.LBB37_20:
	xorl	%eax, %eax
	orb	%cl, %dl
	je	.LBB37_22
.LBB37_21:
	addq	$96, %rsp
	.cfi_def_cfa_offset 48
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
	retq
.LBB37_22:
	.cfi_def_cfa_offset 144
	leaq	32(%rsp), %rdi
	movq	%rsp, %rsi
	movq	%r14, %rdx
	callq	EccPoint_compute_public_key
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB37_21
# %bb.23:
	movsbl	1(%r14), %eax
	testl	%eax, %eax
	jle	.LBB37_26
# %bb.24:
	movzbl	%al, %edx
	leal	-8(,%rax,8), %esi
	decl	%eax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB37_25:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	andl	$-4, %ecx
	movl	32(%rsp,%rcx), %r8d
	movl	%esi, %ecx
	andb	$24, %cl
	shrl	%cl, %r8d
	movb	%r8b, (%rbx,%rdi)
	incq	%rdi
	addl	$-8, %esi
	decl	%eax
	cmpq	%rdi, %rdx
	jne	.LBB37_25
.LBB37_26:
	movsbq	1(%r14), %rdx
	movl	$1, %eax
	testq	%rdx, %rdx
	jle	.LBB37_21
# %bb.27:
	addq	%rdx, %rbx
	movsbq	(%r14), %rcx
	leaq	(%rsp,%rcx,4), %rsi
	addq	$32, %rsi
	movzbl	%dl, %edi
	leal	-8(,%rdx,8), %r8d
	decl	%edx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB37_28:                              # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	andl	$-4, %ecx
	movl	(%rsi,%rcx), %r10d
	movl	%r8d, %ecx
	andb	$24, %cl
	shrl	%cl, %r10d
	movb	%r10b, (%rbx,%r9)
	incq	%r9
	addl	$-8, %r8d
	decl	%edx
	cmpq	%r9, %rdi
	jne	.LBB37_28
	jmp	.LBB37_21
.Lfunc_end37:
	.size	uECC_compute_public_key, .Lfunc_end37-uECC_compute_public_key
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
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
