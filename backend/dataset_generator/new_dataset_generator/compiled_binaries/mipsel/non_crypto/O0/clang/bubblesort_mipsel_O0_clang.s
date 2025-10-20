	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"bubblesort.c"
	.globl	bubblesort                      # -- Begin function bubblesort
	.p2align	2
	.type	bubblesort,@function
	.set	nomicromips
	.set	nomips16
	.ent	bubblesort
bubblesort:                             # @bubblesort
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
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	lw	$1, 12($fp)
	lw	$2, 16($fp)
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_13
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_4:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 8($fp)
	lw	$2, 16($fp)
	lw	$3, 12($fp)
	subu	$2, $2, $3
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sltu	$1, $1, $2
	bgtz	$1, $BB0_6
	nop
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_11
	nop
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=2
	lw	$1, 20($fp)
	lw	$2, 8($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 20($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=2
	b	$BB0_9
	nop
$BB0_8:                                 #   in Loop: Header=BB0_4 Depth=2
	lw	$1, 20($fp)
	lw	$2, 8($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 4($fp)
	lw	$1, 20($fp)
	lw	$2, 8($fp)
	addiu	$3, $zero, 1
	addu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 8($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 4($fp)
	lw	$2, 20($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
$BB0_9:                                 #   in Loop: Header=BB0_4 Depth=2
	b	$BB0_10
	nop
$BB0_10:                                #   in Loop: Header=BB0_4 Depth=2
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_4
	nop
$BB0_11:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_12
	nop
$BB0_12:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_13:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bubblesort
$func_end0:
	.size	bubblesort, ($func_end0)-bubblesort
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
