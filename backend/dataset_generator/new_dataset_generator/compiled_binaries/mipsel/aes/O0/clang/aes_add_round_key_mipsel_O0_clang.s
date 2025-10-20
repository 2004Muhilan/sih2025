	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_add_round_key
aes_add_round_key:                      # @aes_add_round_key
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
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$3, $1, 255
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
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
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_add_round_key
$func_end0:
	.size	aes_add_round_key, ($func_end0)-aes_add_round_key
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
