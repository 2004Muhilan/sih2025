	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                # -- Begin function rsa_miller_rabin
	.p2align	2
	.type	rsa_miller_rabin,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_miller_rabin
rsa_miller_rabin:                       # @rsa_miller_rabin
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	sltiu	$1, $4, 2
	movn	$1, $zero, $5
	bnez	$1, $BB0_3
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$1, $zero, -2
	and	$1, $4, $1
	xori	$1, $1, 2
	or	$1, $1, $5
	beqz	$1, $BB0_3
	addiu	$2, $zero, 1
# %bb.2:
	andi	$2, $4, 1
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
$func_end0:
	.size	rsa_miller_rabin, ($func_end0)-rsa_miller_rabin
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
