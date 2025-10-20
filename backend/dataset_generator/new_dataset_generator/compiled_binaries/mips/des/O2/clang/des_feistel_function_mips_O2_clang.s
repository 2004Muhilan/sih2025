	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_feistel_function.c"
	.globl	des_feistel                     # -- Begin function des_feistel
	.p2align	2
	.type	des_feistel,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_feistel
des_feistel:                            # @des_feistel
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	des_feistel
$func_end0:
	.size	des_feistel, ($func_end0)-des_feistel
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
