	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 # -- Begin function ecc_scalar_mult
	.p2align	2
	.type	ecc_scalar_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_scalar_mult
ecc_scalar_mult:                        # @ecc_scalar_mult
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	move	$2, $4
	sw	$zero, 12($4)
	sw	$zero, 8($4)
	sw	$zero, 4($4)
	jr	$ra
	sw	$zero, 0($4)
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_scalar_mult
$func_end0:
	.size	ecc_scalar_mult, ($func_end0)-ecc_scalar_mult
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
