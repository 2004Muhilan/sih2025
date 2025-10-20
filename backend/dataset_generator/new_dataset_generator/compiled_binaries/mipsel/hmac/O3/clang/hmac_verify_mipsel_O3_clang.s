	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     # -- Begin function hmac_verify
	.p2align	2
	.type	hmac_verify,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_verify
hmac_verify:                            # @hmac_verify
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$6, $BB0_4
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 0($4)
	lbu	$3, 0($5)
	addiu	$4, $4, 1
	addiu	$5, $5, 1
	addiu	$6, $6, -1
	xor	$1, $3, $1
	bnez	$6, $BB0_2
	or	$2, $1, $2
# %bb.3:
	andi	$1, $2, 255
	jr	$ra
	sltiu	$2, $1, 1
$BB0_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_verify
$func_end0:
	.size	hmac_verify, ($func_end0)-hmac_verify
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
