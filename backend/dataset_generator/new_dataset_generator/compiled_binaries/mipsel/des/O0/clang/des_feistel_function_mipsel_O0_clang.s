	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_feistel_function.c"
	.globl	des_feistel                     # -- Begin function des_feistel
	.p2align	2
	.type	des_feistel,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_feistel
des_feistel:                            # @des_feistel
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	sw	$zero, 12($fp)
	sw	$zero, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 48
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$3, 4($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	srlv	$1, $1, $2
	andi	$1, $1, 1
	addiu	$2, $zero, 47
	subu	$2, $2, $3
	sllv	$3, $1, $2
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $3
	sw	$2, 12($fp)
	sw	$1, 8($fp)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_1
	nop
$BB0_5:
	lw	$3, 20($fp)
	lw	$4, 16($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	xor	$1, $1, $4
	xor	$2, $2, $3
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 0($fp)
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_feistel
$func_end0:
	.size	des_feistel, ($func_end0)-des_feistel
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
