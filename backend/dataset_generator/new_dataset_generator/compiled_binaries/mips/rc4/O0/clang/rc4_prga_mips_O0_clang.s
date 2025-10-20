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
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	andi	$1, $1, 255
	addiu	$2, $zero, 1
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 8($fp)
	sb	$1, 0($2)
	lw	$1, 4($fp)
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 4($fp)
	sb	$1, 0($2)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 3($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 3($fp)
	lw	$2, 12($fp)
	lw	$3, 4($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 12($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	lw	$3, 12($fp)
	lw	$4, 4($fp)
	lbu	$4, 0($4)
	andi	$4, $4, 255
	addu	$3, $3, $4
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$3, $2, $3
	addiu	$2, $zero, 256
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
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
