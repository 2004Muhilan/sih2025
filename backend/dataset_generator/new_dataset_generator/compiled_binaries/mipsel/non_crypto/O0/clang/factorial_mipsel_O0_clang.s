	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	2
	.type	factorial,@function
	.set	nomicromips
	.set	nomips16
	.ent	factorial
factorial:                              # @factorial
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
	sw	$4, 20($fp)
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_3
	nop
# %bb.1:
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_4
	nop
$BB0_3:
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
	sw	$zero, 28($fp)
	b	$BB0_10
	nop
$BB0_4:
	addiu	$1, $zero, 1
	sw	$1, 8($fp)
	sw	$zero, 12($fp)
	addiu	$1, $zero, 2
	sw	$1, 4($fp)
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	lw	$1, 20($fp)
	sltu	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_7
	nop
# %bb.6:
	b	$BB0_9
	nop
$BB0_7:                                 #   in Loop: Header=BB0_5 Depth=1
	lw	$3, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	mul	$2, $2, $3
	multu	$1, $3
	mfhi	$1
	addu	$1, $1, $2
	mflo	$2
	sw	$2, 8($fp)
	sw	$1, 12($fp)
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_5
	nop
$BB0_9:
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
$BB0_10:
	lw	$2, 24($fp)
	lw	$3, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	factorial
$func_end0:
	.size	factorial, ($func_end0)-factorial
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
