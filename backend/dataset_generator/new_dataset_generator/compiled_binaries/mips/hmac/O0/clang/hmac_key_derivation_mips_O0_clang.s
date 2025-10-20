	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.p2align	2
	.type	hmac_key_derive,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_key_derive
hmac_key_derive:                        # @hmac_key_derive
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 48($fp)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	sw	$7, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 32
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$3, 4($fp)
	lw	$2, 16($fp)
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$2, 12($fp)
	lw	$4, 4($fp)
	lw	$3, 8($fp)
	divu	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 48($fp)
	lw	$3, 4($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_key_derive
$func_end0:
	.size	hmac_key_derive, ($func_end0)-hmac_key_derive
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
