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
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 16($fp)
	lw	$2, 28($fp)
	lw	$3, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sb	$zero, 15($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lbu	$1, 15($fp)
	andi	$1, $1, 255
	lw	$2, 28($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lw	$2, 24($fp)
	lw	$4, 8($fp)
	lw	$3, 20($fp)
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
	sb	$1, 15($fp)
	lw	$1, 28($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 7($fp)
	lw	$1, 28($fp)
	lbu	$2, 15($fp)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 28($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 7($fp)
	lw	$2, 28($fp)
	lbu	$3, 15($fp)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_6
	nop
$BB0_10:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
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
