	.text
	.file	"des_key_schedule.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function des_key_schedule
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI0_1:
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI0_2:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.text
	.globl	des_key_schedule
	.type	des_key_schedule,@function
des_key_schedule:                       # @des_key_schedule
	.cfi_startproc
# %bb.0:
	movq	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0               # xmm0 = xmm0[0,1,0,1]
	movdqa	.LCPI0_0(%rip), %xmm1           # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%eax, %eax
	movapd	.LCPI0_1(%rip), %xmm2           # xmm2 = [65535,65535,65535,0,65535,65535,65535,0]
	movdqa	.LCPI0_2(%rip), %xmm3           # xmm3 = [2,2]
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm1, %xmm4
	psllq	$2, %xmm4
	movdqa	%xmm0, %xmm5
	psrlq	%xmm4, %xmm5
	pshufd	$238, %xmm4, %xmm4              # xmm4 = xmm4[2,3,2,3]
	movdqa	%xmm0, %xmm6
	psrlq	%xmm4, %xmm6
	movsd	%xmm5, %xmm6                    # xmm6 = xmm5[0],xmm6[1]
	andpd	%xmm2, %xmm6
	movupd	%xmm6, (%rsi,%rax,8)
	addq	$2, %rax
	paddq	%xmm3, %xmm1
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
