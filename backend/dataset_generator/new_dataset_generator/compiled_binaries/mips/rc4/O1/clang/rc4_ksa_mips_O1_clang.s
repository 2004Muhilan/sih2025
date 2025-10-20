	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_ksa.c"
	.globl	rc4_ksa                         # -- Begin function rc4_ksa
	.p2align	2
	.type	rc4_ksa,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_ksa
rc4_ksa:                                # @rc4_ksa
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $2
	sb	$2, 0($1)
	addiu	$2, $2, 1
	bne	$2, $3, $BB0_1
	nop
# %bb.2:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
	addiu	$7, $zero, 0
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $6
	teq	$6, $zero, 7
	mfhi	$1
	addu	$8, $4, $2
	lbu	$9, 0($8)
	addu	$7, $9, $7
	addu	$1, $5, $1
	lbu	$1, 0($1)
	addu	$7, $7, $1
	andi	$1, $7, 255
	addiu	$2, $2, 1
	addu	$1, $4, $1
	lbu	$10, 0($1)
	sb	$10, 0($8)
	bne	$2, $3, $BB0_3
	sb	$9, 0($1)
# %bb.4:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_ksa
$func_end0:
	.size	rc4_ksa, ($func_end0)-rc4_ksa
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
