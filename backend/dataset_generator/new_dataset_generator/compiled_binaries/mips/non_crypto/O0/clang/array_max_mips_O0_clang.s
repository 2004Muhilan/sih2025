	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"array_max.c"
	.globl	array_max                       # -- Begin function array_max
	.p2align	2
	.type	array_max,@function
	.set	nomicromips
	.set	nomips16
	.ent	array_max
array_max:                              # @array_max
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
	sw	$5, 12($fp)
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_3
	nop
$BB0_2:
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
	b	$BB0_12
	nop
$BB0_3:
	lw	$1, 16($fp)
	lw	$1, 0($1)
	sw	$1, 8($fp)
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_6
	nop
# %bb.5:
	b	$BB0_11
	nop
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=1
	lw	$1, 16($fp)
	lw	$2, 4($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 8($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	b	$BB0_9
	nop
$BB0_8:                                 #   in Loop: Header=BB0_4 Depth=1
	lw	$1, 16($fp)
	lw	$2, 4($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 8($fp)
$BB0_9:                                 #   in Loop: Header=BB0_4 Depth=1
	b	$BB0_10
	nop
$BB0_10:                                #   in Loop: Header=BB0_4 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_4
	nop
$BB0_11:
	lw	$1, 8($fp)
	sw	$1, 20($fp)
$BB0_12:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	array_max
$func_end0:
	.size	array_max, ($func_end0)-array_max
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
