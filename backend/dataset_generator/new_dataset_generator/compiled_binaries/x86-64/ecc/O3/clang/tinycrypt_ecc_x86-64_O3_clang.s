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
	cmpb	$4, %sil
	jae	.LBB5_4
# %bb.3:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB5_7
.LBB5_1:
	movl	$1, %eax
	retq
.LBB5_4:
	movl	%eax, %ecx
	andl	$124, %ecx
	movl	%ecx, %edx
	shll	$2, %edx
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rsi), %xmm1
	por	%xmm1, %xmm0
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB5_5
# %bb.6:
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %edx
	cmpq	%rax, %rcx
	je	.LBB5_8
	.p2align	4, 0x90
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB5_7
.LBB5_8:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
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
# %bb.4:
	xorl	%edx, %edx
	testb	%cl, %cl
	je	.LBB7_5
.LBB7_6:
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
.LBB7_2:
	movl	%eax, %ecx
	xorl	%edx, %edx
	testb	%cl, %cl
	jne	.LBB7_6
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
	jle	.LBB8_11
# %bb.1:
	movzbl	%dl, %eax
	xorl	%ecx, %ecx
	cmpb	$8, %dl
	jb	.LBB8_6
# %bb.2:
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	cmpq	$16, %rdx
	jb	.LBB8_6
# %bb.3:
	movl	%eax, %ecx
	andl	$124, %ecx
	movl	%ecx, %edx
	shll	$2, %edx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	movups	(%rsi,%r8), %xmm0
	movups	%xmm0, (%rdi,%r8)
	addq	$16, %r8
	cmpq	%r8, %rdx
	jne	.LBB8_4
# %bb.5:
	cmpq	%rax, %rcx
	je	.LBB8_11
.LBB8_6:
	movq	%rax, %r8
	movq	%rcx, %rdx
	andq	$3, %r8
	je	.LBB8_9
# %bb.7:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rdx,4), %r9d
	movl	%r9d, (%rdi,%rdx,4)
	incq	%rdx
	decq	%r8
	jne	.LBB8_8
.LBB8_9:
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB8_11
	.p2align	4, 0x90
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rdx,4), %ecx
	movl	%ecx, (%rdi,%rdx,4)
	movl	4(%rsi,%rdx,4), %ecx
	movl	%ecx, 4(%rdi,%rdx,4)
	movl	8(%rsi,%rdx,4), %ecx
	movl	%ecx, 8(%rdi,%rdx,4)
	movl	12(%rsi,%rdx,4), %ecx
	movl	%ecx, 12(%rdi,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB8_10
.LBB8_11:
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
	movzbl	%dl, %r10d
	xorl	%r8d, %r8d
	cmpb	$7, %r10b
	jae	.LBB10_4
# %bb.3:
	movq	%r10, %rax
	jmp	.LBB10_7
.LBB10_1:
	xorl	%eax, %eax
	retq
.LBB10_4:
	leaq	1(%r10), %rcx
	movl	%ecx, %edx
	andl	$248, %edx
	movq	%r10, %rax
	subq	%rdx, %rax
	movq	%rdx, %r8
	negq	%r8
	leaq	(%rdi,%r10,4), %r9
	addq	$-12, %r9
	leaq	(%rsi,%r10,4), %r10
	addq	$-12, %r10
	pxor	%xmm0, %xmm0
	xorl	%r11d, %r11d
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB10_5:                               # =>This Inner Loop Header: Depth=1
	movdqu	-16(%r9,%r11,4), %xmm2
	movdqu	(%r9,%r11,4), %xmm3
	movdqu	-16(%r10,%r11,4), %xmm4
	movdqu	(%r10,%r11,4), %xmm5
	pshufd	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0]
	pshufd	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0]
	pxor	%xmm3, %xmm5
	por	%xmm5, %xmm0
	pshufd	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0]
	pshufd	$27, %xmm4, %xmm3               # xmm3 = xmm4[3,2,1,0]
	pxor	%xmm2, %xmm3
	por	%xmm3, %xmm1
	addq	$-8, %r11
	cmpq	%r11, %r8
	jne	.LBB10_5
# %bb.6:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %r8d
	cmpq	%rdx, %rcx
	je	.LBB10_8
	.p2align	4, 0x90
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	xorl	(%rdi,%rax,4), %ecx
	orl	%ecx, %r8d
	addq	$-1, %rax
	jb	.LBB10_7
.LBB10_8:
	xorl	%eax, %eax
	testl	%r8d, %r8d
	setne	%al
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
# %bb.2:
	movzbl	%cl, %r8d
	cmpb	$1, %cl
	jne	.LBB12_7
# %bb.3:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r8b
	jne	.LBB12_5
	jmp	.LBB12_6
.LBB12_1:
	xorl	%eax, %eax
	retq
.LBB12_7:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r9d
	andl	$126, %r9d
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rcx,4), %r11d
	movl	(%rdx,%rcx,4), %ebx
	addl	%eax, %ebx
	xorl	%ebp, %ebp
	subl	%ebx, %r11d
	setb	%bpl
	testl	%ebx, %ebx
	cmovnel	%r10d, %eax
	orl	%ebp, %eax
	movl	%r11d, (%rdi,%rcx,4)
	movl	4(%rsi,%rcx,4), %r11d
	movl	4(%rdx,%rcx,4), %ebx
	addl	%eax, %ebx
	xorl	%ebp, %ebp
	subl	%ebx, %r11d
	setb	%bpl
	testl	%ebx, %ebx
	cmovnel	%r10d, %eax
	orl	%ebp, %eax
	movl	%r11d, 4(%rdi,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %r9
	jne	.LBB12_8
# %bb.9:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	testb	$1, %r8b
	je	.LBB12_6
.LBB12_5:
	movl	(%rsi,%rcx,4), %esi
	movl	(%rdx,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%r8d, %r8d
	subl	%edx, %esi
	setb	%r8b
	xorl	%r9d, %r9d
	testl	%edx, %edx
	cmovel	%eax, %r9d
	orl	%r8d, %r9d
	movl	%esi, (%rdi,%rcx,4)
	movl	%r9d, %eax
.LBB12_6:
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
	xorl	%eax, %eax
	testb	%dl, %dl
	jle	.LBB13_14
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movzbl	%dl, %ecx
	cmpb	$1, %dl
	jne	.LBB13_3
# %bb.2:
	xorl	%r8d, %r8d
	jmp	.LBB13_5
.LBB13_3:
	movl	%ecx, %r9d
	andl	$126, %r9d
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r11d
	movl	(%rsi,%r8,4), %ebx
	addl	%eax, %ebx
	xorl	%ebp, %ebp
	subl	%ebx, %r11d
	setb	%bpl
	testl	%ebx, %ebx
	cmovnel	%r10d, %eax
	orl	%ebp, %eax
	movl	%r11d, -40(%rsp,%r8,4)
	movl	4(%rdi,%r8,4), %r11d
	movl	4(%rsi,%r8,4), %ebx
	addl	%eax, %ebx
	xorl	%ebp, %ebp
	subl	%ebx, %r11d
	setb	%bpl
	testl	%ebx, %ebx
	cmovnel	%r10d, %eax
	orl	%ebp, %eax
	movl	%r11d, -36(%rsp,%r8,4)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB13_4
.LBB13_5:
	testb	$1, %cl
	je	.LBB13_7
# %bb.6:
	movl	(%rdi,%r8,4), %edi
	movl	(%rsi,%r8,4), %esi
	addl	%eax, %esi
	xorl	%r9d, %r9d
	subl	%esi, %edi
	setb	%r9b
	xorl	%r10d, %r10d
	testl	%esi, %esi
	cmovel	%eax, %r10d
	orl	%r9d, %r10d
	movl	%edi, -40(%rsp,%r8,4)
	movl	%r10d, %eax
.LBB13_7:
	cmpb	$4, %dl
	jae	.LBB13_9
# %bb.8:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB13_12
.LBB13_9:
	movl	%ecx, %edx
	andl	$124, %edx
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB13_10:                              # =>This Inner Loop Header: Depth=1
	por	-40(%rsp,%rsi,4), %xmm0
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB13_10
# %bb.11:
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %esi
	cmpq	%rcx, %rdx
	je	.LBB13_13
	.p2align	4, 0x90
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	orl	-40(%rsp,%rdx,4), %esi
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	.LBB13_12
.LBB13_13:
	testl	%eax, %eax
	sete	%al
	testl	%esi, %esi
	sete	%cl
	addb	%al, %al
	orb	%cl, %al
	addb	$-2, %al
	xorb	$1, %al
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
.LBB13_14:
                                        # kill: def $al killed $al killed $rax
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
	jle	.LBB14_8
# %bb.1:
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
	cmpb	$1, %r8b
	jne	.LBB14_3
# %bb.2:
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB14_5
.LBB14_3:
	movl	%eax, %r11d
	andl	$126, %r11d
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r14d
	leal	(%r14,%r10), %ebp
	addl	(%rdx,%r9,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	cmovnel	%ebx, %r10d
	setb	%r15b
	orl	%r15d, %r10d
	movl	%ebp, (%rdi,%r9,4)
	movl	4(%rsi,%r9,4), %r14d
	leal	(%r14,%r10), %ebp
	addl	4(%rdx,%r9,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	setb	%r15b
	cmovnel	%ebx, %r10d
	orl	%r15d, %r10d
	movl	%ebp, 4(%rdi,%r9,4)
	addq	$2, %r9
	cmpq	%r9, %r11
	jne	.LBB14_4
.LBB14_5:
	testb	$1, %al
	je	.LBB14_7
# %bb.6:
	movl	(%rsi,%r9,4), %esi
	leal	(%rsi,%r10), %r11d
	addl	(%rdx,%r9,4), %r11d
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	cmpl	%esi, %r11d
	cmovel	%r10d, %edx
	setb	%bl
	orl	%ebx, %edx
	movl	%r11d, (%rdi,%r9,4)
	movl	%edx, %r10d
.LBB14_7:
	testl	%r10d, %r10d
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	jne	.LBB14_12
.LBB14_8:
	leaq	-1(%rax), %rdx
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB14_12
# %bb.10:                               #   in Loop: Header=BB14_9 Depth=1
	movl	%edx, %r9d
	andl	$127, %r9d
	movl	(%rcx,%r9,4), %esi
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %esi
	ja	.LBB14_19
# %bb.11:                               #   in Loop: Header=BB14_9 Depth=1
	decq	%rdx
	cmpl	%r9d, %esi
	jae	.LBB14_9
.LBB14_12:
	testb	%r8b, %r8b
	jle	.LBB14_19
# %bb.13:
	cmpb	$1, %r8b
	jne	.LBB14_15
# %bb.14:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB14_17
.LBB14_15:
	movl	%eax, %r8d
	andl	$126, %r8d
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB14_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdx,4), %r10d
	addl	%esi, %r10d
	xorl	%r11d, %r11d
	subl	%r10d, (%rdi,%rdx,4)
	setb	%r11b
	testl	%r10d, %r10d
	cmovnel	%r9d, %esi
	orl	%r11d, %esi
	movl	4(%rcx,%rdx,4), %r10d
	addl	%esi, %r10d
	xorl	%r11d, %r11d
	subl	%r10d, 4(%rdi,%rdx,4)
	setb	%r11b
	testl	%r10d, %r10d
	cmovnel	%r9d, %esi
	orl	%r11d, %esi
	addq	$2, %rdx
	cmpq	%rdx, %r8
	jne	.LBB14_16
.LBB14_17:
	testb	$1, %al
	je	.LBB14_19
# %bb.18:
	addl	(%rcx,%rdx,4), %esi
	subl	%esi, (%rdi,%rdx,4)
.LBB14_19:
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
	testb	%r8b, %r8b
	jle	.LBB15_15
# %bb.1:
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
	movzbl	%r8b, %eax
	movq	%rax, %r8
	decq	%r8
	je	.LBB15_2
# %bb.3:
	movl	%eax, %r11d
	andl	$126, %r11d
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %ebp
	movl	(%rdx,%r9,4), %r14d
	addl	%r10d, %r14d
	xorl	%r15d, %r15d
	subl	%r14d, %ebp
	setb	%r15b
	testl	%r14d, %r14d
	cmovnel	%ebx, %r10d
	orl	%r15d, %r10d
	movl	%ebp, (%rdi,%r9,4)
	movl	4(%rsi,%r9,4), %ebp
	movl	4(%rdx,%r9,4), %r14d
	addl	%r10d, %r14d
	xorl	%r15d, %r15d
	subl	%r14d, %ebp
	setb	%r15b
	testl	%r14d, %r14d
	cmovnel	%ebx, %r10d
	orl	%r15d, %r10d
	movl	%ebp, 4(%rdi,%r9,4)
	addq	$2, %r9
	cmpq	%r9, %r11
	jne	.LBB15_4
# %bb.5:
	testb	$1, %al
	je	.LBB15_7
.LBB15_6:
	movl	(%rsi,%r9,4), %esi
	movl	(%rdx,%r9,4), %edx
	addl	%r10d, %edx
	xorl	%r11d, %r11d
	subl	%edx, %esi
	setb	%r11b
	xorl	%ebx, %ebx
	testl	%edx, %edx
	cmovel	%r10d, %ebx
	orl	%r11d, %ebx
	movl	%esi, (%rdi,%r9,4)
	movl	%ebx, %r10d
.LBB15_7:
	testl	%r10d, %r10d
	je	.LBB15_14
# %bb.8:
	testq	%r8, %r8
	je	.LBB15_9
# %bb.10:
	movl	%eax, %r8d
	andl	$126, %r8d
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %r10d
	leal	(%r10,%rsi), %r11d
	addl	(%rcx,%rdx,4), %r11d
	movl	4(%rdi,%rdx,4), %ebx
	xorl	%ebp, %ebp
	cmpl	%r10d, %r11d
	setb	%bpl
	cmovnel	%r9d, %esi
	orl	%ebp, %esi
	movl	%r11d, (%rdi,%rdx,4)
	leal	(%rbx,%rsi), %r10d
	addl	4(%rcx,%rdx,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%ebx, %r10d
	setb	%r11b
	cmovnel	%r9d, %esi
	orl	%r11d, %esi
	movl	%r10d, 4(%rdi,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %r8
	jne	.LBB15_11
# %bb.12:
	testb	$1, %al
	je	.LBB15_14
.LBB15_13:
	addl	(%rdi,%rdx,4), %esi
	addl	(%rcx,%rdx,4), %esi
	movl	%esi, (%rdi,%rdx,4)
.LBB15_14:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB15_15:
	retq
.LBB15_2:
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	testb	$1, %al
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_9:
	xorl	%edx, %edx
	xorl	%esi, %esi
	testb	$1, %al
	jne	.LBB15_13
	jmp	.LBB15_14
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rdi, %rbx
	leaq	112(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, 40(%rsp)
	leal	(%r14,%r14), %ebp
	movzbl	%r14b, %edi
	leal	-1(%rdi), %eax
	movzbl	%al, %ecx
	cmpb	$-1, %cl
	movl	$255, %eax
	cmovll	%ecx, %eax
	incb	%al
	movl	%edi, %ecx
	incb	%cl
	leaq	-1(%rdi), %rdx
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
# %bb.4:
	xorl	%edx, %edx
	testb	%cl, %cl
	je	.LBB16_5
.LBB16_6:
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
.LBB16_2:
	movl	%eax, %ecx
	xorl	%edx, %edx
	testb	%cl, %cl
	jne	.LBB16_6
.LBB16_5:
	xorl	%eax, %eax
.LBB16_10:
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movsbl	%r14b, %r13d
	shll	$6, %r13d
	subl	%eax, %r13d
	leal	31(%r13), %eax
	testw	%r13w, %r13w
	cmovnsl	%r13d, %eax
	movswl	%ax, %ecx
	shrl	$5, %ecx
	movzwl	%cx, %esi
	andl	$-32, %eax
	movl	%r13d, %r12d
	subl	%eax, %r12d
	testb	%cl, %cl
	jle	.LBB16_12
# %bb.11:
	movzbl	%sil, %edx
	shll	$2, %edx
	leaq	48(%rsp), %rdi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	xorl	%esi, %esi
	callq	memset@PLT
	movq	8(%rsp), %rsi                   # 8-byte Reload
.LBB16_12:
	testw	%r12w, %r12w
	jle	.LBB16_20
# %bb.13:
	testb	%r14b, %r14b
	je	.LBB16_22
# %bb.14:
	movswl	%r12w, %eax
	movsbl	%sil, %ecx
	movl	%r14d, %r9d
	cmpb	$1, %r14b
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	jne	.LBB16_16
# %bb.15:
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.LBB16_18
.LBB16_20:
	testb	%r14b, %r14b
	jle	.LBB16_22
# %bb.21:
	movsbq	%sil, %rax
	leaq	(%rsp,%rax,4), %rdi
	addq	$48, %rdi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(,%rax,4), %edx
	movq	%r15, %rsi
	callq	memcpy@PLT
	jmp	.LBB16_22
.LBB16_16:
	movl	$32, %edx
	subl	%eax, %edx
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	andl	$-2, %r9d
	movsbq	%sil, %r10
	incq	%r10
	movl	%ecx, %r11d
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB16_17:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%r8,4), %esi
	movl	%esi, %edi
	movl	%eax, %ecx
	shll	%cl, %edi
	orl	%r12d, %edi
	leal	(%r11,%r8), %r12d
	movl	%edx, %ecx
	shrl	%cl, %esi
	movl	%edi, 48(%rsp,%r12,4)
	movl	4(%r15,%r8,4), %r12d
	movl	%r12d, %edi
	movl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edx, %ecx
	shrl	%cl, %r12d
	leal	(%r10,%r8), %ecx
	movl	%edi, 48(%rsp,%rcx,4)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB16_17
.LBB16_18:
	testb	$1, 8(%rsp)                     # 1-byte Folded Reload
	je	.LBB16_22
# %bb.19:
	movl	(%r15,%r8,4), %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	orl	%r12d, %edx
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	movl	%edx, 48(%rsp,%rax,4)
.LBB16_22:
	testw	%r13w, %r13w
	js	.LBB16_23
# %bb.24:
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rsp,%rax,4), %rcx
	addq	$48, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movsbq	%r14b, %rcx
	leaq	(%rsp,%rcx,4), %rcx
	addq	$48, %rcx
	movl	%r14d, %edx
	decl	%edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	$1, %r8d
	leaq	48(%rsp), %rdi
	jmp	.LBB16_25
	.p2align	4, 0x90
.LBB16_26:                              #   in Loop: Header=BB16_25 Depth=1
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	sete	%r9b
	movl	%r9d, %r8d
.LBB16_27:                              #   in Loop: Header=BB16_25 Depth=1
	movl	(%rcx), %eax
	shll	$31, %eax
	orl	%eax, 48(%rsp,%rdx,4)
.LBB16_35:                              #   in Loop: Header=BB16_25 Depth=1
	leal	-1(%r13), %eax
	testw	%r13w, %r13w
	movl	%eax, %r13d
	jle	.LBB16_36
.LBB16_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_29 Depth 2
                                        #     Child Loop BB16_32 Depth 2
                                        #     Child Loop BB16_34 Depth 2
	testb	%r14b, %r14b
	jle	.LBB16_26
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	movl	%r8d, %r9d
	movq	32(%rsp,%r9,8), %r9
	movl	%r8d, %r10d
	xorl	$1, %r10d
	movq	32(%rsp,%r10,8), %r10
	xorl	%r11d, %r11d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB16_29:                              #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %r12d
	movsbq	%r11b, %r11
	movl	(%r9,%r11,4), %eax
	movl	48(%rsp,%r11,4), %esi
	addl	%r15d, %esi
	xorl	%r15d, %r15d
	subl	%esi, %eax
	setb	%r15b
	testl	%esi, %esi
	cmovel	%r12d, %r15d
	movl	%eax, (%r10,%r11,4)
	incb	%r11b
	movsbl	%r11b, %eax
	cmpl	%eax, %ebp
	jg	.LBB16_29
# %bb.30:                               #   in Loop: Header=BB16_25 Depth=1
	cmpl	%r15d, %r8d
	sete	%r9b
	movl	$0, %r8d
	movb	%r9b, %r8b
	testb	%r14b, %r14b
	jle	.LBB16_27
# %bb.31:                               #   in Loop: Header=BB16_25 Depth=1
	xorl	%r11d, %r11d
	movq	8(%rsp), %r10                   # 8-byte Reload
	.p2align	4, 0x90
.LBB16_32:                              #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r10), %eax
	movl	%eax, %esi
	shrl	%esi
	orl	%r11d, %esi
	movl	%esi, -4(%r10)
	leaq	-4(%r10), %rsi
	shll	$31, %eax
	movq	%rsi, %r10
	movl	%eax, %r11d
	cmpq	%rdi, %rsi
	ja	.LBB16_32
# %bb.33:                               #   in Loop: Header=BB16_25 Depth=1
	movl	(%rcx), %eax
	shll	$31, %eax
	orl	%eax, 48(%rsp,%rdx,4)
	xorl	%r11d, %r11d
	movq	24(%rsp), %r10                  # 8-byte Reload
	.p2align	4, 0x90
.LBB16_34:                              #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r10), %eax
	movl	%eax, %esi
	shrl	%esi
	orl	%r11d, %esi
	movl	%esi, -4(%r10)
	leaq	-4(%r10), %rsi
	shll	$31, %eax
	movq	%rsi, %r10
	movl	%eax, %r11d
	cmpq	%rcx, %rsi
	ja	.LBB16_34
	jmp	.LBB16_35
.LBB16_36:
	movzbl	%r9b, %eax
	movq	16(%rsp), %r8                   # 8-byte Reload
	testb	%r14b, %r14b
	jg	.LBB16_38
	jmp	.LBB16_48
.LBB16_23:
	movl	$1, %eax
	movq	16(%rsp), %r8                   # 8-byte Reload
	testb	%r14b, %r14b
	jle	.LBB16_48
.LBB16_38:
	movq	32(%rsp,%rax,8), %rax
	xorl	%ecx, %ecx
	cmpb	$8, %r14b
	jb	.LBB16_43
# %bb.39:
	movq	%rbx, %rdx
	subq	%rax, %rdx
	cmpq	$16, %rdx
	jb	.LBB16_43
# %bb.40:
	movl	%r8d, %ecx
	andl	$124, %ecx
	movl	%ecx, %edx
	shll	$2, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB16_41:                              # =>This Inner Loop Header: Depth=1
	movups	(%rax,%rsi), %xmm0
	movups	%xmm0, (%rbx,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB16_41
# %bb.42:
	cmpq	%r8, %rcx
	je	.LBB16_48
.LBB16_43:
	movq	%r8, %rsi
	movq	%rcx, %rdx
	andq	$3, %rsi
	je	.LBB16_46
# %bb.44:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB16_45:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdx,4), %edi
	movl	%edi, (%rbx,%rdx,4)
	incq	%rdx
	decq	%rsi
	jne	.LBB16_45
.LBB16_46:
	subq	%r8, %rcx
	cmpq	$-4, %rcx
	ja	.LBB16_48
	.p2align	4, 0x90
.LBB16_47:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdx,4), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	movl	4(%rax,%rdx,4), %ecx
	movl	%ecx, 4(%rbx,%rdx,4)
	movl	8(%rax,%rdx,4), %ecx
	movl	%ecx, 8(%rbx,%rdx,4)
	movl	12(%rax,%rdx,4), %ecx
	movl	%ecx, 12(%rbx,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %r8
	jne	.LBB16_47
.LBB16_48:
	addq	$184, %rsp
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	testb	%r8b, %r8b
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	jle	.LBB17_1
# %bb.4:
	movzbl	%r8b, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	4(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	movl	$1, %r14d
	movq	%rdx, %r15
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB17_5
	.p2align	4, 0x90
.LBB17_12:                              #   in Loop: Header=BB17_5 Depth=1
	movl	%r12d, 64(%rsp,%rbx,4)
	incq	%rbx
	incq	%r14
	addq	$4, %r15
	movq	%r13, %r12
	movl	%eax, %r13d
	cmpq	24(%rsp), %rbx                  # 8-byte Folded Reload
	je	.LBB17_2
.LBB17_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_8 Depth 2
	testq	%rbx, %rbx
	je	.LBB17_6
# %bb.7:                                #   in Loop: Header=BB17_5 Depth=1
	movq	%r14, %rdi
	andq	$-2, %rdi
	negq	%rdi
	xorl	%ecx, %ecx
	movq	16(%rsp), %r9                   # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB17_8:                               #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r9), %ebp
	movl	(%r9), %r11d
	movl	%r12d, %r10d
	movl	-4(%r15,%rcx,4), %r12d
	movl	(%r15,%rcx,4), %r8d
	imulq	%rbp, %r8
	shlq	$32, %r13
	orq	%r13, %r10
	xorl	%ebp, %ebp
	addq	%r8, %r10
	setb	%bpl
	imulq	%r11, %r12
	addq	%r10, %r12
	adcl	%ebp, %eax
	movq	%r12, %r13
	shrq	$32, %r13
	addq	$8, %r9
	addq	$-2, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB17_8
# %bb.9:                                #   in Loop: Header=BB17_5 Depth=1
	negq	%rcx
	movl	%r13d, %r9d
	testb	$1, %r14b
	je	.LBB17_12
	jmp	.LBB17_11
	.p2align	4, 0x90
.LBB17_6:                               #   in Loop: Header=BB17_5 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%r13d, %r9d
	testb	$1, %r14b
	je	.LBB17_12
.LBB17_11:                              #   in Loop: Header=BB17_5 Depth=1
	movl	(%rsi,%rcx,4), %edi
	movq	%rbx, %r8
	subq	%rcx, %r8
	movl	(%rdx,%r8,4), %ecx
	imulq	%rdi, %rcx
	shlq	$32, %r13
	movl	%r12d, %r12d
	orq	%r13, %r12
	addq	%rcx, %r12
	adcl	$0, %eax
	movq	%r12, %r13
	shrq	$32, %r13
	movl	%r13d, %r9d
	jmp	.LBB17_12
.LBB17_1:
	xorl	%r9d, %r9d
	xorl	%eax, %eax
.LBB17_2:
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movsbl	%r8b, %r12d
	leal	-1(,%r12,2), %r10d
	cmpl	%r12d, %r10d
	jle	.LBB17_3
# %bb.13:
	movsbq	%r8b, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	decq	%rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movb	$1, %bpl
	movl	%r8d, %r14d
	movl	%r10d, 16(%rsp)                 # 4-byte Spill
	jmp	.LBB17_14
	.p2align	4, 0x90
.LBB17_15:                              #   in Loop: Header=BB17_14 Depth=1
	movl	%eax, %edi
.LBB17_21:                              #   in Loop: Header=BB17_14 Depth=1
	movsbq	%r15b, %rax
	movl	%r9d, 64(%rsp,%rax,4)
	movsbl	%r14b, %r12d
	incb	%bpl
	movl	%r13d, %eax
	movl	%edi, %r9d
	cmpl	%r12d, %r10d
	movl	12(%rsp), %r8d                  # 4-byte Reload
	jle	.LBB17_22
.LBB17_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
	movl	%r14d, %r15d
	leal	1(%r15), %r14d
	movl	%r14d, %ecx
	subb	%r8b, %cl
	xorl	%r13d, %r13d
	cmpb	%r8b, %cl
	jge	.LBB17_15
# %bb.16:                               #   in Loop: Header=BB17_14 Depth=1
	movsbq	%bpl, %rbx
	movq	56(%rsp), %r11                  # 8-byte Reload
	subq	%rbx, %r11
	xorl	%r13d, %r13d
	cmpq	%rbx, 48(%rsp)                  # 8-byte Folded Reload
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	je	.LBB17_19
# %bb.17:                               #   in Loop: Header=BB17_14 Depth=1
	movsbl	%r15b, %edi
	movsbl	%bpl, %r8d
	subl	%r8d, %edi
	andq	$-2, %r11
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB17_18:                              #   Parent Loop BB17_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rbx,4), %r8d
	movl	4(%rsi,%rbx,4), %r10d
	movslq	%edi, %rdi
	movl	(%rdx,%rdi,4), %ecx
	imulq	%r8, %rcx
	shlq	$32, %rax
	movl	%r9d, %r8d
	orq	%rax, %r8
	xorl	%eax, %eax
	addq	%rcx, %r8
	setb	%al
	leal	-1(%rdi), %ecx
	movslq	%ecx, %rcx
	movl	(%rdx,%rcx,4), %r9d
	imulq	%r10, %r9
	addq	%r8, %r9
	adcl	%eax, %r13d
	movq	%r9, %rax
	shrq	$32, %rax
	addq	$2, %rbx
	addl	$-2, %edi
	addq	$-2, %r11
	jne	.LBB17_18
.LBB17_19:                              #   in Loop: Header=BB17_14 Depth=1
	movl	%eax, %edi
	testb	$1, 24(%rsp)                    # 1-byte Folded Reload
	movl	16(%rsp), %r10d                 # 4-byte Reload
	je	.LBB17_21
# %bb.20:                               #   in Loop: Header=BB17_14 Depth=1
	movl	(%rsi,%rbx,4), %ecx
	subl	%ebx, %r12d
	movslq	%r12d, %rdi
	movl	(%rdx,%rdi,4), %edi
	imulq	%rcx, %rdi
	shlq	$32, %rax
	movl	%r9d, %r9d
	orq	%rax, %r9
	addq	%rdi, %r9
	adcl	$0, %r13d
	movq	%r9, %rdi
	shrq	$32, %rdi
	jmp	.LBB17_21
.LBB17_3:
	movl	%r9d, %edi
.LBB17_22:
	movslq	%r10d, %rax
	movl	%edi, 64(%rsp,%rax,4)
	movsbl	%r8b, %ecx
	leaq	64(%rsp), %rsi
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	callq	uECC_vli_mmod
	addq	$136, %rsp
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
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movsbl	(%rcx), %eax
	movslq	%eax, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	jle	.LBB18_1
# %bb.4:
	movzbl	%al, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	4(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$1, %r15d
	movq	%rdx, %r12
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	jmp	.LBB18_5
	.p2align	4, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_5 Depth=1
	movl	%edi, 64(%rsp,%r14,4)
	incq	%r14
	incq	%r15
	addq	$4, %r12
	movq	%r13, %rdi
	movl	%r9d, %r13d
	cmpq	16(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB18_2
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_8 Depth 2
	testq	%r14, %r14
	je	.LBB18_6
# %bb.7:                                #   in Loop: Header=BB18_5 Depth=1
	movq	%r15, %rcx
	andq	$-2, %rcx
	negq	%rcx
	xorl	%r8d, %r8d
	movq	8(%rsp), %r10                   # 8-byte Reload
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB18_8:                               #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r10), %ebp
	movl	(%r10), %ebx
	movl	%edi, %eax
	movl	-4(%r12,%r8,4), %edi
	movl	(%r12,%r8,4), %r11d
	imulq	%rbp, %r11
	shlq	$32, %r13
	orq	%r13, %rax
	xorl	%ebp, %ebp
	addq	%r11, %rax
	setb	%bpl
	imulq	%rbx, %rdi
	addq	%rax, %rdi
	adcl	%ebp, %r9d
	movq	%rdi, %r13
	shrq	$32, %r13
	addq	$8, %r10
	addq	$-2, %r8
	cmpq	%r8, %rcx
	jne	.LBB18_8
# %bb.9:                                #   in Loop: Header=BB18_5 Depth=1
	negq	%r8
	movl	%r13d, %r10d
	testb	$1, %r15b
	je	.LBB18_12
	jmp	.LBB18_11
	.p2align	4, 0x90
.LBB18_6:                               #   in Loop: Header=BB18_5 Depth=1
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r13d, %r10d
	testb	$1, %r15b
	je	.LBB18_12
.LBB18_11:                              #   in Loop: Header=BB18_5 Depth=1
	movl	(%rsi,%r8,4), %eax
	movq	%r14, %rcx
	subq	%r8, %rcx
	movl	(%rdx,%rcx,4), %ecx
	imulq	%rax, %rcx
	shlq	$32, %r13
	movl	%edi, %edi
	orq	%r13, %rdi
	addq	%rcx, %rdi
	adcl	$0, %r9d
	movq	%rdi, %r13
	shrq	$32, %r13
	movl	%r13d, %r10d
	jmp	.LBB18_12
.LBB18_1:
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
.LBB18_2:
	movq	24(%rsp), %rbx                  # 8-byte Reload
	leaq	(%rbx,%rbx), %rcx
	movq	%rcx, %rax
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leal	-1(%rcx), %r14d
	cmpl	%ebx, %r14d
	jle	.LBB18_3
# %bb.13:
	leaq	-1(%rbx), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movb	$1, %bpl
	movl	4(%rsp), %r8d                   # 4-byte Reload
	movl	%r8d, %r13d
	movl	%r8d, %r15d
	movl	%r14d, 8(%rsp)                  # 4-byte Spill
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_15:                              #   in Loop: Header=BB18_14 Depth=1
	movl	%r9d, %ecx
.LBB18_21:                              #   in Loop: Header=BB18_14 Depth=1
	movsbq	%r12b, %rax
	movl	%r10d, 64(%rsp,%rax,4)
	movsbl	%r15b, %r13d
	incb	%bpl
	movl	%r11d, %r9d
	movl	%ecx, %r10d
	cmpl	%r13d, %r14d
	jle	.LBB18_22
.LBB18_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
	movl	%r15d, %r12d
	leal	1(%r12), %r15d
	movl	%r15d, %eax
	subb	%r8b, %al
	xorl	%r11d, %r11d
	cmpb	%r8b, %al
	jge	.LBB18_15
# %bb.16:                               #   in Loop: Header=BB18_14 Depth=1
	movsbq	%bpl, %rdi
	subq	%rdi, %rbx
	xorl	%r11d, %r11d
	cmpq	%rdi, 56(%rsp)                  # 8-byte Folded Reload
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	je	.LBB18_19
# %bb.17:                               #   in Loop: Header=BB18_14 Depth=1
	movsbl	%r12b, %ecx
	movsbl	%bpl, %eax
	subl	%eax, %ecx
	movq	%rbx, %r8
	andq	$-2, %r8
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB18_18:                              #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rdi,4), %eax
	movl	4(%rsi,%rdi,4), %ebx
	movslq	%ecx, %rcx
	movl	(%rdx,%rcx,4), %r14d
	imulq	%rax, %r14
	shlq	$32, %r9
	movl	%r10d, %eax
	orq	%r9, %rax
	xorl	%r9d, %r9d
	addq	%r14, %rax
	setb	%r9b
	leal	-1(%rcx), %r10d
	movslq	%r10d, %r10
	movl	(%rdx,%r10,4), %r10d
	imulq	%rbx, %r10
	addq	%rax, %r10
	adcl	%r9d, %r11d
	movq	%r10, %r9
	shrq	$32, %r9
	addq	$2, %rdi
	addl	$-2, %ecx
	addq	$-2, %r8
	jne	.LBB18_18
.LBB18_19:                              #   in Loop: Header=BB18_14 Depth=1
	movl	%r9d, %ecx
	testb	$1, 16(%rsp)                    # 1-byte Folded Reload
	movl	4(%rsp), %r8d                   # 4-byte Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	8(%rsp), %r14d                  # 4-byte Reload
	je	.LBB18_21
# %bb.20:                               #   in Loop: Header=BB18_14 Depth=1
	movl	(%rsi,%rdi,4), %eax
	subl	%edi, %r13d
	movslq	%r13d, %rcx
	movl	(%rdx,%rcx,4), %ecx
	imulq	%rax, %rcx
	shlq	$32, %r9
	movl	%r10d, %r10d
	orq	%r9, %r10
	addq	%rcx, %r10
	adcl	$0, %r11d
	movq	%r10, %rcx
	shrq	$32, %rcx
	jmp	.LBB18_21
.LBB18_3:
	movl	%r10d, %ecx
.LBB18_22:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 60(%rsp,%rax,4)
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	callq	*184(%rax)
	addq	$136, %rsp
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
.Lfunc_end18:
	.size	uECC_vli_modMult_fast, .Lfunc_end18-uECC_vli_modMult_fast
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
	testb	%cl, %cl
	jle	.LBB19_99
# %bb.1:
	movq	%rdx, %rbx
	movzbl	%cl, %r12d
	cmpb	$4, %cl
	jae	.LBB19_3
# %bb.2:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB19_6
.LBB19_3:
	movl	%r12d, %eax
	andl	$124, %eax
	movl	%eax, %ecx
	shll	$2, %ecx
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rdx), %xmm1
	por	%xmm1, %xmm0
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB19_4
# %bb.5:
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpq	%r12, %rax
	je	.LBB19_7
	.p2align	4, 0x90
.LBB19_6:                               # =>This Inner Loop Header: Depth=1
	orl	(%rsi,%rax,4), %ecx
	incq	%rax
	cmpq	%rax, %r12
	jne	.LBB19_6
.LBB19_7:
	leal	(,%r12,4), %ebp
	testl	%ecx, %ecx
	je	.LBB19_100
# %bb.8:
	leaq	144(%rsp), %r15
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	leaq	112(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movq	%rsp, %r13
	xorl	%r14d, %r14d
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movl	$1, (%rsp)
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbp, 184(%rsp)                 # 8-byte Spill
	movq	%rbp, %rdx
	movq	%rdi, %rbp
	callq	memset@PLT
	leaq	(%rsp,%r12,4), %rax
	addq	$112, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	32(%rsp,%r12,4), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	28(%rsp,%r12,4), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	144(%rsp,%r12,4), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	(%rsp,%r12,4), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	-4(%rsp,%r12,4), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	-1(%r12), %r10
	movl	%r12d, %r11d
	andl	$126, %r11d
	movq	%r12, %r8
	movq	%r12, %rdi
	leaq	112(%rsp), %r12
	.p2align	4, 0x90
.LBB19_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_43 Depth 2
                                        #     Child Loop BB19_47 Depth 2
                                        #     Child Loop BB19_49 Depth 2
                                        #     Child Loop BB19_53 Depth 2
                                        #     Child Loop BB19_57 Depth 2
                                        #     Child Loop BB19_93 Depth 2
                                        #     Child Loop BB19_97 Depth 2
                                        #     Child Loop BB19_62 Depth 2
                                        #     Child Loop BB19_65 Depth 2
                                        #     Child Loop BB19_69 Depth 2
                                        #     Child Loop BB19_71 Depth 2
                                        #     Child Loop BB19_75 Depth 2
                                        #     Child Loop BB19_79 Depth 2
                                        #     Child Loop BB19_87 Depth 2
                                        #     Child Loop BB19_91 Depth 2
                                        #     Child Loop BB19_84 Depth 2
                                        #     Child Loop BB19_29 Depth 2
                                        #     Child Loop BB19_35 Depth 2
                                        #     Child Loop BB19_39 Depth 2
                                        #     Child Loop BB19_32 Depth 2
                                        #     Child Loop BB19_13 Depth 2
                                        #     Child Loop BB19_19 Depth 2
                                        #     Child Loop BB19_23 Depth 2
                                        #     Child Loop BB19_16 Depth 2
	decq	%rdi
	testb	%dil, %dil
	js	.LBB19_98
# %bb.10:                               #   in Loop: Header=BB19_9 Depth=1
	movl	%edi, %r9d
	andl	$127, %r9d
	movl	144(%rsp,%r9,4), %edx
	movl	112(%rsp,%r9,4), %r9d
	cmpl	%r9d, %edx
	je	.LBB19_9
# %bb.11:                               #   in Loop: Header=BB19_9 Depth=1
	testb	$1, 144(%rsp)
	jne	.LBB19_27
# %bb.12:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%eax, %eax
	movq	104(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_13:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %edi
	movl	%edi, %r9d
	shrl	%r9d
	orl	%eax, %r9d
	movl	%r9d, -4(%rdx)
	leaq	-4(%rdx), %r9
	shll	$31, %edi
	movq	%r9, %rdx
	movl	%edi, %eax
	cmpq	%r15, %r9
	ja	.LBB19_13
# %bb.14:                               #   in Loop: Header=BB19_9 Depth=1
	testb	$1, (%rsp)
	jne	.LBB19_18
# %bb.15:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_16:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%r13, %rcx
	ja	.LBB19_16
# %bb.17:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	jmp	.LBB19_9
	.p2align	4, 0x90
.LBB19_27:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, 112(%rsp)
	jne	.LBB19_41
# %bb.28:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	96(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_29:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%r12, %rcx
	ja	.LBB19_29
# %bb.30:                               #   in Loop: Header=BB19_9 Depth=1
	testb	$1, 32(%rsp)
	jne	.LBB19_34
# %bb.31:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_32:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%rbp, %rcx
	ja	.LBB19_32
# %bb.33:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	jmp	.LBB19_9
.LBB19_18:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	testq	%r10, %r10
	je	.LBB19_20
	.p2align	4, 0x90
.LBB19_19:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %r9d
	addl	(%rbx,%rdi,4), %r9d
	movl	4(%rsp,%rdi,4), %ecx
	xorl	%esi, %esi
	cmpl	%eax, %r9d
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%r9d, (%rsp,%rdi,4)
	leal	(%rcx,%rdx), %eax
	addl	4(%rbx,%rdi,4), %eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%eax, 4(%rsp,%rdi,4)
	addq	$2, %rdi
	cmpq	%rdi, %r11
	jne	.LBB19_19
.LBB19_20:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_22
# %bb.21:                               #   in Loop: Header=BB19_9 Depth=1
	movl	(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%ecx, (%rsp,%rdi,4)
.LBB19_22:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%r9d, %r9d
	movq	72(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_23:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%r9d, %ecx
	movl	%ecx, -4(%rdi)
	leaq	-4(%rdi), %rcx
	shll	$31, %eax
	movq	%rcx, %rdi
	movl	%eax, %r9d
	cmpq	%r13, %rcx
	ja	.LBB19_23
.LBB19_24:                              #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	movq	88(%rsp), %r9                   # 8-byte Reload
	testl	%edx, %edx
	jne	.LBB19_26
	jmp	.LBB19_9
.LBB19_41:                              #   in Loop: Header=BB19_9 Depth=1
	cmpl	%r9d, %edx
	jbe	.LBB19_42
# %bb.64:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_66
	.p2align	4, 0x90
.LBB19_65:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	112(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 144(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	116(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 148(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_65
.LBB19_66:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_68
# %bb.67:                               #   in Loop: Header=BB19_9 Depth=1
	addl	112(%rsp,%rdx,4), %edi
	subl	%edi, 144(%rsp,%rdx,4)
.LBB19_68:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	104(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_69:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%r15, %rcx
	ja	.LBB19_69
# %bb.70:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r10, %rdx
	.p2align	4, 0x90
.LBB19_71:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	js	.LBB19_78
# %bb.72:                               #   in Loop: Header=BB19_71 Depth=2
	movl	%edx, %eax
	andl	$127, %eax
	movl	(%rsp,%rax,4), %edi
	movl	32(%rsp,%rax,4), %r9d
	cmpl	%r9d, %edi
	ja	.LBB19_78
# %bb.73:                               #   in Loop: Header=BB19_71 Depth=2
	decq	%rdx
	cmpl	%r9d, %edi
	jae	.LBB19_71
# %bb.74:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_76
	.p2align	4, 0x90
.LBB19_75:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdx,4), %eax
	leal	(%rax,%rdi), %ecx
	addl	(%rbx,%rdx,4), %ecx
	movl	4(%rsp,%rdx,4), %esi
	xorl	%r9d, %r9d
	cmpl	%eax, %ecx
	setb	%r9b
	cmovnel	%r14d, %edi
	orl	%r9d, %edi
	movl	%ecx, (%rsp,%rdx,4)
	leal	(%rsi,%rdi), %eax
	addl	4(%rbx,%rdx,4), %eax
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	setb	%cl
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	%eax, 4(%rsp,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_75
.LBB19_76:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_78
# %bb.77:                               #   in Loop: Header=BB19_9 Depth=1
	addl	(%rsp,%rdx,4), %edi
	addl	(%rbx,%rdx,4), %edi
	movl	%edi, (%rsp,%rdx,4)
.LBB19_78:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_80
	.p2align	4, 0x90
.LBB19_79:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, (%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	36(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 4(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_79
.LBB19_80:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_82
# %bb.81:                               #   in Loop: Header=BB19_9 Depth=1
	addl	32(%rsp,%rdx,4), %edi
	subl	%edi, (%rsp,%rdx,4)
.LBB19_82:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, (%rsp)
	jne	.LBB19_86
# %bb.83:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_84:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%r13, %rcx
	ja	.LBB19_84
# %bb.85:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	jmp	.LBB19_9
.LBB19_34:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	testq	%r10, %r10
	je	.LBB19_36
	.p2align	4, 0x90
.LBB19_35:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	movl	36(%rsp,%rdi,4), %esi
	xorl	%r9d, %r9d
	cmpl	%eax, %ecx
	setb	%r9b
	cmovnel	%r14d, %edx
	orl	%r9d, %edx
	movl	%ecx, 32(%rsp,%rdi,4)
	leal	(%rsi,%rdx), %eax
	addl	4(%rbx,%rdi,4), %eax
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	setb	%cl
	cmovnel	%r14d, %edx
	orl	%ecx, %edx
	movl	%eax, 36(%rsp,%rdi,4)
	addq	$2, %rdi
	cmpq	%rdi, %r11
	jne	.LBB19_35
.LBB19_36:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_38
# %bb.37:                               #   in Loop: Header=BB19_9 Depth=1
	movl	32(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%ecx, 32(%rsp,%rdi,4)
.LBB19_38:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%r9d, %r9d
	movq	64(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_39:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%r9d, %ecx
	movl	%ecx, -4(%rdi)
	leaq	-4(%rdi), %rcx
	shll	$31, %eax
	movq	%rcx, %rdi
	movl	%eax, %r9d
	cmpq	%rbp, %rcx
	ja	.LBB19_39
	jmp	.LBB19_40
.LBB19_42:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_44
	.p2align	4, 0x90
.LBB19_43:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	144(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 112(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	148(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 116(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_43
.LBB19_44:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_46
# %bb.45:                               #   in Loop: Header=BB19_9 Depth=1
	addl	144(%rsp,%rdx,4), %edi
	subl	%edi, 112(%rsp,%rdx,4)
.LBB19_46:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	96(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_47:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%r12, %rcx
	ja	.LBB19_47
# %bb.48:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r10, %rdx
	.p2align	4, 0x90
.LBB19_49:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	js	.LBB19_56
# %bb.50:                               #   in Loop: Header=BB19_49 Depth=2
	movl	%edx, %eax
	andl	$127, %eax
	movl	32(%rsp,%rax,4), %edi
	movl	(%rsp,%rax,4), %r9d
	cmpl	%r9d, %edi
	ja	.LBB19_56
# %bb.51:                               #   in Loop: Header=BB19_49 Depth=2
	decq	%rdx
	cmpl	%r9d, %edi
	jae	.LBB19_49
# %bb.52:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_54
	.p2align	4, 0x90
.LBB19_53:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rdx,4), %eax
	leal	(%rax,%rdi), %ecx
	addl	(%rbx,%rdx,4), %ecx
	movl	36(%rsp,%rdx,4), %esi
	xorl	%r9d, %r9d
	cmpl	%eax, %ecx
	setb	%r9b
	cmovnel	%r14d, %edi
	orl	%r9d, %edi
	movl	%ecx, 32(%rsp,%rdx,4)
	leal	(%rsi,%rdi), %eax
	addl	4(%rbx,%rdx,4), %eax
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	setb	%cl
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	%eax, 36(%rsp,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_53
.LBB19_54:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_56
# %bb.55:                               #   in Loop: Header=BB19_9 Depth=1
	addl	32(%rsp,%rdx,4), %edi
	addl	(%rbx,%rdx,4), %edi
	movl	%edi, 32(%rsp,%rdx,4)
.LBB19_56:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edx, %edx
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.LBB19_58
	.p2align	4, 0x90
.LBB19_57:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 32(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	movl	4(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	subl	%eax, 36(%rsp,%rdx,4)
	setb	%cl
	testl	%eax, %eax
	cmovnel	%r14d, %edi
	orl	%ecx, %edi
	addq	$2, %rdx
	cmpq	%rdx, %r11
	jne	.LBB19_57
.LBB19_58:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_60
# %bb.59:                               #   in Loop: Header=BB19_9 Depth=1
	addl	(%rsp,%rdx,4), %edi
	subl	%edi, 32(%rsp,%rdx,4)
.LBB19_60:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, 32(%rsp)
	jne	.LBB19_92
# %bb.61:                               #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_62:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%edi, %ecx
	movl	%ecx, -4(%rdx)
	leaq	-4(%rdx), %rcx
	shll	$31, %eax
	movq	%rcx, %rdx
	movl	%eax, %edi
	cmpq	%rbp, %rcx
	ja	.LBB19_62
# %bb.63:                               #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	jmp	.LBB19_9
.LBB19_86:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	testq	%r10, %r10
	je	.LBB19_88
	.p2align	4, 0x90
.LBB19_87:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	movl	4(%rsp,%rdi,4), %esi
	xorl	%r9d, %r9d
	cmpl	%eax, %ecx
	setb	%r9b
	cmovnel	%r14d, %edx
	orl	%r9d, %edx
	movl	%ecx, (%rsp,%rdi,4)
	leal	(%rsi,%rdx), %eax
	addl	4(%rbx,%rdi,4), %eax
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	setb	%cl
	cmovnel	%r14d, %edx
	orl	%ecx, %edx
	movl	%eax, 4(%rsp,%rdi,4)
	addq	$2, %rdi
	cmpq	%rdi, %r11
	jne	.LBB19_87
.LBB19_88:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_90
# %bb.89:                               #   in Loop: Header=BB19_9 Depth=1
	movl	(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%ecx, (%rsp,%rdi,4)
.LBB19_90:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%r9d, %r9d
	movq	72(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_91:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%r9d, %ecx
	movl	%ecx, -4(%rdi)
	leaq	-4(%rdi), %rcx
	shll	$31, %eax
	movq	%rcx, %rdi
	movl	%eax, %r9d
	cmpq	%r13, %rcx
	ja	.LBB19_91
	jmp	.LBB19_24
.LBB19_92:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	testq	%r10, %r10
	je	.LBB19_94
	.p2align	4, 0x90
.LBB19_93:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	movl	36(%rsp,%rdi,4), %esi
	xorl	%r9d, %r9d
	cmpl	%eax, %ecx
	setb	%r9b
	cmovnel	%r14d, %edx
	orl	%r9d, %edx
	movl	%ecx, 32(%rsp,%rdi,4)
	leal	(%rsi,%rdx), %eax
	addl	4(%rbx,%rdi,4), %eax
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	setb	%cl
	cmovnel	%r14d, %edx
	orl	%ecx, %edx
	movl	%eax, 36(%rsp,%rdi,4)
	addq	$2, %rdi
	cmpq	%rdi, %r11
	jne	.LBB19_93
.LBB19_94:                              #   in Loop: Header=BB19_9 Depth=1
	testb	$1, %r8b
	je	.LBB19_96
# %bb.95:                               #   in Loop: Header=BB19_9 Depth=1
	movl	32(%rsp,%rdi,4), %eax
	leal	(%rax,%rdx), %ecx
	addl	(%rbx,%rdi,4), %ecx
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	setb	%sil
	cmovnel	%r14d, %edx
	orl	%esi, %edx
	movl	%ecx, 32(%rsp,%rdi,4)
.LBB19_96:                              #   in Loop: Header=BB19_9 Depth=1
	xorl	%r9d, %r9d
	movq	64(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_97:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	orl	%r9d, %ecx
	movl	%ecx, -4(%rdi)
	leaq	-4(%rdi), %rcx
	shll	$31, %eax
	movq	%rcx, %rdi
	movl	%eax, %r9d
	cmpq	%rbp, %rcx
	ja	.LBB19_97
.LBB19_40:                              #   in Loop: Header=BB19_9 Depth=1
	movq	%r8, %rdi
	movq	80(%rsp), %r9                   # 8-byte Reload
	testl	%edx, %edx
	je	.LBB19_9
.LBB19_26:                              #   in Loop: Header=BB19_9 Depth=1
	orb	$-128, 3(%r9)
	movq	%r8, %rdi
	jmp	.LBB19_9
.LBB19_98:
	movq	%rsp, %rsi
	movq	192(%rsp), %rdi                 # 8-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	callq	memcpy@PLT
.LBB19_99:
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
.LBB19_100:
	.cfi_def_cfa_offset 256
	xorl	%esi, %esi
	movq	%rbp, %rdx
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
.Lfunc_end19:
	.size	uECC_vli_modInv, .Lfunc_end19-uECC_vli_modInv
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	(%rcx), %r14d
	testb	%r14b, %r14b
	jle	.LBB20_174
# %bb.1:
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	cmpb	$4, %r14b
	jae	.LBB20_3
# %bb.2:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB20_6
.LBB20_3:
	movl	%r14d, %eax
	andl	$124, %eax
	movl	%eax, %ecx
	shll	$2, %ecx
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%r15,%rdx), %xmm1
	por	%xmm1, %xmm0
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB20_4
# %bb.5:
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpq	%r14, %rax
	je	.LBB20_7
	.p2align	4, 0x90
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	orl	(%r15,%rax,4), %ecx
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB20_6
.LBB20_7:
	testl	%ecx, %ecx
	je	.LBB20_174
# %bb.8:
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r14, %rbp
	decq	%rbp
	je	.LBB20_9
# %bb.10:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	(%r15,%rax,4), %r8d
	movl	4(%r12,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r12,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	4(%r15,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r12,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_11
# %bb.12:
	testb	$1, %r14b
	je	.LBB20_14
.LBB20_13:
	movl	(%r12,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%r15,%rax,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r12,%rax,4)
	movl	%edi, %ecx
.LBB20_14:
	testl	%ecx, %ecx
	je	.LBB20_15
.LBB20_19:
	testq	%rbp, %rbp
	je	.LBB20_20
# %bb.21:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_22:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r12,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r12,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_22
# %bb.23:
	testb	$1, %r14b
	jne	.LBB20_24
	jmp	.LBB20_25
.LBB20_9:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_13
	jmp	.LBB20_14
.LBB20_15:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB20_16:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB20_19
# %bb.17:                               #   in Loop: Header=BB20_16 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r13,%rdx,4), %ecx
	movl	(%r12,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_25
# %bb.18:                               #   in Loop: Header=BB20_16 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_16
	jmp	.LBB20_19
.LBB20_20:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	je	.LBB20_25
.LBB20_24:
	addl	4(%r13,%rax,4), %ecx
	subl	%ecx, (%r12,%rax,4)
.LBB20_25:
	testq	%rbp, %rbp
	je	.LBB20_26
# %bb.27:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_28:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	movl	4(%r15,%rax,4), %r8d
	leal	(%rcx,%rdi,2), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r9d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r9d, (%r15,%rax,4)
	leal	(%rcx,%r8,2), %edi
	xorl	%r9d, %r9d
	cmpl	%r8d, %edi
	setb	%r9b
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_28
# %bb.29:
	testb	$1, %r14b
	je	.LBB20_31
.LBB20_30:
	movl	(%r15,%rax,4), %edx
	leal	(%rcx,%rdx,2), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r15,%rax,4)
	movl	%edi, %ecx
.LBB20_31:
	testl	%ecx, %ecx
	je	.LBB20_32
.LBB20_36:
	testq	%rbp, %rbp
	je	.LBB20_37
# %bb.38:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_39:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_39
# %bb.40:
	testb	$1, %r14b
	jne	.LBB20_41
	jmp	.LBB20_42
.LBB20_26:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_30
	jmp	.LBB20_31
.LBB20_32:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB20_33:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB20_36
# %bb.34:                               #   in Loop: Header=BB20_33 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r13,%rdx,4), %ecx
	movl	(%r15,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_42
# %bb.35:                               #   in Loop: Header=BB20_33 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_33
	jmp	.LBB20_36
.LBB20_37:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	je	.LBB20_42
.LBB20_41:
	addl	4(%r13,%rax,4), %ecx
	subl	%ecx, (%r15,%rax,4)
.LBB20_42:
	testq	%rbp, %rbp
	je	.LBB20_43
# %bb.44:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_45:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	movl	(%r15,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, (%r15,%rax,4)
	movl	4(%r12,%rax,4), %edi
	movl	4(%r15,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_45
# %bb.46:
	testb	$1, %r14b
	je	.LBB20_48
.LBB20_47:
	movl	(%r12,%rax,4), %edx
	movl	(%r15,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, (%r15,%rax,4)
	movl	%r8d, %ecx
.LBB20_48:
	testl	%ecx, %ecx
	je	.LBB20_55
# %bb.49:
	testq	%rbp, %rbp
	je	.LBB20_50
# %bb.51:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_52:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r13,%rax,4), %r8d
	movl	4(%r15,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r15,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r13,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_52
# %bb.53:
	testb	$1, %r14b
	je	.LBB20_55
.LBB20_54:
	addl	(%r15,%rax,4), %ecx
	addl	4(%r13,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
.LBB20_55:
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	testq	%rbp, %rbp
	je	.LBB20_56
# %bb.57:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_58:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	leal	(%rcx,%rdi,2), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	setb	%r9b
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%r8d, (%r15,%rax,4)
	movl	4(%r12,%rax,4), %edi
	leal	(%rcx,%rdi,2), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	setb	%r9b
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%r8d, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_58
# %bb.59:
	testb	$1, %r14b
	je	.LBB20_61
.LBB20_60:
	movl	(%r12,%rax,4), %edx
	leal	(%rcx,%rdx,2), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r15,%rax,4)
	movl	%edi, %ecx
.LBB20_61:
	testl	%ecx, %ecx
	je	.LBB20_62
.LBB20_66:
	testq	%rbp, %rbp
	je	.LBB20_67
# %bb.68:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_69:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_69
# %bb.70:
	testb	$1, %r14b
	jne	.LBB20_71
	jmp	.LBB20_72
.LBB20_43:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_47
	jmp	.LBB20_48
.LBB20_56:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_60
	jmp	.LBB20_61
.LBB20_62:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB20_63:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB20_66
# %bb.64:                               #   in Loop: Header=BB20_63 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r13,%rdx,4), %ecx
	movl	(%r15,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_72
# %bb.65:                               #   in Loop: Header=BB20_63 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_63
	jmp	.LBB20_66
.LBB20_67:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	je	.LBB20_72
.LBB20_71:
	addl	4(%r13,%rax,4), %ecx
	subl	%ecx, (%r15,%rax,4)
.LBB20_72:
	testq	%rbp, %rbp
	je	.LBB20_73
# %bb.74:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_75:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	(%r15,%rax,4), %r8d
	movl	4(%r12,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r12,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	4(%r15,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r12,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_75
# %bb.76:
	testb	$1, %r14b
	je	.LBB20_78
.LBB20_77:
	movl	(%r12,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%r15,%rax,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r12,%rax,4)
	movl	%edi, %ecx
.LBB20_78:
	testl	%ecx, %ecx
	je	.LBB20_79
.LBB20_83:
	testq	%rbp, %rbp
	je	.LBB20_84
# %bb.85:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_86:                              # =>This Inner Loop Header: Depth=1
	movl	4(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r12,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%r13,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r12,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_86
# %bb.87:
	testb	$1, %r14b
	jne	.LBB20_88
	jmp	.LBB20_89
.LBB20_73:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_77
	jmp	.LBB20_78
.LBB20_79:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB20_80:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB20_83
# %bb.81:                               #   in Loop: Header=BB20_80 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%r13,%rdx,4), %ecx
	movl	(%r12,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_89
# %bb.82:                               #   in Loop: Header=BB20_80 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_80
	jmp	.LBB20_83
.LBB20_84:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	je	.LBB20_89
.LBB20_88:
	addl	4(%r13,%rax,4), %ecx
	subl	%ecx, (%r12,%rax,4)
.LBB20_89:
	testb	$1, (%r12)
	jne	.LBB20_90
# %bb.99:
	leaq	(%r12,%r14,4), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_100:                             # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r12, %rsi
	ja	.LBB20_100
	jmp	.LBB20_101
.LBB20_90:
	testq	%rbp, %rbp
	je	.LBB20_91
# %bb.92:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_93:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rcx,4), %edi
	leal	(%rdi,%rax), %r8d
	addl	4(%r13,%rcx,4), %r8d
	movl	4(%r12,%rcx,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %eax
	orl	%r10d, %eax
	movl	%r8d, (%r12,%rcx,4)
	leal	(%r9,%rax), %edi
	addl	8(%r13,%rcx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	%edi, 4(%r12,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB20_93
# %bb.94:
	testb	$1, %r14b
	je	.LBB20_96
.LBB20_95:
	movl	(%r12,%rcx,4), %edx
	leal	(%rdx,%rax), %esi
	addl	4(%r13,%rcx,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%eax, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r12,%rcx,4)
	movl	%edi, %eax
.LBB20_96:
	leaq	(%r12,%r14,4), %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB20_97:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %edi
	movl	%edi, %r8d
	shrl	%r8d
	orl	%esi, %r8d
	movl	%r8d, -4(%rdx)
	leaq	-4(%rdx), %r8
	shll	$31, %edi
	movq	%r8, %rdx
	movl	%edi, %esi
	cmpq	%r12, %r8
	ja	.LBB20_97
# %bb.98:
	shll	$31, %eax
	orl	%eax, -4(%rcx)
.LBB20_101:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	testq	%rbp, %rbp
	je	.LBB20_102
# %bb.103:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_104:                             # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB20_104
# %bb.105:
	testb	$1, %r14b
	je	.LBB20_107
.LBB20_106:
	movl	(%rsp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r15,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB20_107:
	testl	%eax, %eax
	je	.LBB20_114
# %bb.108:
	testq	%rbp, %rbp
	je	.LBB20_109
# %bb.110:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_111:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r13,%rax,4), %r8d
	movl	4(%r15,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r15,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r13,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_111
# %bb.112:
	testb	$1, %r14b
	je	.LBB20_114
.LBB20_113:
	addl	(%r15,%rax,4), %ecx
	addl	4(%r13,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
.LBB20_114:
	testq	%rbp, %rbp
	je	.LBB20_115
# %bb.116:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_117:                             # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB20_117
# %bb.118:
	testb	$1, %r14b
	je	.LBB20_120
.LBB20_119:
	movl	(%rsp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r15,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB20_120:
	testl	%eax, %eax
	je	.LBB20_127
# %bb.121:
	testq	%rbp, %rbp
	je	.LBB20_122
# %bb.123:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_124:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r13,%rax,4), %r8d
	movl	4(%r15,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r15,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r13,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_124
# %bb.125:
	testb	$1, %r14b
	je	.LBB20_127
.LBB20_126:
	addl	(%r15,%rax,4), %ecx
	addl	4(%r13,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
.LBB20_127:
	testq	%rbp, %rbp
	je	.LBB20_128
# %bb.129:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_130:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%r15,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB20_130
# %bb.131:
	testb	$1, %r14b
	je	.LBB20_133
.LBB20_132:
	movl	(%r15,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%rsp,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB20_133:
	testl	%eax, %eax
	je	.LBB20_140
# %bb.134:
	testq	%rbp, %rbp
	je	.LBB20_135
# %bb.136:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_137:                             # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r13,%rax,4), %r8d
	movl	4(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r13,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_137
# %bb.138:
	testb	$1, %r14b
	je	.LBB20_140
.LBB20_139:
	addl	(%rsp,%rax,4), %ecx
	addl	4(%r13,%rax,4), %ecx
	movl	%ecx, (%rsp,%rax,4)
.LBB20_140:
	movq	%rsp, %rdx
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast
	testq	%rbp, %rbp
	je	.LBB20_141
# %bb.142:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_143:                             # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	movl	32(%rsp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 32(%rsp,%rax,4)
	movl	4(%r12,%rax,4), %edi
	movl	36(%rsp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 36(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_143
# %bb.144:
	testb	$1, %r14b
	je	.LBB20_146
.LBB20_145:
	movl	(%r12,%rax,4), %edx
	movl	32(%rsp,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, 32(%rsp,%rax,4)
	movl	%r8d, %ecx
.LBB20_146:
	testl	%ecx, %ecx
	je	.LBB20_153
# %bb.147:
	testq	%rbp, %rbp
	je	.LBB20_148
# %bb.149:
	movl	%r14d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_150:                             # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r13,%rax,4), %r8d
	movl	36(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 32(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r13,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 36(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB20_150
# %bb.151:
	testb	$1, %r14b
	je	.LBB20_153
.LBB20_152:
	addl	32(%rsp,%rax,4), %ecx
	addl	4(%r13,%rax,4), %ecx
	movl	%ecx, 32(%rsp,%rax,4)
.LBB20_153:
	xorl	%eax, %eax
	cmpb	$8, %r14b
	jb	.LBB20_158
# %bb.154:
	movq	%r12, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	.LBB20_158
# %bb.155:
	movl	%r14d, %eax
	andl	$120, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_156:                             # =>This Inner Loop Header: Depth=1
	movdqu	(%r15,%rcx,4), %xmm0
	movdqu	16(%r15,%rcx,4), %xmm1
	movdqu	%xmm0, (%r12,%rcx,4)
	movdqu	%xmm1, 16(%r12,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_156
# %bb.157:
	cmpq	%r14, %rax
	je	.LBB20_163
.LBB20_158:
	movq	%r14, %rdx
	movq	%rax, %rcx
	andq	$3, %rdx
	je	.LBB20_161
# %bb.159:
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB20_160:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %esi
	movl	%esi, (%r12,%rcx,4)
	incq	%rcx
	decq	%rdx
	jne	.LBB20_160
.LBB20_161:
	subq	%r14, %rax
	cmpq	$-4, %rax
	ja	.LBB20_163
	.p2align	4, 0x90
.LBB20_162:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %eax
	movl	%eax, (%r12,%rcx,4)
	movl	4(%r15,%rcx,4), %eax
	movl	%eax, 4(%r12,%rcx,4)
	movl	8(%r15,%rcx,4), %eax
	movl	%eax, 8(%r12,%rcx,4)
	movl	12(%r15,%rcx,4), %eax
	movl	%eax, 12(%r12,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %r14
	jne	.LBB20_162
.LBB20_163:
	xorl	%eax, %eax
	cmpb	$8, %r14b
	jb	.LBB20_168
# %bb.164:
	movq	%r15, %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jb	.LBB20_168
# %bb.165:
	movl	%r14d, %eax
	andl	$120, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_166:                             # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx,%rcx,4), %xmm0
	movdqu	16(%rbx,%rcx,4), %xmm1
	movdqu	%xmm0, (%r15,%rcx,4)
	movdqu	%xmm1, 16(%r15,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_166
# %bb.167:
	cmpq	%r14, %rax
	je	.LBB20_173
.LBB20_168:
	movq	%r14, %rdx
	movq	%rax, %rcx
	andq	$3, %rdx
	je	.LBB20_171
# %bb.169:
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB20_170:                             # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %esi
	movl	%esi, (%r15,%rcx,4)
	incq	%rcx
	decq	%rdx
	jne	.LBB20_170
.LBB20_171:
	subq	%r14, %rax
	cmpq	$-4, %rax
	ja	.LBB20_173
	.p2align	4, 0x90
.LBB20_172:                             # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %eax
	movl	%eax, (%r15,%rcx,4)
	movl	4(%rbx,%rcx,4), %eax
	movl	%eax, 4(%r15,%rcx,4)
	movl	8(%rbx,%rcx,4), %eax
	movl	%eax, 8(%r15,%rcx,4)
	movl	12(%rbx,%rcx,4), %eax
	movl	%eax, 12(%r15,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %r14
	jne	.LBB20_172
.LBB20_173:
	shll	$2, %r14d
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB20_174:
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
.LBB20_102:
	.cfi_def_cfa_offset 128
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r14b
	jne	.LBB20_106
	jmp	.LBB20_107
.LBB20_115:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r14b
	jne	.LBB20_119
	jmp	.LBB20_120
.LBB20_128:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r14b
	jne	.LBB20_132
	jmp	.LBB20_133
.LBB20_141:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_145
	jmp	.LBB20_146
.LBB20_50:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_54
	jmp	.LBB20_55
.LBB20_109:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_113
	jmp	.LBB20_114
.LBB20_122:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_126
	jmp	.LBB20_127
.LBB20_135:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_139
	jmp	.LBB20_140
.LBB20_148:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r14b
	jne	.LBB20_152
	jmp	.LBB20_153
.LBB20_91:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r14b
	jne	.LBB20_95
	jmp	.LBB20_96
.Lfunc_end20:
	.size	double_jacobian_default, .Lfunc_end20-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	4, 0x90
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movzbl	(%rdx), %r12d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testb	%r12b, %r12b
	jle	.LBB21_1
# %bb.2:
	movq	%r12, %r13
	decq	%r13
	je	.LBB21_3
# %bb.4:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	leaq	.L__const.x_side_default._3(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %r8d
	addl	%eax, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, (%r14,%rcx,4)
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %eax
	orl	%r9d, %eax
	movl	4(%rdi,%rcx,4), %r8d
	addl	%eax, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, 4(%r14,%rcx,4)
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %eax
	orl	%r9d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB21_5
# %bb.6:
	testb	$1, %r12b
	je	.LBB21_8
.LBB21_7:
	leaq	.L__const.x_side_default._3(%rip), %rdx
	movl	(%rdx,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r14,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB21_8:
	testl	%eax, %eax
	je	.LBB21_15
# %bb.9:
	testq	%r13, %r13
	je	.LBB21_10
# %bb.11:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_12:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	4(%r14,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r14,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r14,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB21_12
# %bb.13:
	testb	$1, %r12b
	je	.LBB21_15
.LBB21_14:
	addl	(%r14,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, (%r14,%rax,4)
.LBB21_15:
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testq	%r13, %r13
	je	.LBB21_16
# %bb.17:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_18:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	132(%rbx,%rax,4), %r8d
	movl	4(%r14,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r14,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	136(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r14,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB21_18
# %bb.19:
	testb	$1, %r12b
	je	.LBB21_21
.LBB21_20:
	movl	(%r14,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	132(%rbx,%rax,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, (%r14,%rax,4)
	movl	%edi, %ecx
.LBB21_21:
	testl	%ecx, %ecx
	jne	.LBB21_27
	jmp	.LBB21_22
.LBB21_1:
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
.LBB21_22:
	leaq	-1(%r12), %rax
	.p2align	4, 0x90
.LBB21_23:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB21_26
# %bb.24:                               #   in Loop: Header=BB21_23 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%rbx,%rdx,4), %ecx
	movl	(%r14,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB21_33
# %bb.25:                               #   in Loop: Header=BB21_23 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB21_23
.LBB21_26:
	testb	%r12b, %r12b
	jle	.LBB21_33
.LBB21_27:
	cmpl	$1, %r12d
	jne	.LBB21_29
# %bb.28:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB21_31
.LBB21_29:
	movl	%r12d, %edx
	andl	$-2, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB21_30:                              # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r14,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r14,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB21_30
.LBB21_31:
	testb	$1, %r12b
	je	.LBB21_33
# %bb.32:
	addl	4(%rbx,%rax,4), %ecx
	subl	%ecx, (%r14,%rax,4)
.LBB21_33:
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
.LBB21_3:
	.cfi_def_cfa_offset 48
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r12b
	jne	.LBB21_7
	jmp	.LBB21_8
.LBB21_16:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB21_20
	jmp	.LBB21_21
.LBB21_10:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB21_14
	jmp	.LBB21_15
.Lfunc_end21:
	.size	x_side_default, .Lfunc_end21-x_side_default
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
.Lfunc_end22:
	.size	uECC_secp256r1, .Lfunc_end22-uECC_secp256r1
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
	movl	(%rsi), %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	movl	%eax, (%rdi)
	movl	4(%rsi), %eax
	movl	%eax, -88(%rsp)                 # 4-byte Spill
	movl	%eax, 4(%rdi)
	movl	8(%rsi), %eax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movl	%eax, 8(%rdi)
	movl	12(%rsi), %r11d
	movl	%r11d, 12(%rdi)
	movl	16(%rsi), %r12d
	movl	%r12d, 16(%rdi)
	movl	20(%rsi), %edx
	movl	%edx, 20(%rdi)
	movl	24(%rsi), %ebp
	movl	%ebp, 24(%rdi)
	movl	28(%rsi), %eax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	%eax, 28(%rdi)
	movl	44(%rsi), %r9d
	movl	48(%rsi), %r8d
	movq	%rsi, %r13
	movl	%r8d, %ecx
	shldl	$1, %r9d, %ecx
	leal	(%r9,%r9), %r10d
	movl	%r11d, %esi
	movl	%r11d, %eax
	addl	%r10d, %eax
	movl	%r12d, %eax
	adcl	$0, %eax
	movl	%eax, -112(%rsp)                # 4-byte Spill
	xorl	%eax, %eax
	addl	%r10d, %esi
	movl	%esi, %r15d
	setb	%al
	movl	%ecx, %esi
	movl	%ecx, -116(%rsp)                # 4-byte Spill
	movl	%ecx, %r10d
	adcl	%r12d, %r10d
	shrl	$31, %r9d
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	cmpl	%r8d, %esi
	setb	%r11b
	cmovnel	%ecx, %r9d
	orl	%r11d, %r9d
	movl	52(%r13), %r8d
	leal	(%r9,%r8,2), %r14d
	xorl	%r11d, %r11d
	cmpl	%r8d, %r14d
	setb	%r11b
	cmovnel	%ecx, %r9d
	orl	%r11d, %r9d
	movl	56(%r13), %r8d
	leal	(%r9,%r8,2), %ebx
	xorl	%r11d, %r11d
	cmpl	%r8d, %ebx
	setb	%r11b
	cmovnel	%ecx, %r9d
	orl	%r11d, %r9d
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	xorl	%r8d, %r8d
	cmpl	%r12d, %r10d
	cmovnel	%ecx, %eax
	setb	%r8b
	orl	%r8d, %eax
	addl	%edx, %r14d
	addl	%eax, %r14d
	xorl	%esi, %esi
	cmpl	%edx, %r14d
	cmovnel	%ecx, %eax
	setb	%sil
	orl	%esi, %eax
	addl	%ebp, %ebx
	addl	%eax, %ebx
	xorl	%edx, %edx
	cmpl	%ebp, %ebx
	cmovnel	%ecx, %eax
	setb	%dl
	orl	%edx, %eax
	movl	%eax, %edx
	movl	%eax, -72(%rsp)                 # 4-byte Spill
	movq	%r13, %rax
	movl	60(%r13), %ecx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	-68(%rsp), %ebp                 # 4-byte Reload
	movl	%ebp, (%rdi)
	movl	-88(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 4(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, 8(%rdi)
	movl	%r15d, %esi
	movl	%r15d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	movl	%r14d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	leal	(%r9,%rcx,2), %r8d
	movq	%r8, -64(%rsp)                  # 8-byte Spill
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	addl	%r8d, %ecx
	addl	%edx, %ecx
	movl	%ecx, -100(%rsp)                # 4-byte Spill
	movl	%ecx, 28(%rdi)
	movl	48(%r13), %r13d
	movl	52(%rax), %ecx
	movq	%rax, %r15
	movl	%ecx, %r9d
	shldl	$1, %r13d, %r9d
	leal	(,%r13,2), %r11d
	shrl	$31, %r13d
	xorl	%r8d, %r8d
	cmpl	%ecx, %r9d
	setb	%r8b
	movl	$0, %edx
	cmovnel	%edx, %r13d
	orl	%r8d, %r13d
	movl	56(%rax), %r8d
	leal	(%r13,%r8,2), %ecx
	xorl	%r12d, %r12d
	cmpl	%r8d, %ecx
	setb	%r12b
	cmovnel	%edx, %r13d
	orl	%r12d, %r13d
	movl	60(%rax), %r8d
	leal	(%r13,%r8,2), %eax
	xorl	%edx, %edx
	cmpl	%r8d, %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	setb	%dl
	movl	$0, %r8d
	cmovnel	%r8d, %r13d
	orl	%edx, %r13d
	xorl	%r8d, %r8d
	addl	%r11d, %esi
	movl	%esi, %r12d
	setb	%r8b
	movl	-112(%rsp), %r11d               # 4-byte Reload
	adcl	-116(%rsp), %r11d               # 4-byte Folded Reload
	addl	%r9d, %r11d
	xorl	%edx, %edx
	cmpl	%r10d, %r11d
	setb	%dl
	movl	$0, %esi
	cmovnel	%esi, %r8d
	orl	%edx, %r8d
	addl	%r14d, %ecx
	addl	%r8d, %ecx
	xorl	%edx, %edx
	cmpl	%r14d, %ecx
	setb	%dl
	cmovnel	%esi, %r8d
	xorl	%esi, %esi
	orl	%edx, %r8d
	leal	(%rbx,%r8), %edx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rax), %r10d
	xorl	%edx, %edx
	cmpl	%ebx, %r10d
	movl	%r10d, %eax
	movl	%r10d, -48(%rsp)                # 4-byte Spill
	setb	%dl
	cmovnel	%esi, %r8d
	orl	%edx, %r8d
	movl	-88(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 4(%rdi)
	movq	-96(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 8(%rdi)
	movl	%r12d, 12(%rdi)
	movl	%r12d, -4(%rsp)                 # 4-byte Spill
	movl	%r11d, 16(%rdi)
	movl	%r11d, -112(%rsp)               # 4-byte Spill
	movl	%ecx, 20(%rdi)
	movl	%eax, 24(%rdi)
	addl	-100(%rsp), %r13d               # 4-byte Folded Reload
	addl	%r8d, %r13d
	movl	%r13d, 28(%rdi)
	movl	32(%r15), %r9d
	movl	%ebp, %edx
	addl	%r9d, %edx
	movl	%esi, %edx
	adcl	$0, %esi
	movl	%esi, -108(%rsp)                # 4-byte Spill
	xorl	%esi, %esi
	addl	%r9d, %ebp
	movl	%ebp, -116(%rsp)                # 4-byte Spill
	setb	%sil
	movl	36(%r15), %r14d
	movl	%r14d, -8(%rsp)                 # 4-byte Spill
	adcl	%edx, %r14d
	xorl	%ebp, %ebp
	cmpl	%edx, %r14d
	setb	%bpl
	movl	$0, %ebx
	cmovnel	%ebx, %esi
	orl	%ebp, %esi
	movq	%r10, %rax
	leal	(%r10,%rsi), %ebp
	movq	%r15, %rdx
	addl	40(%r15), %ebp
	xorl	%r15d, %r15d
	cmpl	%eax, %ebp
	setb	%r15b
	cmovnel	%ebx, %esi
	orl	%r15d, %esi
	movl	%r12d, %r15d
	addl	%esi, %r15d
	adcl	$0, %r11d
	movl	%r11d, -96(%rsp)                # 4-byte Spill
	setb	-101(%rsp)                      # 1-byte Folded Spill
	movl	%ecx, %eax
	adcl	$0, %eax
	movl	%eax, %ebx
	movl	%eax, -76(%rsp)                 # 4-byte Spill
	setb	%r10b
	movq	-56(%rsp), %rax                 # 8-byte Reload
	adcl	-40(%rsp), %eax                 # 4-byte Folded Reload
	addl	56(%rdx), %eax
	movq	%rdx, %r12
	xorl	%edx, %edx
	cmpl	-48(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, %r11
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	setb	%dl
	movzbl	%r10b, %eax
	movl	$0, %r10d
	cmovnel	%r10d, %eax
	orl	%edx, %eax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	leal	(%rax,%r13), %edx
	addl	60(%r12), %edx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movl	-116(%rsp), %eax                # 4-byte Reload
	movl	%eax, (%rdi)
	movl	%r14d, 4(%rdi)
	movl	%ebp, 8(%rdi)
	movl	%r15d, 12(%rdi)
	movl	-96(%rsp), %r10d                # 4-byte Reload
	movl	%r10d, 16(%rdi)
	movl	%ebx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%edx, 28(%rdi)
	movl	36(%r12), %edx
	xorl	%r10d, %r10d
	movl	%edx, -40(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, -116(%rsp)                # 4-byte Spill
	setb	%r10b
	movl	-108(%rsp), %eax                # 4-byte Reload
	adcl	-8(%rsp), %eax                  # 4-byte Folded Reload
	addl	40(%r12), %eax
	movl	%eax, -108(%rsp)                # 4-byte Spill
	xorl	%edx, %edx
	cmpl	%r14d, %eax
	setb	%dl
	movl	$0, %eax
	cmovnel	%eax, %r10d
	orl	%edx, %r10d
	leal	(%r10,%rbp), %ebx
	addl	44(%r12), %ebx
	xorl	%edx, %edx
	cmpl	%ebp, %ebx
	setb	%dl
	cmovnel	%eax, %r10d
	xorl	%eax, %eax
	orl	%edx, %r10d
	movl	52(%r12), %r11d
	leal	(%r15,%r10), %ebp
	addl	%r11d, %ebp
	xorl	%edx, %edx
	cmpl	%r15d, %ebp
	setb	%dl
	cmovnel	%eax, %r10d
	orl	%edx, %r10d
	addl	-4(%rsp), %esi                  # 4-byte Folded Reload
	movl	-112(%rsp), %eax                # 4-byte Reload
	adcl	%r10d, %eax
	addl	56(%r12), %eax
	movl	%eax, -112(%rsp)                # 4-byte Spill
	xorl	%edx, %edx
	cmpl	-96(%rsp), %eax                 # 4-byte Folded Reload
	setb	%dl
	movl	$0, %r14d
	cmovnel	%r14d, %r10d
	orl	%edx, %r10d
	addb	$255, -101(%rsp)                # 1-byte Folded Spill
	adcl	%r10d, %ecx
	xorl	%r15d, %r15d
	movq	-64(%rsp), %rax                 # 8-byte Reload
	cmpl	-24(%rsp), %eax                 # 4-byte Folded Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	cmovnel	%r14d, %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	setb	%r15b
	xorl	%edx, %edx
	movl	-100(%rsp), %esi                # 4-byte Reload
	cmpl	-32(%rsp), %esi                 # 4-byte Folded Reload
	movl	-72(%rsp), %eax                 # 4-byte Reload
	cmovnel	%r14d, %eax
	setb	%dl
	orl	%eax, %edx
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	cmpl	%esi, %r13d
	cmovnel	%r14d, %r8d
	setb	%dl
	orl	%r8d, %edx
	movl	%edx, -100(%rsp)                # 4-byte Spill
	addl	60(%r12), %ecx
	xorl	%edx, %edx
	cmpl	-76(%rsp), %ecx                 # 4-byte Folded Reload
	setb	%dl
	cmovnel	%r14d, %r10d
	orl	%edx, %r10d
	movq	-56(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %r11d
	addl	%r10d, %r11d
	xorl	%edx, %edx
	cmpl	%eax, %r11d
	setb	%dl
	cmovnel	%r14d, %r10d
	orl	%edx, %r10d
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %edx
	addl	32(%r12), %edx
	cmpl	%r13d, %eax
	movq	-48(%rsp), %rax                 # 8-byte Reload
	cmovnel	%r14d, %eax
	movl	$0, %esi
	setb	%sil
	orl	%eax, %esi
	movl	%esi, -72(%rsp)                 # 4-byte Spill
	movl	-116(%rsp), %r8d                # 4-byte Reload
	movl	%r8d, (%rdi)
	movl	-108(%rsp), %r13d               # 4-byte Reload
	movl	%r13d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	-112(%rsp), %eax                # 4-byte Reload
	movl	%eax, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%edx, 28(%rdi)
	movq	%r12, %r14
	movl	44(%r12), %r12d
	xorl	%esi, %esi
	movl	%r12d, -96(%rsp)                # 4-byte Spill
	subl	%r12d, %r8d
	movl	%r8d, -116(%rsp)                # 4-byte Spill
	setb	%sil
	movl	48(%r14), %r8d
	adcl	$0, %r8d
	xorl	%r12d, %r12d
	subl	%r8d, %r13d
	movl	%r13d, -108(%rsp)               # 4-byte Spill
	setb	%r12b
	testl	%r8d, %r8d
	movl	$0, %r13d
	cmovnel	%r13d, %esi
	orl	%r12d, %esi
	movl	52(%r14), %r8d
	addl	%esi, %r8d
	xorl	%r12d, %r12d
	subl	%r8d, %ebx
	setb	%r12b
	testl	%r8d, %r8d
	cmovnel	%r13d, %esi
	orl	%r12d, %esi
	subl	%esi, %ebp
	sbbl	$0, %eax
	movl	%eax, -112(%rsp)                # 4-byte Spill
	sbbl	$0, %ecx
	setb	%sil
	movl	32(%r14), %r8d
	adcl	$0, %r8d
	xorl	%r12d, %r12d
	subl	%r8d, %r11d
	setb	%r12b
	testl	%r8d, %r8d
	movzbl	%sil, %r13d
	movl	$0, %eax
	cmovnel	%eax, %r13d
	orl	%r12d, %r13d
	movl	40(%r14), %esi
	addl	%r13d, %esi
	xorl	%r8d, %r8d
	movl	%edx, %r12d
	subl	%esi, %r12d
	setb	%r8b
	movl	%r8d, -56(%rsp)                 # 4-byte Spill
	testl	%esi, %esi
	movl	$0, %esi
	cmovnel	%esi, %r13d
	xorl	%r8d, %r8d
	cmpl	-88(%rsp), %edx                 # 4-byte Folded Reload
	cmovnel	%esi, %r10d
	setb	%r8b
	orl	%r10d, %r8d
	movl	%r8d, -24(%rsp)                 # 4-byte Spill
	movl	-116(%rsp), %eax                # 4-byte Reload
	movl	%eax, (%rdi)
	movl	-108(%rsp), %r10d               # 4-byte Reload
	movl	%r10d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	-112(%rsp), %edx                # 4-byte Reload
	movl	%edx, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%r12d, 28(%rdi)
	movl	48(%r14), %esi
	xorl	%edx, %edx
	movl	%esi, -88(%rsp)                 # 4-byte Spill
	subl	%esi, %eax
	movl	%eax, -116(%rsp)                # 4-byte Spill
	setb	%dl
	movl	52(%r14), %esi
	adcl	$0, %esi
	xorl	%r8d, %r8d
	subl	%esi, %r10d
	movl	%r10d, -108(%rsp)               # 4-byte Spill
	setb	%r8b
	testl	%esi, %esi
	movl	$0, %eax
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	56(%r14), %esi
	addl	%edx, %esi
	xorl	%r8d, %r8d
	subl	%esi, %ebx
	setb	%r8b
	testl	%esi, %esi
	cmovnel	%eax, %edx
	xorl	%eax, %eax
	orl	%r8d, %edx
	movl	60(%r14), %esi
	addl	%edx, %esi
	xorl	%r8d, %r8d
	subl	%esi, %ebp
	setb	%r8b
	testl	%esi, %esi
	cmovnel	%eax, %edx
	orl	%r8d, %edx
	movl	-112(%rsp), %eax                # 4-byte Reload
	subl	%edx, %eax
	sbbl	$0, %ecx
	setb	%dl
	movl	36(%r14), %esi
	adcl	$0, %esi
	xorl	%r10d, %r10d
	subl	%esi, %r11d
	setb	%r10b
	testl	%esi, %esi
	movzbl	%dl, %esi
	movl	$0, %edx
	cmovnel	%edx, %esi
	orl	%r10d, %esi
	movl	44(%r14), %edx
	addl	%esi, %edx
	movl	%esi, %r8d
	xorl	%esi, %esi
	subl	%edx, %r12d
	setb	%sil
	movl	%esi, -112(%rsp)                # 4-byte Spill
	testl	%edx, %edx
	movl	$0, %edx
	cmovnel	%edx, %r8d
	movl	%r8d, -64(%rsp)                 # 4-byte Spill
	orl	%r13d, -56(%rsp)                # 4-byte Folded Spill
	movl	-116(%rsp), %edx                # 4-byte Reload
	movl	%edx, (%rdi)
	movl	-108(%rsp), %r10d               # 4-byte Reload
	movl	%r10d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	%eax, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%r12d, 28(%rdi)
	movl	52(%r14), %r13d
	xorl	%esi, %esi
	subl	%r13d, %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	setb	%sil
	movl	56(%r14), %edx
	adcl	$0, %edx
	xorl	%r8d, %r8d
	subl	%edx, %r10d
	movl	%r10d, -108(%rsp)               # 4-byte Spill
	setb	%r8b
	testl	%edx, %edx
	movl	$0, %r10d
	cmovnel	%r10d, %esi
	orl	%r8d, %esi
	movl	60(%r14), %edx
	addl	%esi, %edx
	xorl	%r8d, %r8d
	subl	%edx, %ebx
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	xorl	%r10d, %r10d
	orl	%r8d, %esi
	movl	32(%r14), %edx
	addl	%esi, %edx
	xorl	%r8d, %r8d
	subl	%edx, %ebp
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	orl	%r8d, %esi
	movl	36(%r14), %edx
	addl	%esi, %edx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	orl	%r8d, %esi
	movl	40(%r14), %edx
	addl	%esi, %edx
	xorl	%r8d, %r8d
	subl	%edx, %ecx
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	orl	%r8d, %esi
	xorl	%edx, %edx
	subl	%esi, %r11d
	setb	%dl
	movl	%edx, %r8d
	movl	48(%r14), %edx
	adcl	$0, %edx
	xorl	%esi, %esi
	subl	%edx, %r12d
	setb	%sil
	movl	%esi, -48(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	cmovnel	%r10d, %r8d
	movl	%r8d, -76(%rsp)                 # 4-byte Spill
	movl	-64(%rsp), %edx                 # 4-byte Reload
	orl	%edx, -112(%rsp)                # 4-byte Folded Spill
	movl	-116(%rsp), %esi                # 4-byte Reload
	movl	%esi, (%rdi)
	movl	-108(%rsp), %r10d               # 4-byte Reload
	movl	%r10d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	%eax, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%r12d, 28(%rdi)
	movl	56(%r14), %r8d
	xorl	%edx, %edx
	movl	%r8d, -64(%rsp)                 # 4-byte Spill
	subl	%r8d, %esi
	movl	%esi, -116(%rsp)                # 4-byte Spill
	setb	%dl
	movl	60(%r14), %esi
	adcl	$0, %esi
	xorl	%r8d, %r8d
	subl	%esi, %r10d
	movl	%r10d, -108(%rsp)               # 4-byte Spill
	setb	%r8b
	testl	%esi, %esi
	movl	$0, %r10d
	cmovnel	%r10d, %edx
	orl	%r8d, %edx
	xorl	%esi, %esi
	subl	%edx, %ebx
	setb	%sil
	movl	36(%r14), %edx
	adcl	$0, %edx
	xorl	%r8d, %r8d
	subl	%edx, %ebp
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	xorl	%r10d, %r10d
	orl	%r8d, %esi
	movl	40(%r14), %edx
	addl	%esi, %edx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	setb	%r8b
	testl	%edx, %edx
	cmovnel	%r10d, %esi
	orl	%r8d, %esi
	movl	52(%r14), %r10d
	movl	44(%r14), %r8d
	movl	-116(%rsp), %edx                # 4-byte Reload
	movl	%edx, (%rdi)
	addl	%esi, %r8d
	xorl	%edx, %edx
	subl	%r8d, %ecx
	setb	%dl
	testl	%r8d, %r8d
	movl	$0, %r8d
	cmovnel	%r8d, %esi
	orl	%edx, %esi
	xorl	%r8d, %r8d
	subl	%esi, %r11d
	movl	$0, %esi
	setb	%r8b
	adcl	$0, %r10d
	xorl	%edx, %edx
	subl	%r10d, %r12d
	setb	%dl
	testl	%r10d, %r10d
	cmovnel	%esi, %r8d
	orl	%edx, %r8d
	movl	-48(%rsp), %esi                 # 4-byte Reload
	orl	-76(%rsp), %esi                 # 4-byte Folded Reload
	orl	-16(%rsp), %r15d                # 4-byte Folded Reload
	addl	-32(%rsp), %r15d                # 4-byte Folded Reload
	addl	-100(%rsp), %r15d               # 4-byte Folded Reload
	addl	-72(%rsp), %r15d                # 4-byte Folded Reload
	addl	-24(%rsp), %r15d                # 4-byte Folded Reload
	movl	-112(%rsp), %edx                # 4-byte Reload
	addl	-56(%rsp), %edx                 # 4-byte Folded Reload
	addl	%esi, %edx
	addl	%r8d, %edx
	movl	-108(%rsp), %r14d               # 4-byte Reload
	subl	%edx, %r15d
	movl	%r14d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	%eax, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%r12d, 28(%rdi)
	js	.LBB23_13
# %bb.1:
	addl	-40(%rsp), %r9d                 # 4-byte Folded Reload
	addl	-68(%rsp), %r9d                 # 4-byte Folded Reload
	subl	-96(%rsp), %r9d                 # 4-byte Folded Reload
	subl	-88(%rsp), %r9d                 # 4-byte Folded Reload
	subl	%r13d, %r9d
	subl	-64(%rsp), %r9d                 # 4-byte Folded Reload
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_12:                              #   in Loop: Header=BB23_2 Depth=1
	xorl	%edx, %edx
	testl	%r9d, %r9d
	setne	%sil
	sete	%dl
	movl	%r9d, (%rdi)
	negl	%edx
	subl	%edx, %r14d
	setb	%dl
	orb	%sil, %dl
	movl	%r14d, 4(%rdi)
	movzbl	%dl, %edx
	leal	-1(%rdx), %esi
	subl	%esi, %ebx
	setb	%sil
	orb	%sil, %dl
	movzbl	%dl, %edx
	movl	%ebx, 8(%rdi)
	subl	%edx, %ebp
	movl	%ebp, 12(%rdi)
	sbbl	$0, %eax
	movl	%eax, 16(%rdi)
	sbbl	$0, %ecx
	movl	%ecx, 20(%rdi)
	movl	$0, %edx
	adcl	$1, %edx
	subl	%edx, %r11d
	setb	%dl
	movl	$0, %esi
	adcl	$-1, %esi
	movl	%r11d, 24(%rdi)
	subl	%esi, %r12d
	setb	%sil
	orb	%dl, %sil
	movl	%r12d, 28(%rdi)
	movzbl	%sil, %edx
	subl	%edx, %r15d
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	incl	%r9d
	testl	%r15d, %r15d
	jne	.LBB23_12
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	cmpl	$-1, %r12d
	jne	.LBB23_16
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	testl	%r11d, %r11d
	je	.LBB23_16
# %bb.5:                                #   in Loop: Header=BB23_2 Depth=1
	cmpl	$1, %r11d
	jne	.LBB23_12
# %bb.6:                                #   in Loop: Header=BB23_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB23_12
# %bb.7:                                #   in Loop: Header=BB23_2 Depth=1
	testl	%eax, %eax
	jne	.LBB23_12
# %bb.8:                                #   in Loop: Header=BB23_2 Depth=1
	testl	%ebp, %ebp
	jne	.LBB23_12
# %bb.9:                                #   in Loop: Header=BB23_2 Depth=1
	cmpl	$-1, %ebx
	jne	.LBB23_16
# %bb.10:                               #   in Loop: Header=BB23_2 Depth=1
	cmpl	$-1, %r14d
	jne	.LBB23_16
# %bb.11:                               #   in Loop: Header=BB23_2 Depth=1
	testl	%r9d, %r9d
	je	.LBB23_12
	jmp	.LBB23_16
.LBB23_13:
	movl	-96(%rsp), %edx                 # 4-byte Reload
	addl	-88(%rsp), %edx                 # 4-byte Folded Reload
	addl	-64(%rsp), %r13d                # 4-byte Folded Reload
	addl	%edx, %r13d
	subl	%r9d, %r13d
	subl	-40(%rsp), %r13d                # 4-byte Folded Reload
	subl	-68(%rsp), %r13d                # 4-byte Folded Reload
	movl	%eax, %r9d
	.p2align	4, 0x90
.LBB23_14:                              # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%r14d, %esi
	movl	%ebx, %r8d
	movl	%r11d, %edx
	xorl	%r10d, %r10d
	testl	%r13d, %r13d
	setne	%r10b
	leal	(%rsi,%r10), %r14d
	decl	%r14d
	xorl	%ebx, %ebx
	cmpl	%esi, %r14d
	setb	%bl
	cmovnel	%eax, %r10d
	orl	%ebx, %r10d
	leal	(%r8,%r10), %ebx
	decl	%ebx
	xorl	%esi, %esi
	cmpl	%r8d, %ebx
	setb	%sil
	cmovnel	%eax, %r10d
	orl	%esi, %r10d
	addl	%r10d, %ebp
	adcl	$0, %r9d
	adcl	$0, %ecx
	movl	%r12d, %esi
	setb	%r8b
	adcl	$1, %r11d
	movzbl	%r8b, %r8d
	xorl	%r10d, %r10d
	cmpl	%edx, %r11d
	setb	%r10b
	cmovnel	%eax, %r8d
	orl	%r10d, %r8d
	leal	(%rsi,%r8), %r12d
	decl	%r12d
	xorl	%edx, %edx
	cmpl	%esi, %r12d
	movl	$0, %eax
	cmovnel	%eax, %r8d
	setb	%dl
	orl	%edx, %r8d
	incl	%r13d
	addl	%r8d, %r15d
	js	.LBB23_14
# %bb.15:
	negl	%r13d
	movl	%r13d, (%rdi)
	movl	%r14d, 4(%rdi)
	movl	%ebx, 8(%rdi)
	movl	%ebp, 12(%rdi)
	movl	%r9d, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	movl	%r12d, 28(%rdi)
.LBB23_16:
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
.Lfunc_end23:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end23-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	4, 0x90
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
	.cfi_startproc
# %bb.0:
	movzbl	(%rsi), %ecx
	addb	%cl, %cl
	testb	%cl, %cl
	jle	.LBB24_1
# %bb.2:
	movzbl	%cl, %eax
	cmpb	$8, %cl
	jae	.LBB24_4
# %bb.3:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_7
.LBB24_1:
	movl	$1, %eax
	retq
.LBB24_4:
	movl	%eax, %ecx
	andl	$120, %ecx
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rdx,4), %xmm2
	por	%xmm2, %xmm0
	movdqu	16(%rdi,%rdx,4), %xmm2
	por	%xmm2, %xmm1
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB24_5
# %bb.6:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %edx
	cmpq	%rax, %rcx
	je	.LBB24_8
	.p2align	4, 0x90
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB24_7
.LBB24_8:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	retq
.Lfunc_end24:
	.size	EccPoint_isZero, .Lfunc_end24-EccPoint_isZero
	.cfi_endproc
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	4, 0x90
	.type	apply_z,@function
apply_z:                                # @apply_z
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rsp, %r13
	movq	%r13, %rdi
	movq	%rdx, %rsi
	callq	uECC_vli_modMult_fast
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	addq	$32, %rsp
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
.Lfunc_end25:
	.size	apply_z, .Lfunc_end25-apply_z
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movzbl	(%r8), %r11d
	testb	%r11b, %r11b
	jle	.LBB26_16
# %bb.1:
	movq	%r11, %rax
	decq	%rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	je	.LBB26_2
# %bb.3:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rax,4), %edi
	movl	(%rbp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, (%rsp,%rax,4)
	movl	4(%rbx,%rax,4), %edi
	movl	4(%rbp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 4(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_4
# %bb.5:
	testb	$1, %r11b
	je	.LBB26_7
.LBB26_6:
	movl	(%rbx,%rax,4), %edx
	movl	(%rbp,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, (%rsp,%rax,4)
	movl	%r8d, %ecx
.LBB26_7:
	testl	%ecx, %ecx
	je	.LBB26_14
# %bb.8:
	cmpq	$0, 40(%rsp)                    # 8-byte Folded Reload
	je	.LBB26_9
# %bb.10:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_11
# %bb.12:
	testb	$1, %r11b
	je	.LBB26_14
.LBB26_13:
	addl	(%rsp,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%rsp,%rax,4)
.LBB26_14:
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	40(%rsp), %r9                   # 8-byte Reload
	testq	%r9, %r9
	je	.LBB26_15
# %bb.17:
	movq	48(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_18:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%r13,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_18
# %bb.19:
	testb	$1, %r12b
	je	.LBB26_21
.LBB26_20:
	movl	(%r13,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r15,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB26_21:
	testl	%eax, %eax
	je	.LBB26_28
# %bb.22:
	testq	%r9, %r9
	je	.LBB26_23
# %bb.24:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_25:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%r15,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r15,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_25
# %bb.26:
	testb	$1, %r12b
	je	.LBB26_28
.LBB26_27:
	addl	(%r15,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
.LBB26_28:
	movq	%rsp, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	40(%rsp), %r11                  # 8-byte Reload
	testq	%r11, %r11
	je	.LBB26_29
# %bb.30:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_31:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%rbp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_31
# %bb.32:
	testb	$1, %r12b
	je	.LBB26_34
.LBB26_33:
	movl	(%rbp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%rsp,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB26_34:
	testl	%eax, %eax
	je	.LBB26_41
# %bb.35:
	testq	%r11, %r11
	je	.LBB26_36
# %bb.37:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_38:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_38
# %bb.39:
	testb	$1, %r12b
	je	.LBB26_41
.LBB26_40:
	addl	(%rsp,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%rsp,%rax,4)
.LBB26_41:
	testq	%r11, %r11
	je	.LBB26_42
# %bb.43:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_44:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%rbx,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_44
# %bb.45:
	testb	$1, %r12b
	je	.LBB26_47
.LBB26_46:
	movl	(%rbx,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%rsp,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB26_47:
	testl	%eax, %eax
	je	.LBB26_54
# %bb.48:
	testq	%r11, %r11
	je	.LBB26_49
# %bb.50:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_51:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_51
# %bb.52:
	testb	$1, %r12b
	je	.LBB26_54
.LBB26_53:
	addl	(%rsp,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%rsp,%rax,4)
.LBB26_54:
	testq	%r11, %r11
	je	.LBB26_55
# %bb.56:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_57:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%rbx,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%rbp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%rbx,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_57
# %bb.58:
	testb	$1, %r12b
	je	.LBB26_60
.LBB26_59:
	movl	(%rbp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%rbx,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB26_60:
	testl	%eax, %eax
	je	.LBB26_67
# %bb.61:
	testq	%r11, %r11
	je	.LBB26_62
# %bb.63:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_64:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%rbx,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rbx,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rbx,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_64
# %bb.65:
	testb	$1, %r12b
	je	.LBB26_67
.LBB26_66:
	addl	(%rbx,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%rbx,%rax,4)
.LBB26_67:
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	40(%rsp), %r10                  # 8-byte Reload
	testq	%r10, %r10
	je	.LBB26_68
# %bb.69:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_70:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rax,4), %edi
	movl	(%rsp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, (%rbx,%rax,4)
	movl	4(%rbp,%rax,4), %edi
	movl	4(%rsp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 4(%rbx,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_70
# %bb.71:
	testb	$1, %r12b
	je	.LBB26_73
.LBB26_72:
	movl	(%rbp,%rax,4), %edx
	movl	(%rsp,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, (%rbx,%rax,4)
	movl	%r8d, %ecx
.LBB26_73:
	testl	%ecx, %ecx
	je	.LBB26_80
# %bb.74:
	testq	%r10, %r10
	je	.LBB26_75
# %bb.76:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_77:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%rbx,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rbx,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rbx,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_77
# %bb.78:
	testb	$1, %r12b
	je	.LBB26_80
.LBB26_79:
	addl	(%rbx,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%rbx,%rax,4)
.LBB26_80:
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	40(%rsp), %r9                   # 8-byte Reload
	testq	%r9, %r9
	je	.LBB26_81
# %bb.82:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB26_83:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%r13,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r15,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB26_83
# %bb.84:
	testb	$1, %r12b
	je	.LBB26_86
.LBB26_85:
	movl	(%r13,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r15,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB26_86:
	testl	%eax, %eax
	je	.LBB26_93
# %bb.87:
	testq	%r9, %r9
	je	.LBB26_88
# %bb.89:
	movl	%r12d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_90:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r14,%rax,4), %r8d
	movl	4(%r15,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r15,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r14,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r15,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB26_90
# %bb.91:
	testb	$1, %r12b
	je	.LBB26_93
.LBB26_92:
	addl	(%r15,%rax,4), %ecx
	addl	4(%r14,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
.LBB26_93:
	shll	$2, %r12d
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	jmp	.LBB26_94
.LBB26_16:
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
.LBB26_94:
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
.LBB26_2:
	.cfi_def_cfa_offset 112
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB26_6
	jmp	.LBB26_7
.LBB26_15:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	48(%rsp), %r12                  # 8-byte Reload
	testb	$1, %r12b
	jne	.LBB26_20
	jmp	.LBB26_21
.LBB26_29:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r12b
	jne	.LBB26_33
	jmp	.LBB26_34
.LBB26_42:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r12b
	jne	.LBB26_46
	jmp	.LBB26_47
.LBB26_55:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r12b
	jne	.LBB26_59
	jmp	.LBB26_60
.LBB26_68:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_72
	jmp	.LBB26_73
.LBB26_81:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r12b
	jne	.LBB26_85
	jmp	.LBB26_86
.LBB26_9:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB26_13
	jmp	.LBB26_14
.LBB26_23:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_27
	jmp	.LBB26_28
.LBB26_36:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_40
	jmp	.LBB26_41
.LBB26_49:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_53
	jmp	.LBB26_54
.LBB26_62:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_66
	jmp	.LBB26_67
.LBB26_75:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_79
	jmp	.LBB26_80
.LBB26_88:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r12b
	jne	.LBB26_92
	jmp	.LBB26_93
.Lfunc_end26:
	.size	XYcZ_add, .Lfunc_end26-XYcZ_add
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
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movq	%r9, %r15
	movzbl	(%r9), %eax
	leaq	128(%rsp), %rdi
	testb	%al, %al
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
	jle	.LBB27_3
# %bb.1:
	movq	%rax, %r14
	leaq	(,%rax,4), %rbx
	movq	%rdi, %r13
	movq	%rsi, %rbp
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	192(%rsp), %rdi
	leaq	(,%r14,4), %rsi
	addq	%rbp, %rsi
	movq	%rdi, %rbp
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leal	(,%r14,4), %ebx
	leaq	32(%rsp), %rdi
	testq	%r12, %r12
	je	.LBB27_5
# %bb.2:
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	jmp	.LBB27_6
.LBB27_3:
	movq	%rdx, %r14
	movq	%rdi, %r13
	leaq	192(%rsp), %rbp
	movsbq	%al, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	(%rsi,%rax,4), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	testq	%r12, %r12
	jne	.LBB27_7
# %bb.4:
	movl	$1, 32(%rsp)
	jmp	.LBB27_7
.LBB27_5:
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movl	$1, 32(%rsp)
.LBB27_6:
	leaq	96(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memmove@PLT
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
.LBB27_7:
	leaq	224(%rsp), %rbx
	leaq	32(%rsp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	*168(%r15)
	leaq	224(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	leaq	96(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	leaq	160(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movl	16(%rsp), %eax                  # 4-byte Reload
	addl	$-2, %eax
	testw	%ax, %ax
	jle	.LBB27_10
# %bb.8:
	movzwl	%ax, %r12d
	.p2align	4, 0x90
.LBB27_9:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	shrl	$5, %eax
	movl	$1, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	testl	%edx, (%r14,%rax,4)
	sete	%cl
	setne	%sil
	shll	$5, %esi
	leaq	(%rsp,%rsi), %rbx
	addq	$96, %rbx
	leaq	(%rsp,%rsi), %r13
	addq	$160, %r13
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %rbp
	addq	$96, %rbp
	leaq	160(%rsp,%rcx), %r14
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	XYcZ_addC
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	leal	-1(%r12), %eax
	cmpl	$1, %r12d
	movl	%eax, %r12d
	ja	.LBB27_9
.LBB27_10:
	movl	(%r14), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %rbp
	addq	$96, %rbp
	leaq	(%rsp,%rcx), %r14
	addq	$160, %r14
	xorl	$1, %eax
	shll	$5, %eax
	leaq	(%rsp,%rax), %rdx
	addq	$96, %rdx
	leaq	160(%rsp,%rax), %rcx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%r15, %r8
	callq	XYcZ_addC
	leaq	4(%r15), %r13
	movq	24(%rsp), %rbx                  # 8-byte Reload
	testb	%bl, %bl
	jle	.LBB27_24
# %bb.11:
	movq	%rbx, %rax
	decq	%rax
	je	.LBB27_12
# %bb.13:
	movl	%ebx, %esi
	andl	$126, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB27_14:                              # =>This Inner Loop Header: Depth=1
	movl	96(%rsp,%rcx,4), %r8d
	addl	%edx, %r8d
	movl	128(%rsp,%rcx,4), %r9d
	movl	132(%rsp,%rcx,4), %r10d
	xorl	%r11d, %r11d
	subl	%r8d, %r9d
	setb	%r11b
	testl	%r8d, %r8d
	cmovnel	%edi, %edx
	orl	%r11d, %edx
	movl	%r9d, 32(%rsp,%rcx,4)
	movl	100(%rsp,%rcx,4), %r8d
	addl	%edx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %r10d
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%edi, %edx
	orl	%r9d, %edx
	movl	%r10d, 36(%rsp,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB27_14
# %bb.15:
	testb	$1, %bl
	je	.LBB27_17
.LBB27_16:
	movl	128(%rsp,%rcx,4), %esi
	movl	96(%rsp,%rcx,4), %edi
	addl	%edx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	xorl	%r9d, %r9d
	testl	%edi, %edi
	cmovel	%edx, %r9d
	orl	%r8d, %r9d
	movl	%esi, 32(%rsp,%rcx,4)
	movl	%r9d, %edx
.LBB27_17:
	testl	%edx, %edx
	je	.LBB27_24
# %bb.18:
	testq	%rax, %rax
	je	.LBB27_19
# %bb.20:
	movl	%ebx, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB27_21:                              # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r15,%rax,4), %r8d
	movl	36(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 32(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%r15,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 36(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB27_21
# %bb.22:
	testb	$1, %bl
	je	.LBB27_24
.LBB27_23:
	addl	32(%rsp,%rax,4), %ecx
	addl	(%r13,%rax,4), %ecx
	movl	%ecx, 32(%rsp,%rax,4)
.LBB27_24:
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movsbl	%bl, %ecx
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_modInv
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	leaq	224(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	leaq	96(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	leaq	160(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%r15, %rcx
	callq	uECC_vli_modMult_fast
	testb	%bl, %bl
	jle	.LBB27_26
# %bb.25:
	shll	$2, %ebx
	leaq	96(%rsp), %rsi
	movq	80(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax,4), %rdi
	leaq	160(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB27_26:
	addq	$264, %rsp                      # imm = 0x108
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
.LBB27_12:
	.cfi_def_cfa_offset 320
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testb	$1, %bl
	jne	.LBB27_16
	jmp	.LBB27_17
.LBB27_19:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %bl
	jne	.LBB27_23
	jmp	.LBB27_24
.Lfunc_end27:
	.size	EccPoint_mult, .Lfunc_end27-EccPoint_mult
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %r15
	movzbl	(%r8), %r11d
	testb	%r11b, %r11b
	jle	.LBB28_14
# %bb.1:
	movq	%r11, %rax
	decq	%rax
	je	.LBB28_2
# %bb.3:
	movl	%r11d, %esi
	andl	$126, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB28_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rcx,4), %r8d
	movl	(%r15,%rcx,4), %r9d
	addl	%edx, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, %r8d
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edi, %edx
	orl	%r10d, %edx
	movl	%r8d, 80(%rsp,%rcx,4)
	movl	4(%rbp,%rcx,4), %r8d
	movl	4(%r15,%rcx,4), %r9d
	addl	%edx, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, %r8d
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edi, %edx
	orl	%r10d, %edx
	movl	%r8d, 84(%rsp,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB28_4
# %bb.5:
	testb	$1, %r11b
	je	.LBB28_7
.LBB28_6:
	movl	(%rbp,%rcx,4), %esi
	movl	(%r15,%rcx,4), %edi
	addl	%edx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	xorl	%r9d, %r9d
	testl	%edi, %edi
	cmovel	%edx, %r9d
	orl	%r8d, %r9d
	movl	%esi, 80(%rsp,%rcx,4)
	movl	%r9d, %edx
.LBB28_7:
	testl	%edx, %edx
	je	.LBB28_14
# %bb.8:
	testq	%rax, %rax
	je	.LBB28_9
# %bb.10:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_11:                              # =>This Inner Loop Header: Depth=1
	movl	80(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	84(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 80(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 84(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_11
# %bb.12:
	testb	$1, %r11b
	je	.LBB28_14
.LBB28_13:
	addl	80(%rsp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, 80(%rsp,%rax,4)
.LBB28_14:
	leaq	80(%rsp), %r14
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	callq	uECC_vli_modMult_fast
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	8(%rsp), %r11                   # 8-byte Reload
	testb	%r11b, %r11b
	jle	.LBB28_22
# %bb.15:
	cmpl	$1, %r11d
	jne	.LBB28_17
# %bb.16:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB28_19
.LBB28_17:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_18:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	(%r12,%rax,4), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	cmovnel	%esi, %ecx
	setb	%r9b
	orl	%r9d, %ecx
	movl	%r8d, 80(%rsp,%rax,4)
	movl	4(%r13,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%r12,%rax,4), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	setb	%r9b
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%r8d, 84(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_18
.LBB28_19:
	testb	$1, %r11b
	je	.LBB28_21
# %bb.20:
	movl	(%r13,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%r12,%rax,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, 80(%rsp,%rax,4)
	movl	%edi, %ecx
.LBB28_21:
	testl	%ecx, %ecx
	jne	.LBB28_26
.LBB28_22:
	leaq	-1(%r11), %rax
	.p2align	4, 0x90
.LBB28_23:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB28_26
# %bb.24:                               #   in Loop: Header=BB28_23 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%rbx,%rdx,4), %ecx
	movl	80(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB28_33
# %bb.25:                               #   in Loop: Header=BB28_23 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB28_23
.LBB28_26:
	testb	%r11b, %r11b
	jle	.LBB28_161
# %bb.27:
	cmpl	$1, %r11d
	jne	.LBB28_29
# %bb.28:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB28_31
.LBB28_29:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_30:                              # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 80(%rsp,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 84(%rsp,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_30
.LBB28_31:
	testb	$1, %r11b
	je	.LBB28_33
# %bb.32:
	addl	4(%rbx,%rax,4), %ecx
	subl	%ecx, 80(%rsp,%rax,4)
.LBB28_33:
	testb	%r11b, %r11b
	jle	.LBB28_161
# %bb.34:
	movq	%r11, %r14
	decq	%r14
	je	.LBB28_35
# %bb.36:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB28_37:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r13,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%r12,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r13,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB28_37
# %bb.38:
	testb	$1, %r11b
	je	.LBB28_40
.LBB28_39:
	movl	(%r12,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r13,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB28_40:
	testl	%eax, %eax
	je	.LBB28_47
# %bb.41:
	testq	%r14, %r14
	je	.LBB28_42
# %bb.43:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_44:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	4(%r13,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r13,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r13,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_44
# %bb.45:
	testb	$1, %r11b
	je	.LBB28_47
.LBB28_46:
	addl	(%r13,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, (%r13,%rax,4)
.LBB28_47:
	testq	%r14, %r14
	je	.LBB28_48
# %bb.49:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_50:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rax,4), %edi
	movl	(%r15,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 16(%rsp,%rax,4)
	movl	4(%rbp,%rax,4), %edi
	movl	4(%r15,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 20(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_50
# %bb.51:
	testb	$1, %r11b
	je	.LBB28_53
.LBB28_52:
	movl	(%rbp,%rax,4), %edx
	movl	(%r15,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, 16(%rsp,%rax,4)
	movl	%r8d, %ecx
.LBB28_53:
	testl	%ecx, %ecx
	je	.LBB28_60
# %bb.54:
	testq	%r14, %r14
	je	.LBB28_55
# %bb.56:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_57:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	20(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 16(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 20(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_57
# %bb.58:
	testb	$1, %r11b
	je	.LBB28_60
.LBB28_59:
	addl	16(%rsp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, 16(%rsp,%rax,4)
.LBB28_60:
	leaq	16(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testq	%r14, %r14
	je	.LBB28_61
# %bb.62:
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	%r10d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_63:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	(%rbp,%rax,4), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	cmovnel	%esi, %ecx
	setb	%r9b
	orl	%r9d, %ecx
	movl	%r8d, 16(%rsp,%rax,4)
	movl	4(%r15,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbp,%rax,4), %r8d
	xorl	%r9d, %r9d
	cmpl	%edi, %r8d
	setb	%r9b
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%r8d, 20(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_63
# %bb.64:
	testb	$1, %r10b
	je	.LBB28_66
.LBB28_65:
	movl	(%r15,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%rbp,%rax,4), %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpl	%edx, %esi
	cmovel	%ecx, %edi
	setb	%r8b
	orl	%r8d, %edi
	movl	%esi, 16(%rsp,%rax,4)
	movl	%edi, %ecx
.LBB28_66:
	testl	%ecx, %ecx
	jne	.LBB28_71
	jmp	.LBB28_67
.LBB28_161:
	leaq	16(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	8(%rsp), %r10                   # 8-byte Reload
.LBB28_67:
	leaq	-1(%r10), %rax
	.p2align	4, 0x90
.LBB28_68:                              # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB28_71
# %bb.69:                               #   in Loop: Header=BB28_68 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	4(%rbx,%rdx,4), %ecx
	movl	16(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB28_78
# %bb.70:                               #   in Loop: Header=BB28_68 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB28_68
.LBB28_71:
	testb	%r10b, %r10b
	jle	.LBB28_107
# %bb.72:
	cmpl	$1, %r10d
	jne	.LBB28_74
# %bb.73:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB28_76
.LBB28_107:
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	jmp	.LBB28_108
.LBB28_74:
	movl	%r10d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_75:                              # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 16(%rsp,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	8(%rbx,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, 20(%rsp,%rax,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_75
.LBB28_76:
	testb	$1, %r10b
	je	.LBB28_78
# %bb.77:
	addl	4(%rbx,%rax,4), %ecx
	subl	%ecx, 16(%rsp,%rax,4)
.LBB28_78:
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	movq	8(%rsp), %r11                   # 8-byte Reload
	testb	%r11b, %r11b
	jle	.LBB28_108
# %bb.79:
	movq	%r11, %r14
	decq	%r14
	je	.LBB28_80
# %bb.81:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB28_82:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%rbp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	20(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%rbp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB28_82
# %bb.83:
	testb	$1, %r11b
	je	.LBB28_85
.LBB28_84:
	movl	16(%rsp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%rbp,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB28_85:
	testl	%eax, %eax
	je	.LBB28_92
# %bb.86:
	testq	%r14, %r14
	je	.LBB28_87
# %bb.88:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_89:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	4(%rbp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%rbp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%rbp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_89
# %bb.90:
	testb	$1, %r11b
	je	.LBB28_92
.LBB28_91:
	addl	(%rbp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, (%rbp,%rax,4)
.LBB28_92:
	testq	%r14, %r14
	je	.LBB28_93
# %bb.94:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_95:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	movl	(%rbp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 48(%rsp,%rax,4)
	movl	4(%r15,%rax,4), %edi
	movl	4(%rbp,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 52(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_95
# %bb.96:
	testb	$1, %r11b
	je	.LBB28_98
.LBB28_97:
	movl	(%r15,%rax,4), %edx
	movl	(%rbp,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, 48(%rsp,%rax,4)
	movl	%r8d, %ecx
.LBB28_98:
	testl	%ecx, %ecx
	je	.LBB28_105
# %bb.99:
	testq	%r14, %r14
	je	.LBB28_100
# %bb.101:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_102:                             # =>This Inner Loop Header: Depth=1
	movl	48(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	52(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 48(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 52(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_102
# %bb.103:
	testb	$1, %r11b
	je	.LBB28_105
.LBB28_104:
	addl	48(%rsp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, 48(%rsp,%rax,4)
.LBB28_105:
	leaq	48(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testq	%r14, %r14
	je	.LBB28_106
# %bb.109:
	movq	8(%rsp), %r11                   # 8-byte Reload
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB28_110:                             # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, (%r13,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	4(%r12,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 4(%r13,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB28_110
# %bb.111:
	testb	$1, %r11b
	je	.LBB28_113
.LBB28_112:
	movl	(%r12,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, (%r13,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB28_113:
	testl	%eax, %eax
	je	.LBB28_120
# %bb.114:
	testq	%r14, %r14
	je	.LBB28_115
# %bb.116:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_117:                             # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	4(%r13,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r13,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r13,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_117
# %bb.118:
	testb	$1, %r11b
	je	.LBB28_120
.LBB28_119:
	addl	(%r13,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, (%r13,%rax,4)
.LBB28_120:
	leaq	48(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testq	%r14, %r14
	je	.LBB28_121
# %bb.122:
	movq	8(%rsp), %r11                   # 8-byte Reload
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB28_123:                             # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 48(%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	movl	20(%rsp,%rcx,4), %edi
	addl	%eax, %edi
	xorl	%r8d, %r8d
	subl	%edi, 52(%rsp,%rcx,4)
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %eax
	orl	%r8d, %eax
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB28_123
# %bb.124:
	testb	$1, %r11b
	je	.LBB28_126
.LBB28_125:
	movl	16(%rsp,%rcx,4), %edx
	addl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, 48(%rsp,%rcx,4)
	setb	%sil
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovel	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, %eax
.LBB28_126:
	testl	%eax, %eax
	je	.LBB28_133
# %bb.127:
	testq	%r14, %r14
	je	.LBB28_128
# %bb.129:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_130:                             # =>This Inner Loop Header: Depth=1
	movl	48(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	52(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 48(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 52(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_130
# %bb.131:
	testb	$1, %r11b
	je	.LBB28_133
.LBB28_132:
	addl	48(%rsp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, 48(%rsp,%rax,4)
.LBB28_133:
	testq	%r14, %r14
	je	.LBB28_134
# %bb.135:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_136:                             # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edi
	addl	%ecx, %edi
	movl	48(%rsp,%rax,4), %r8d
	movl	52(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	subl	%edi, %r8d
	setb	%r10b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 16(%rsp,%rax,4)
	movl	4(%r15,%rax,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %r9d
	setb	%r8b
	testl	%edi, %edi
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%r9d, 20(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_136
# %bb.137:
	testb	$1, %r11b
	je	.LBB28_139
.LBB28_138:
	movl	48(%rsp,%rax,4), %edx
	movl	(%r15,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %edx
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%edx, 16(%rsp,%rax,4)
	movl	%r8d, %ecx
.LBB28_139:
	testl	%ecx, %ecx
	je	.LBB28_146
# %bb.140:
	testq	%r14, %r14
	je	.LBB28_141
# %bb.142:
	movl	%r11d, %edx
	andl	$126, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_143:                             # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	20(%rsp,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 16(%rsp,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 20(%rsp,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB28_143
# %bb.144:
	testb	$1, %r11b
	je	.LBB28_146
.LBB28_145:
	addl	16(%rsp,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, 16(%rsp,%rax,4)
.LBB28_146:
	leaq	16(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rdi, %rsi
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	testq	%r14, %r14
	je	.LBB28_147
# %bb.148:
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%edx, %r10d
	andl	$126, %r10d
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_149:                             # =>This Inner Loop Header: Depth=1
	movl	16(%rsp,%rax,4), %edi
	movl	(%r12,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, (%r12,%rax,4)
	movl	20(%rsp,%rax,4), %edi
	movl	4(%r12,%rax,4), %r8d
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	subl	%r8d, %edi
	setb	%r9b
	testl	%r8d, %r8d
	cmovnel	%esi, %ecx
	orl	%r9d, %ecx
	movl	%edi, 4(%r12,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %r10
	jne	.LBB28_149
# %bb.150:
	testb	$1, %dl
	je	.LBB28_152
.LBB28_151:
	movl	16(%rsp,%rax,4), %r9d
	movl	(%r12,%rax,4), %esi
	addl	%ecx, %esi
	xorl	%edi, %edi
	subl	%esi, %r9d
	setb	%dil
	xorl	%r8d, %r8d
	testl	%esi, %esi
	cmovel	%ecx, %r8d
	orl	%edi, %r8d
	movl	%r9d, (%r12,%rax,4)
	movl	%r8d, %ecx
.LBB28_152:
	testl	%ecx, %ecx
	je	.LBB28_159
# %bb.153:
	testq	%r14, %r14
	je	.LBB28_154
# %bb.155:
	movl	%edx, %r11d
	andl	$126, %r11d
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB28_156:                             # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %edi
	leal	(%rdi,%rcx), %r8d
	addl	4(%rbx,%rax,4), %r8d
	movl	4(%r12,%rax,4), %r9d
	xorl	%r10d, %r10d
	cmpl	%edi, %r8d
	setb	%r10b
	cmovnel	%esi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, (%r12,%rax,4)
	leal	(%r9,%rcx), %edi
	addl	8(%rbx,%rax,4), %edi
	xorl	%r8d, %r8d
	cmpl	%r9d, %edi
	setb	%r8b
	cmovnel	%esi, %ecx
	orl	%r8d, %ecx
	movl	%edi, 4(%r12,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %r11
	jne	.LBB28_156
# %bb.157:
	testb	$1, %dl
	je	.LBB28_159
.LBB28_158:
	addl	(%r12,%rax,4), %ecx
	addl	4(%rbx,%rax,4), %ecx
	movl	%ecx, (%r12,%rax,4)
.LBB28_159:
	shll	$2, %edx
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	memcpy@PLT
	jmp	.LBB28_160
.LBB28_108:
	leaq	48(%rsp), %r14
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	leaq	80(%rsp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
	leaq	16(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast
.LBB28_160:
	addq	$120, %rsp
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
.LBB28_2:
	.cfi_def_cfa_offset 176
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testb	$1, %r11b
	jne	.LBB28_6
	jmp	.LBB28_7
.LBB28_80:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r11b
	jne	.LBB28_84
	jmp	.LBB28_85
.LBB28_93:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_97
	jmp	.LBB28_98
.LBB28_106:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	8(%rsp), %r11                   # 8-byte Reload
	testb	$1, %r11b
	jne	.LBB28_112
	jmp	.LBB28_113
.LBB28_121:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	8(%rsp), %r11                   # 8-byte Reload
	testb	$1, %r11b
	jne	.LBB28_125
	jmp	.LBB28_126
.LBB28_134:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_138
	jmp	.LBB28_139
.LBB28_147:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	testb	$1, %dl
	jne	.LBB28_151
	jmp	.LBB28_152
.LBB28_35:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testb	$1, %r11b
	jne	.LBB28_39
	jmp	.LBB28_40
.LBB28_48:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_52
	jmp	.LBB28_53
.LBB28_61:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	8(%rsp), %r10                   # 8-byte Reload
	testb	$1, %r10b
	jne	.LBB28_65
	jmp	.LBB28_66
.LBB28_9:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_13
	jmp	.LBB28_14
.LBB28_87:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_91
	jmp	.LBB28_92
.LBB28_100:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_104
	jmp	.LBB28_105
.LBB28_115:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_119
	jmp	.LBB28_120
.LBB28_128:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_132
	jmp	.LBB28_133
.LBB28_141:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_145
	jmp	.LBB28_146
.LBB28_154:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	.LBB28_158
	jmp	.LBB28_159
.LBB28_42:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_46
	jmp	.LBB28_47
.LBB28_55:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	testb	$1, %r11b
	jne	.LBB28_59
	jmp	.LBB28_60
.Lfunc_end28:
	.size	XYcZ_addC, .Lfunc_end28-XYcZ_addC
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
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
	jle	.LBB29_8
# %bb.1:
	movzbl	%r8b, %r11d
	cmpl	$1, %r11d
	jne	.LBB29_3
# %bb.2:
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.LBB29_5
.LBB29_3:
	movl	%r11d, %ebx
	andl	$-2, %ebx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %r15d
	leal	(%r15,%r10), %ebp
	addl	36(%rcx,%rax,4), %ebp
	xorl	%r12d, %r12d
	cmpl	%r15d, %ebp
	cmovnel	%r14d, %r10d
	setb	%r12b
	orl	%r12d, %r10d
	movl	%ebp, (%rsi,%rax,4)
	movl	4(%rdi,%rax,4), %r15d
	leal	(%r15,%r10), %ebp
	addl	40(%rcx,%rax,4), %ebp
	xorl	%r12d, %r12d
	cmpl	%r15d, %ebp
	setb	%r12b
	cmovnel	%r14d, %r10d
	orl	%r12d, %r10d
	movl	%ebp, 4(%rsi,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rbx
	jne	.LBB29_4
.LBB29_5:
	testb	$1, %r11b
	je	.LBB29_7
# %bb.6:
	movl	(%rdi,%rax,4), %edi
	leal	(%rdi,%r10), %r11d
	addl	36(%rcx,%rax,4), %r11d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	cmpl	%edi, %r11d
	cmovel	%r10d, %ebx
	setb	%bpl
	orl	%ebp, %ebx
	movl	%r11d, (%rsi,%rax,4)
	movl	%ebx, %r10d
.LBB29_7:
	movl	$1, %eax
	testl	%r10d, %r10d
	jne	.LBB29_10
.LBB29_8:
	movsbl	%r8b, %edi
	shll	$5, %edi
	xorl	%eax, %eax
	cmpl	%r9d, %edi
	jle	.LBB29_10
# %bb.9:
	movl	%r9d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rsi,%rax,4), %edi
	xorl	%eax, %eax
	btl	%r9d, %edi
	setb	%al
.LBB29_10:
	testb	%r8b, %r8b
	jle	.LBB29_17
# %bb.11:
	movzbl	%r8b, %edi
	cmpl	$1, %edi
	jne	.LBB29_13
# %bb.12:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB29_15
.LBB29_13:
	movl	%edi, %r10d
	andl	$-2, %r10d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB29_14:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r8,4), %ebx
	leal	(%rbx,%r9), %ebp
	addl	36(%rcx,%r8,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	cmovnel	%r11d, %r9d
	setb	%r14b
	orl	%r14d, %r9d
	movl	%ebp, (%rdx,%r8,4)
	movl	4(%rsi,%r8,4), %ebx
	leal	(%rbx,%r9), %ebp
	addl	40(%rcx,%r8,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	setb	%r14b
	cmovnel	%r11d, %r9d
	orl	%r14d, %r9d
	movl	%ebp, 4(%rdx,%r8,4)
	addq	$2, %r8
	cmpq	%r8, %r10
	jne	.LBB29_14
.LBB29_15:
	testb	$1, %dil
	je	.LBB29_17
# %bb.16:
	addl	(%rsi,%r8,4), %r9d
	addl	36(%rcx,%r8,4), %r9d
	movl	%r9d, (%rdx,%r8,4)
.LBB29_17:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	regularize_k, .Lfunc_end29-regularize_k
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
	movq	%rsp, %rax
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movswl	2(%rdx), %eax
	leal	31(%rax), %edx
	leal	62(%rax), %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$5, %ecx
	testb	%cl, %cl
	jle	.LBB30_9
# %bb.1:
	movzbl	%cl, %r8d
	cmpl	$1, %r8d
	jne	.LBB30_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	.LBB30_5
.LBB30_3:
	movl	%r8d, %r9d
	andl	$-2, %r9d
	xorl	%r10d, %r10d
	xorl	%edx, %edx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rdx,4), %r11d
	leal	(%r11,%rdi), %ebp
	addl	36(%r14,%rdx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r11d, %ebp
	cmovnel	%r10d, %edi
	setb	%r15b
	orl	%r15d, %edi
	movl	%ebp, (%rsp,%rdx,4)
	movl	4(%rsi,%rdx,4), %r11d
	leal	(%r11,%rdi), %ebp
	addl	40(%r14,%rdx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r11d, %ebp
	setb	%r15b
	cmovnel	%r10d, %edi
	orl	%r15d, %edi
	movl	%ebp, 4(%rsp,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %r9
	jne	.LBB30_4
.LBB30_5:
	testb	$1, %r8b
	je	.LBB30_7
# %bb.6:
	movl	(%rsi,%rdx,4), %esi
	leal	(%rsi,%rdi), %r8d
	addl	36(%r14,%rdx,4), %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	cmpl	%esi, %r8d
	cmovel	%edi, %r9d
	setb	%r10b
	orl	%r10d, %r9d
	movl	%r8d, (%rsp,%rdx,4)
	movl	%r9d, %edi
.LBB30_7:
	testl	%edi, %edi
	je	.LBB30_9
# %bb.8:
	xorl	%edx, %edx
	jmp	.LBB30_11
.LBB30_9:
	movsbl	%cl, %esi
	shll	$5, %esi
	movl	$1, %edx
	cmpl	%eax, %esi
	jle	.LBB30_11
# %bb.10:
	movl	%eax, %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	xorl	%edx, %edx
	btl	%eax, %esi
	setae	%dl
.LBB30_11:
	testb	%cl, %cl
	jle	.LBB30_18
# %bb.12:
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_14
# %bb.13:
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.LBB30_16
.LBB30_14:
	movl	%ecx, %r8d
	andl	$-2, %r8d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB30_15:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rsi,4), %r10d
	leal	(%r10,%rdi), %r11d
	addl	36(%r14,%rsi,4), %r11d
	movl	4(%rsp,%rsi,4), %r15d
	xorl	%ebp, %ebp
	cmpl	%r10d, %r11d
	setb	%bpl
	cmovnel	%r9d, %edi
	orl	%ebp, %edi
	movl	%r11d, 48(%rsp,%rsi,4)
	leal	(%r15,%rdi), %r10d
	addl	40(%r14,%rsi,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r15d, %r10d
	setb	%r11b
	cmovnel	%r9d, %edi
	orl	%r11d, %edi
	movl	%r10d, 52(%rsp,%rsi,4)
	addq	$2, %rsi
	cmpq	%rsi, %r8
	jne	.LBB30_15
.LBB30_16:
	testb	$1, %cl
	je	.LBB30_18
# %bb.17:
	addl	(%rsp,%rsi,4), %edi
	addl	36(%r14,%rsi,4), %edi
	movl	%edi, 48(%rsp,%rsi,4)
.LBB30_18:
	leaq	68(%r14), %rsi
	movq	32(%rsp,%rdx,8), %rdx
	incl	%eax
	movswl	%ax, %r8d
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r9
	callq	EccPoint_mult
	movzbl	(%r14), %ecx
	addb	%cl, %cl
	testb	%cl, %cl
	jle	.LBB30_26
# %bb.19:
	movzbl	%cl, %eax
	cmpb	$8, %cl
	jae	.LBB30_21
# %bb.20:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB30_24
.LBB30_21:
	movl	%eax, %ecx
	andl	$120, %ecx
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB30_22:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx,%rdx,4), %xmm2
	por	%xmm2, %xmm0
	movdqu	16(%rbx,%rdx,4), %xmm2
	por	%xmm2, %xmm1
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB30_22
# %bb.23:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %edx
	cmpq	%rax, %rcx
	je	.LBB30_25
	.p2align	4, 0x90
.LBB30_24:                              # =>This Inner Loop Header: Depth=1
	orl	(%rbx,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB30_24
.LBB30_25:
	xorl	%r15d, %r15d
	testl	%edx, %edx
	setne	%r15b
.LBB30_26:
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
.Lfunc_end30:
	.size	EccPoint_compute_public_key, .Lfunc_end30-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	4, 0x90
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB31_3
# %bb.1:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
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
	jl	.LBB31_2
.LBB31_3:
	retq
.Lfunc_end31:
	.size	uECC_vli_nativeToBytes, .Lfunc_end31-uECC_vli_nativeToBytes
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
	jle	.LBB32_2
# %bb.1:
	movzbl	%al, %edx
	shll	$2, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB32_2:
	testl	%ebx, %ebx
	jle	.LBB32_5
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB32_4:                               # =>This Inner Loop Header: Depth=1
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
	jl	.LBB32_4
.LBB32_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	uECC_vli_bytesToNative, .Lfunc_end32-uECC_vli_bytesToNative
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	%r12b, %r13d
	leal	-1(%r13), %eax
	movzbl	%al, %ecx
	cmpb	$-1, %cl
	movl	$255, %eax
	cmovll	%ecx, %eax
	incb	%al
	movl	%r13d, %ecx
	incb	%cl
	leaq	-1(%r13), %rdi
	.p2align	4, 0x90
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	testb	%dil, %dil
	js	.LBB33_5
# %bb.2:                                #   in Loop: Header=BB33_1 Depth=1
	movl	%edi, %esi
	andl	$127, %esi
	decb	%cl
	decq	%rdi
	cmpl	$0, (%r14,%rsi,4)
	je	.LBB33_1
# %bb.3:
	xorl	%r15d, %r15d
	movl	$0, %eax
	testb	%cl, %cl
	je	.LBB33_4
.LBB33_6:
	movsbl	%cl, %eax
	decl	%eax
	movsbq	%cl, %rcx
	movl	-4(%r14,%rcx,4), %edi
	xorl	%ecx, %ecx
	testl	%edi, %edi
	je	.LBB33_9
# %bb.7:
	movl	%edi, %esi
	.p2align	4, 0x90
.LBB33_8:                               # =>This Inner Loop Header: Depth=1
	shrl	%esi
	incl	%ecx
	cmpl	$1, %edi
	movl	%esi, %edi
	ja	.LBB33_8
.LBB33_9:
	shll	$5, %eax
	addl	%ecx, %eax
	cmpq	$0, g_rng_function(%rip)
	jne	.LBB33_10
	jmp	.LBB33_38
.LBB33_5:
	movl	%eax, %ecx
	xorl	%r15d, %r15d
	movl	$0, %eax
	testb	%cl, %cl
	jne	.LBB33_6
.LBB33_4:
	cmpq	$0, g_rng_function(%rip)
	je	.LBB33_38
.LBB33_10:
	movsbl	%r12b, %ecx
	leal	(,%rcx,4), %esi
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	shll	$5, %ecx
	subl	%eax, %ecx
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shrl	%cl, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movsbq	%r12b, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testb	%r12b, %r12b
	jle	.LBB33_32
# %bb.11:
	movl	%r13d, %ebp
	andl	$124, %ebp
	movl	%r13d, %r15d
	andl	$126, %r15d
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	shll	$2, %ebp
	xorl	%eax, %eax
	jmp	.LBB33_14
	.p2align	4, 0x90
.LBB33_12:                              #   in Loop: Header=BB33_14 Depth=1
	testl	%eax, %eax
	sete	%al
	testl	%ecx, %ecx
	sete	%cl
	addb	%al, %al
	orb	%cl, %al
	cmpb	$2, %al
	movl	12(%rsp), %eax                  # 4-byte Reload
	je	.LBB33_37
.LBB33_13:                              #   in Loop: Header=BB33_14 Depth=1
	incl	%eax
	cmpl	$64, %eax
	je	.LBB33_36
.LBB33_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_18 Depth 2
                                        #     Child Loop BB33_20 Depth 2
                                        #     Child Loop BB33_23 Depth 2
                                        #     Child Loop BB33_29 Depth 2
                                        #     Child Loop BB33_31 Depth 2
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	%rbx, %rdi
	movl	8(%rsp), %esi                   # 4-byte Reload
	callq	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.LBB33_36
# %bb.15:                               #   in Loop: Header=BB33_14 Depth=1
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	andl	%eax, -4(%rbx,%rcx,4)
	cmpb	$4, %r12b
	jae	.LBB33_17
# %bb.16:                               #   in Loop: Header=BB33_14 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.LBB33_20
	.p2align	4, 0x90
.LBB33_17:                              #   in Loop: Header=BB33_14 Depth=1
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB33_18:                              #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rbx,%rax), %xmm1
	por	%xmm1, %xmm0
	addq	$16, %rax
	cmpq	%rax, %rbp
	jne	.LBB33_18
# %bb.19:                               #   in Loop: Header=BB33_14 Depth=1
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rcx
	cmpq	%r13, %rsi
	movl	$0, %r10d
	je	.LBB33_21
	.p2align	4, 0x90
.LBB33_20:                              #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	(%rbx,%rcx,4), %eax
	incq	%rcx
	cmpq	%rcx, %r13
	jne	.LBB33_20
.LBB33_21:                              #   in Loop: Header=BB33_14 Depth=1
	testl	%eax, %eax
	movl	12(%rsp), %eax                  # 4-byte Reload
	je	.LBB33_13
# %bb.22:                               #   in Loop: Header=BB33_14 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	cmpb	$1, %r12b
	je	.LBB33_24
	.p2align	4, 0x90
.LBB33_23:                              #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rcx,4), %r8d
	movl	(%rbx,%rcx,4), %esi
	addl	%eax, %esi
	xorl	%edi, %edi
	subl	%esi, %r8d
	setb	%dil
	testl	%esi, %esi
	cmovnel	%r10d, %eax
	orl	%edi, %eax
	movl	%r8d, 32(%rsp,%rcx,4)
	movl	4(%r14,%rcx,4), %r8d
	movl	4(%rbx,%rcx,4), %esi
	addl	%eax, %esi
	xorl	%edi, %edi
	subl	%esi, %r8d
	setb	%dil
	testl	%esi, %esi
	cmovnel	%r10d, %eax
	orl	%edi, %eax
	movl	%r8d, 36(%rsp,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %r15
	jne	.LBB33_23
.LBB33_24:                              #   in Loop: Header=BB33_14 Depth=1
	testb	$1, %r13b
	je	.LBB33_26
# %bb.25:                               #   in Loop: Header=BB33_14 Depth=1
	movl	(%r14,%rcx,4), %r8d
	movl	(%rbx,%rcx,4), %esi
	addl	%eax, %esi
	xorl	%edi, %edi
	subl	%esi, %r8d
	setb	%dil
	testl	%esi, %esi
	cmovnel	%r10d, %eax
	orl	%edi, %eax
	movl	%r8d, 32(%rsp,%rcx,4)
.LBB33_26:                              #   in Loop: Header=BB33_14 Depth=1
	cmpb	$4, %r12b
	jae	.LBB33_28
# %bb.27:                               #   in Loop: Header=BB33_14 Depth=1
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB33_31
	.p2align	4, 0x90
.LBB33_28:                              #   in Loop: Header=BB33_14 Depth=1
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB33_29:                              #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	por	32(%rsp,%rcx), %xmm0
	addq	$16, %rcx
	cmpq	%rcx, %rbp
	jne	.LBB33_29
# %bb.30:                               #   in Loop: Header=BB33_14 Depth=1
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	por	%xmm1, %xmm0
	movd	%xmm0, %ecx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, %rsi
	cmpq	%r13, %rdi
	je	.LBB33_12
	.p2align	4, 0x90
.LBB33_31:                              #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	32(%rsp,%rsi,4), %ecx
	incq	%rsi
	cmpq	%rsi, %r13
	jne	.LBB33_31
	jmp	.LBB33_12
.LBB33_36:
	xorl	%r15d, %r15d
	jmp	.LBB33_38
.LBB33_32:
	movl	$64, %ebp
	.p2align	4, 0x90
.LBB33_33:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	8(%rsp), %esi                   # 4-byte Reload
	callq	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.LBB33_38
# %bb.34:                               #   in Loop: Header=BB33_33 Depth=1
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	andl	%eax, -4(%rbx,%rcx,4)
	decl	%ebp
	jne	.LBB33_33
	jmp	.LBB33_38
.LBB33_37:
	movl	$1, %r15d
.LBB33_38:
	movl	%r15d, %eax
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
.Lfunc_end33:
	.size	uECC_generate_random_int, .Lfunc_end33-uECC_generate_random_int
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
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	(%rsi), %r15d
	leal	(%r15,%r15), %edx
	movl	$-1, %eax
	testb	%dl, %dl
	jle	.LBB34_25
# %bb.1:
	movzbl	%dl, %ecx
	cmpb	$8, %dl
	jae	.LBB34_3
# %bb.2:
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB34_6
.LBB34_3:
	movl	%ecx, %edx
	andl	$120, %edx
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%r8,4), %xmm2
	por	%xmm2, %xmm0
	movdqu	16(%rdi,%r8,4), %xmm2
	por	%xmm2, %xmm1
	addq	$8, %r8
	cmpq	%r8, %rdx
	jne	.LBB34_4
# %bb.5:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %r8d
	cmpq	%rcx, %rdx
	je	.LBB34_7
	.p2align	4, 0x90
.LBB34_6:                               # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rdx,4), %r8d
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	.LBB34_6
.LBB34_7:
	testl	%r8d, %r8d
	je	.LBB34_25
# %bb.8:
	movsbq	%r15b, %rcx
	leaq	-1(%r15), %rdx
	movl	$-2, %eax
	.p2align	4, 0x90
.LBB34_9:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB34_25
# %bb.10:                               #   in Loop: Header=BB34_9 Depth=1
	movl	%edx, %r9d
	andl	$127, %r9d
	movl	4(%rsi,%r9,4), %r8d
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB34_12
# %bb.11:                               #   in Loop: Header=BB34_9 Depth=1
	decq	%rdx
	cmpl	%r9d, %r8d
	jae	.LBB34_9
	jmp	.LBB34_25
.LBB34_12:
	leaq	(%rdi,%rcx,4), %rdx
	leaq	-1(%r15), %rcx
	.p2align	4, 0x90
.LBB34_13:                              # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	js	.LBB34_25
# %bb.14:                               #   in Loop: Header=BB34_13 Depth=1
	movl	%ecx, %r9d
	andl	$127, %r9d
	movl	4(%rsi,%r9,4), %r8d
	movl	(%rdx,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB34_16
# %bb.15:                               #   in Loop: Header=BB34_13 Depth=1
	decq	%rcx
	cmpl	%r9d, %r8d
	jae	.LBB34_13
	jmp	.LBB34_25
.LBB34_16:
	leaq	32(%rsp), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	movq	%rsi, %r14
	movq	%rdx, %rsi
	movq	%r14, %rcx
	callq	uECC_vli_modMult_fast
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*176(%r14)
	decb	%r15b
	js	.LBB34_24
# %bb.17:
	movzbl	%r15b, %r8d
	xorl	%esi, %esi
	cmpb	$7, %r8b
	jae	.LBB34_19
# %bb.18:
	movq	%r8, %rax
	jmp	.LBB34_22
.LBB34_19:
	leaq	1(%r8), %rcx
	movl	%ecx, %edx
	andl	$248, %edx
	movq	%r8, %rax
	subq	%rdx, %rax
	movq	%rdx, %rsi
	negq	%rsi
	leaq	(%rsp,%r8,4), %rdi
	addq	$20, %rdi
	leaq	(%rsp,%r8,4), %r8
	addq	$-12, %r8
	pxor	%xmm0, %xmm0
	xorl	%r9d, %r9d
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB34_20:                              # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdi,%r9,4), %xmm2
	movdqu	(%rdi,%r9,4), %xmm3
	movdqu	-16(%r8,%r9,4), %xmm4
	movdqu	(%r8,%r9,4), %xmm5
	pshufd	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0]
	pshufd	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0]
	pxor	%xmm3, %xmm5
	por	%xmm5, %xmm0
	pshufd	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0]
	pshufd	$27, %xmm4, %xmm3               # xmm3 = xmm4[3,2,1,0]
	pxor	%xmm2, %xmm3
	por	%xmm3, %xmm1
	addq	$-8, %r9
	cmpq	%r9, %rsi
	jne	.LBB34_20
# %bb.21:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %esi
	cmpq	%rdx, %rcx
	je	.LBB34_23
	.p2align	4, 0x90
.LBB34_22:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rax,4), %ecx
	xorl	32(%rsp,%rax,4), %ecx
	orl	%ecx, %esi
	addq	$-1, %rax
	jb	.LBB34_22
.LBB34_23:
	movl	$-3, %eax
	testl	%esi, %esi
	jne	.LBB34_25
.LBB34_24:
	xorl	%eax, %eax
.LBB34_25:
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	uECC_valid_point, .Lfunc_end34-uECC_valid_point
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
	movq	%rdi, %r15
	movsbl	1(%rsi), %r12d
	movzbl	%r12b, %r13d
	leal	3(%r12), %eax
	leal	6(%r12), %ebp
	testw	%ax, %ax
	cmovnsl	%eax, %ebp
	movswl	%bp, %r14d
	shrl	$2, %ebp
	sarl	$2, %r14d
	testb	%bpl, %bpl
	jle	.LBB35_2
# %bb.1:
	movzbl	%r14b, %edx
	shll	$2, %edx
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB35_2:
	movslq	%r12d, %r11
	testb	%r13b, %r13b
	jle	.LBB35_10
# %bb.3:
	cmpl	$1, %r13d
	jne	.LBB35_5
# %bb.4:
	xorl	%eax, %eax
	xorl	%edx, %edx
	testb	$1, %r13b
	jne	.LBB35_9
	jmp	.LBB35_10
.LBB35_5:
	leaq	-2(%r11), %rdx
	leal	-16(,%r12,8), %esi
	leaq	1(%r15), %rdi
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	leaq	-1(%r11), %r8
	movl	%r13d, %r9d
	andl	$126, %r9d
	negq	%r9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB35_6:                               # =>This Inner Loop Header: Depth=1
	leal	(%r8,%rax), %r10d
	movzbl	-1(%rdi), %r11d
	leal	8(%rsi), %ecx
	andb	$24, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	andl	$-4, %r10d
	orl	%r11d, 16(%rsp,%r10)
	leal	(%rdx,%rax), %r10d
	movzbl	(%rdi), %r11d
	movl	%esi, %ecx
	andb	$24, %cl
	shll	%cl, %r11d
	andl	$-4, %r10d
	orl	%r11d, 16(%rsp,%r10)
	addq	$-2, %rax
	addl	$-16, %esi
	addq	$2, %rdi
	cmpq	%rax, %r9
	jne	.LBB35_6
# %bb.7:
	negq	%rax
	movl	%eax, %edx
	movq	8(%rsp), %r11                   # 8-byte Reload
	testb	$1, %r13b
	je	.LBB35_10
.LBB35_9:
	notl	%edx
	addl	%r12d, %edx
	movzbl	(%r15,%rax), %eax
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	andl	$-4, %edx
	orl	%eax, 16(%rsp,%rdx)
.LBB35_10:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movsbq	(%rbx), %rax
	leaq	(%rsp,%rax,4), %r15
	addq	$16, %r15
	testb	%bpl, %bpl
	jle	.LBB35_12
# %bb.11:
	movzbl	%r14b, %edx
	shll	$2, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r11, %r14
	callq	memset@PLT
	movq	%r14, %r11
.LBB35_12:
	testb	%r13b, %r13b
	jle	.LBB35_20
# %bb.13:
	cmpb	$1, %r11b
	jne	.LBB35_15
# %bb.14:
	movl	$-1, %edx
	xorl	%eax, %eax
	testb	$1, %r13b
	jne	.LBB35_19
	jmp	.LBB35_20
.LBB35_15:
	leaq	1(%r11), %rdx
	leal	-16(,%r12,8), %esi
	movl	%r13d, %edi
	andl	$126, %edi
	negq	%rdi
	xorl	%eax, %eax
	movq	8(%rsp), %r8                    # 8-byte Reload
	.p2align	4, 0x90
.LBB35_16:                              # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rax), %r9d
	addl	$-2, %r9d
	movzbl	-1(%r8,%rdx), %r10d
	leal	8(%rsi), %ecx
	andb	$24, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	andl	$-4, %r9d
	orl	%r10d, (%r15,%r9)
	leal	(%rdx,%rax), %r9d
	addl	$-3, %r9d
	movzbl	(%r8,%rdx), %r10d
	movl	%esi, %ecx
	andb	$24, %cl
	shll	%cl, %r10d
	andl	$-4, %r9d
	orl	%r10d, (%r15,%r9)
	addq	$-2, %rax
	addl	$-16, %esi
	addq	$2, %r8
	cmpq	%rax, %rdi
	jne	.LBB35_16
# %bb.17:
	leal	-1(%rax), %edx
	negq	%rax
	testb	$1, %r13b
	je	.LBB35_20
.LBB35_19:
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%r11, %rcx
	addl	%r12d, %edx
	movzbl	(%rcx,%rax), %eax
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	andl	$-4, %edx
	orl	%eax, (%r15,%rdx)
.LBB35_20:
	movl	76(%rsp), %eax
	cmpl	128(%rbx), %eax
	jne	.LBB35_36
# %bb.21:
	movl	72(%rsp), %eax
	cmpl	124(%rbx), %eax
	jne	.LBB35_36
# %bb.22:
	movl	68(%rsp), %eax
	cmpl	120(%rbx), %eax
	jne	.LBB35_36
# %bb.23:
	movl	64(%rsp), %eax
	cmpl	116(%rbx), %eax
	jne	.LBB35_36
# %bb.24:
	movl	60(%rsp), %eax
	cmpl	112(%rbx), %eax
	jne	.LBB35_36
# %bb.25:
	movl	56(%rsp), %eax
	cmpl	108(%rbx), %eax
	jne	.LBB35_36
# %bb.26:
	movl	52(%rsp), %eax
	cmpl	104(%rbx), %eax
	jne	.LBB35_36
# %bb.27:
	movl	48(%rsp), %eax
	cmpl	100(%rbx), %eax
	jne	.LBB35_36
# %bb.28:
	movl	44(%rsp), %eax
	cmpl	96(%rbx), %eax
	jne	.LBB35_36
# %bb.29:
	movl	40(%rsp), %eax
	cmpl	92(%rbx), %eax
	jne	.LBB35_36
# %bb.30:
	movl	36(%rsp), %eax
	cmpl	88(%rbx), %eax
	jne	.LBB35_36
# %bb.31:
	movl	32(%rsp), %eax
	cmpl	84(%rbx), %eax
	jne	.LBB35_36
# %bb.32:
	movl	28(%rsp), %eax
	cmpl	80(%rbx), %eax
	jne	.LBB35_36
# %bb.33:
	movl	24(%rsp), %eax
	cmpl	76(%rbx), %eax
	jne	.LBB35_36
# %bb.34:
	movl	20(%rsp), %eax
	cmpl	72(%rbx), %eax
	jne	.LBB35_36
# %bb.35:
	movl	16(%rsp), %ecx
	movl	$-4, %eax
	cmpl	68(%rbx), %ecx
	je	.LBB35_37
.LBB35_36:
	leaq	16(%rsp), %rdi
	movq	%rbx, %rsi
	callq	uECC_valid_point
.LBB35_37:
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
.Lfunc_end35:
	.size	uECC_valid_public_key, .Lfunc_end35-uECC_valid_public_key
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movswl	2(%rdx), %r12d
	leal	7(%r12), %eax
	leal	14(%r12), %r13d
	testl	%eax, %eax
	cmovnsl	%eax, %r13d
	sarl	$3, %r13d
	leal	3(%r13), %eax
	leal	6(%r13), %ecx
	testw	%ax, %ax
	cmovnsl	%eax, %ecx
	movq	%rdi, %r15
	movswl	%cx, %eax
	shrl	$2, %eax
	testb	%al, %al
	jle	.LBB36_2
# %bb.1:
	movzbl	%al, %edx
	shll	$2, %edx
	movq	%rsp, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB36_2:
	testw	%r12w, %r12w
	jle	.LBB36_5
# %bb.3:
	xorl	%eax, %eax
	movb	$1, %dl
	.p2align	4, 0x90
.LBB36_4:                               # =>This Inner Loop Header: Depth=1
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
	jg	.LBB36_4
.LBB36_5:
	leal	31(%r12), %eax
	addl	$62, %r12d
	testl	%eax, %eax
	cmovnsl	%eax, %r12d
	sarl	$5, %r12d
	testb	%r12b, %r12b
	jle	.LBB36_8
# %bb.6:
	movzbl	%r12b, %eax
	cmpl	$8, %eax
	jae	.LBB36_9
# %bb.7:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB36_12
.LBB36_9:
	movl	%eax, %ecx
	andl	$-8, %ecx
	leal	(,%rax,4), %edx
	andl	$-32, %edx
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB36_10:                              # =>This Inner Loop Header: Depth=1
	por	(%rsp,%rsi), %xmm0
	por	16(%rsp,%rsi), %xmm1
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB36_10
# %bb.11:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %edx
	cmpq	%rax, %rcx
	je	.LBB36_13
	.p2align	4, 0x90
.LBB36_12:                              # =>This Inner Loop Header: Depth=1
	orl	(%rsp,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB36_12
.LBB36_13:
	testl	%edx, %edx
	je	.LBB36_8
# %bb.14:
	cmpl	$1, %eax
	jne	.LBB36_17
# %bb.15:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB36_19
.LBB36_8:
	xorl	%eax, %eax
	jmp	.LBB36_28
.LBB36_17:
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB36_18:                              # =>This Inner Loop Header: Depth=1
	movl	36(%r14,%rdx,4), %r8d
	movl	(%rsp,%rdx,4), %r9d
	addl	%ecx, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, %r8d
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 32(%rsp,%rdx,4)
	movl	40(%r14,%rdx,4), %r8d
	movl	4(%rsp,%rdx,4), %r9d
	addl	%ecx, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, %r8d
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edi, %ecx
	orl	%r10d, %ecx
	movl	%r8d, 36(%rsp,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB36_18
.LBB36_19:
	testb	$1, %al
	je	.LBB36_21
# %bb.20:
	movl	36(%r14,%rdx,4), %esi
	movl	(%rsp,%rdx,4), %edi
	addl	%ecx, %edi
	xorl	%r8d, %r8d
	subl	%edi, %esi
	setb	%r8b
	xorl	%r9d, %r9d
	testl	%edi, %edi
	cmovel	%ecx, %r9d
	orl	%r8d, %r9d
	movl	%esi, 32(%rsp,%rdx,4)
	movl	%r9d, %ecx
.LBB36_21:
	cmpl	$8, %eax
	jae	.LBB36_23
# %bb.22:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB36_26
.LBB36_23:
	movl	%eax, %edx
	andl	$-8, %edx
	leal	(,%rax,4), %esi
	andl	$-32, %esi
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB36_24:                              # =>This Inner Loop Header: Depth=1
	por	32(%rsp,%rdi), %xmm0
	por	48(%rsp,%rdi), %xmm1
	addq	$32, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB36_24
# %bb.25:
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %esi
	cmpq	%rax, %rdx
	je	.LBB36_27
	.p2align	4, 0x90
.LBB36_26:                              # =>This Inner Loop Header: Depth=1
	orl	32(%rsp,%rdx,4), %esi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB36_26
.LBB36_27:
	testl	%ecx, %ecx
	sete	%cl
	testl	%esi, %esi
	sete	%al
	addb	%cl, %cl
	orb	%al, %cl
	xorl	%eax, %eax
	cmpb	$2, %cl
	je	.LBB36_29
.LBB36_28:
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
.LBB36_29:
	.cfi_def_cfa_offset 160
	leaq	32(%rsp), %rdi
	movq	%rsp, %rsi
	movq	%r14, %rdx
	callq	EccPoint_compute_public_key
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB36_28
# %bb.30:
	movsbl	1(%r14), %edx
	movl	$1, %eax
	testl	%edx, %edx
	jle	.LBB36_28
# %bb.31:
	movzbl	%dl, %esi
	cmpl	$1, %esi
	jne	.LBB36_33
# %bb.32:
	movl	$-1, %ecx
	xorl	%edi, %edi
	jmp	.LBB36_36
.LBB36_33:
	leal	-16(,%rdx,8), %r8d
	movslq	%edx, %r9
	leaq	-2(%r9), %r10
	leaq	1(%rbx), %r11
	decq	%r9
	movl	%esi, %r15d
	andl	$126, %r15d
	negq	%r15
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB36_34:                              # =>This Inner Loop Header: Depth=1
	leal	(%r9,%rdi), %ecx
	andl	$-4, %ecx
	movl	32(%rsp,%rcx), %ebp
	leal	8(%r8), %ecx
	andb	$24, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %ebp
	movb	%bpl, -1(%r11)
	leal	(%r10,%rdi), %ecx
	andl	$-4, %ecx
	movl	32(%rsp,%rcx), %ebp
	movl	%r8d, %ecx
	andb	$24, %cl
	shrl	%cl, %ebp
	movb	%bpl, (%r11)
	addl	$-16, %r8d
	addq	$-2, %rdi
	addq	$2, %r11
	cmpq	%rdi, %r15
	jne	.LBB36_34
# %bb.35:
	leal	-1(%rdi), %ecx
	negq	%rdi
.LBB36_36:
	testb	$1, %sil
	je	.LBB36_38
# %bb.37:
	addl	%edx, %ecx
	movl	%ecx, %edx
	andl	$-4, %edx
	movl	32(%rsp,%rdx), %edx
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movb	%dl, (%rbx,%rdi)
.LBB36_38:
	movsbq	1(%r14), %rdx
	testq	%rdx, %rdx
	jle	.LBB36_28
# %bb.39:
	movsbq	(%r14), %rcx
	leaq	(%rsp,%rcx,4), %rsi
	addq	$32, %rsi
	movzbl	%dl, %r8d
	cmpb	$1, %dl
	jne	.LBB36_41
# %bb.40:
	movl	$-1, %ecx
	xorl	%edi, %edi
	jmp	.LBB36_44
.LBB36_41:
	leal	-16(,%rdx,8), %r9d
	leaq	1(%rdx), %r10
	movl	%r8d, %r11d
	andl	$126, %r11d
	negq	%r11
	xorl	%edi, %edi
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB36_42:                              # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rdi), %ecx
	addl	$-2, %ecx
	andl	$-4, %ecx
	movl	(%rsi,%rcx), %ebp
	leal	8(%r9), %ecx
	andb	$24, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %ebp
	movb	%bpl, -1(%r14,%r10)
	leal	(%r10,%rdi), %ecx
	addl	$-3, %ecx
	andl	$-4, %ecx
	movl	(%rsi,%rcx), %ebp
	movl	%r9d, %ecx
	andb	$24, %cl
	shrl	%cl, %ebp
	movb	%bpl, (%r14,%r10)
	addl	$-16, %r9d
	addq	$-2, %rdi
	addq	$2, %r14
	cmpq	%rdi, %r11
	jne	.LBB36_42
# %bb.43:
	leal	-1(%rdi), %ecx
	negq	%rdi
.LBB36_44:
	testb	$1, %r8b
	je	.LBB36_28
# %bb.45:
	addq	%rdx, %rbx
	addl	%edx, %ecx
	movl	%ecx, %edx
	andl	$-4, %edx
	movl	(%rsi,%rdx), %edx
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movb	%dl, (%rbx,%rdi)
	jmp	.LBB36_28
.Lfunc_end36:
	.size	uECC_compute_public_key, .Lfunc_end36-uECC_compute_public_key
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
