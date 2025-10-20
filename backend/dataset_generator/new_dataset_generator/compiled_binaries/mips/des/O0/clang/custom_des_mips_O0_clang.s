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
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	sw	$zero, 28($fp)
	sw	$zero, 24($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 8
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 44($fp)
	lw	$2, 20($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sll	$3, $2, 3
	addiu	$2, $zero, 56
	subu	$2, $2, $3
	sllv	$1, $1, $2
	andi	$2, $2, 32
	addiu	$4, $zero, 0
	move	$3, $1
	movn	$3, $zero, $2
	movn	$4, $1, $2
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	or	$1, $1, $4
	or	$2, $2, $3
	sw	$2, 28($fp)
	sw	$1, 24($fp)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 28($fp)
	sw	$1, 12($fp)
	lw	$1, 24($fp)
	sw	$1, 8($fp)
	lw	$1, 12($fp)
	lw	$2, 40($fp)
	lw	$3, 16($fp)
	sra	$4, $3, 31
	srl	$4, $4, 29
	addu	$4, $3, $4
	addiu	$5, $zero, -8
	and	$4, $4, $5
	subu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	xor	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_6
	nop
$BB0_10:
	addiu	$1, $zero, 0
	sw	$zero, 0($fp)
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	addiu	$2, $zero, 8
	slt	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_15
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$2, 24($fp)
	lw	$1, 28($fp)
	lw	$3, 0($fp)
	sll	$4, $3, 3
	addiu	$3, $zero, 56
	subu	$3, $3, $4
	srlv	$4, $1, $3
	xori	$5, $3, 31
	sll	$1, $2, 1
	sllv	$1, $1, $5
	or	$1, $1, $4
	srlv	$2, $2, $3
	andi	$3, $3, 32
	movn	$1, $2, $3
	lw	$2, 36($fp)
	lw	$3, 0($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 0($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 0($fp)
	b	$BB0_11
	nop
$BB0_15:
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
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
