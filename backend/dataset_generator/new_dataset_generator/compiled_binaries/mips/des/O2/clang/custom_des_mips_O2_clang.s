	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_encrypt
des_encrypt:                            # @des_encrypt
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lwl	$3, 4($4)
	lwr	$3, 7($4)
	lwl	$8, 0($4)
	lwr	$8, 3($4)
	addiu	$4, $zero, 0
	addiu	$7, $zero, 16
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	move	$2, $3
	xor	$1, $8, $3
	andi	$3, $4, 7
	addu	$3, $5, $3
	lbu	$3, 0($3)
	xor	$3, $1, $3
	addiu	$4, $4, 1
	bne	$4, $7, $BB0_1
	move	$8, $2
# %bb.2:
	srl	$1, $3, 24
	srl	$4, $3, 16
	srl	$5, $3, 8
	sb	$3, 7($6)
	sb	$5, 6($6)
	sb	$4, 5($6)
	sb	$1, 4($6)
	sb	$2, 3($6)
	srl	$1, $2, 8
	sb	$1, 2($6)
	srl	$1, $2, 16
	sb	$1, 1($6)
	srl	$1, $2, 24
	jr	$ra
	sb	$1, 0($6)
	.set	at
	.set	macro
	.set	reorder
	.end	des_encrypt
$func_end0:
	.size	des_encrypt, ($func_end0)-des_encrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
