	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.p2align	2
	.type	rc4_prga,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_prga
rc4_prga:                               # @rc4_prga
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 0($5)
	addiu	$1, $1, 1
	sb	$1, 0($5)
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$1, 0($1)
	lbu	$2, 0($6)
	addu	$1, $1, $2
	sb	$1, 0($6)
	lbu	$2, 0($5)
	addu	$2, $4, $2
	lbu	$3, 0($2)
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$1, 0($1)
	sb	$1, 0($2)
	lbu	$1, 0($6)
	addu	$1, $4, $1
	sb	$3, 0($1)
	lbu	$1, 0($5)
	addu	$1, $4, $1
	lbu	$1, 0($1)
	lbu	$2, 0($6)
	addu	$2, $4, $2
	lbu	$2, 0($2)
	addu	$1, $2, $1
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$2, 0($1)
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_prga
$func_end0:
	.size	rc4_prga, ($func_end0)-rc4_prga
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
