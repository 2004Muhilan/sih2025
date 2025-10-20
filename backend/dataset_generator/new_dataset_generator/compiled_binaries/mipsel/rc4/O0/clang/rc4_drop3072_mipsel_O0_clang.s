	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_drop3072.c"
	.globl	rc4_drop3072_init               # -- Begin function rc4_drop3072_init
	.p2align	2
	.type	rc4_drop3072_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop3072_init
rc4_drop3072_init:                      # @rc4_drop3072_init
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	addiu	$1, $zero, 0
	sw	$zero, 24($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 24($fp)
	lw	$2, 36($fp)
	lw	$3, 24($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sb	$zero, 23($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lbu	$1, 23($fp)
	andi	$1, $1, 255
	lw	$2, 36($fp)
	lw	$3, 16($fp)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lw	$2, 32($fp)
	lw	$4, 16($fp)
	lw	$3, 28($fp)
	divu	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sb	$1, 23($fp)
	lw	$1, 36($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 15($fp)
	lw	$1, 36($fp)
	lbu	$2, 23($fp)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 36($fp)
	lw	$3, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 15($fp)
	lw	$2, 36($fp)
	lbu	$3, 23($fp)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_6
	nop
$BB0_10:
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 3072
	slt	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_15
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 36($fp)
	lw	$3, 8($fp)
	addiu	$2, $zero, 256
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 7($fp)
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_11
	nop
$BB0_15:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop3072_init
$func_end0:
	.size	rc4_drop3072_init, ($func_end0)-rc4_drop3072_init
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
