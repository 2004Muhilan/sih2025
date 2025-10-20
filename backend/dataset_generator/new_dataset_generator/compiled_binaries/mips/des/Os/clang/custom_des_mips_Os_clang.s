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
	addiu	$3, $zero, 0
	addiu	$7, $zero, 56
	addiu	$8, $zero, -8
	addiu	$2, $zero, 0
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 0($4)
	sllv	$9, $1, $7
	xori	$10, $7, 31
	srl	$1, $1, 1
	srlv	$1, $1, $10
	andi	$10, $7, 32
	movn	$1, $9, $10
	or	$3, $1, $3
	movn	$9, $zero, $10
	or	$2, $9, $2
	addiu	$7, $7, -8
	bne	$7, $8, $BB0_1
	addiu	$4, $4, 1
# %bb.2:
	addiu	$7, $zero, 0
	addiu	$8, $zero, 16
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	move	$4, $2
	xor	$1, $3, $2
	andi	$2, $7, 7
	addu	$2, $5, $2
	lbu	$2, 0($2)
	xor	$2, $1, $2
	addiu	$7, $7, 1
	bne	$7, $8, $BB0_3
	move	$3, $4
# %bb.4:
	addiu	$3, $zero, 56
	sll	$5, $4, 1
	addiu	$7, $zero, -8
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	srlv	$1, $2, $3
	xori	$8, $3, 31
	sllv	$8, $5, $8
	or	$1, $8, $1
	srlv	$8, $4, $3
	andi	$9, $3, 32
	movn	$1, $8, $9
	sb	$1, 0($6)
	addiu	$3, $3, -8
	bne	$3, $7, $BB0_5
	addiu	$6, $6, 1
# %bb.6:
	jr	$ra
	nop
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
