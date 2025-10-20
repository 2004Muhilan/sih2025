	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         # -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_pc1
des_pc1:                                # @des_pc1
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
	sw	$4, 16($fp)
	sw	$5, 20($fp)
	sw	$zero, 12($fp)
	sw	$zero, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 56
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $fp, 16
	ori	$4, $1, 4
	lw	$3, 4($fp)
	addiu	$2, $zero, 64
	subu	$2, $2, $3
	andi	$5, $2, 32
	movn	$1, $4, $5
	lw	$1, 0($1)
	srlv	$1, $1, $2
	andi	$2, $1, 1
	addiu	$1, $zero, 55
	subu	$1, $1, $3
	sllv	$4, $2, $1
	andi	$1, $1, 32
	addiu	$3, $zero, 0
	movn	$3, $4, $1
	movn	$4, $zero, $1
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $4
	or	$2, $2, $3
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
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_pc1
$func_end0:
	.size	des_pc1, ($func_end0)-des_pc1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
