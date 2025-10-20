	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"array_sum.c"
	.globl	array_sum                       # -- Begin function array_sum
	.p2align	2
	.type	array_sum,@function
	.set	nomicromips
	.set	nomips16
	.ent	array_sum
array_sum:                              # @array_sum
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
	addiu	$1, $zero, 0
	sw	$zero, 0($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$2, 0($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 0($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 0($fp)
	b	$BB0_1
	nop
$BB0_5:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	array_sum
$func_end0:
	.size	array_sum, ($func_end0)-array_sum
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
