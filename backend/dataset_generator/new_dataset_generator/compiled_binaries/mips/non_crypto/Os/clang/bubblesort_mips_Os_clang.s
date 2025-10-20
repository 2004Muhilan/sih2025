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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $5, -1
	beqz	$2, $BB0_9
	nop
# %bb.1:
	addiu	$3, $4, 4
	addiu	$5, $5, -1
	addiu	$6, $zero, 0
	move	$7, $2
$BB0_2:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	beq	$6, $5, $BB0_8
	nop
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	lw	$9, 0($4)
	addiu	$8, $zero, 0
	move	$10, $3
$BB0_4:                                 #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$11, 0($10)
	slt	$1, $11, $9
	beqz	$1, $BB0_6
	nop
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	sw	$9, 0($10)
	b	$BB0_7
	sw	$11, -4($10)
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=2
	move	$9, $11
$BB0_7:                                 #   in Loop: Header=BB0_4 Depth=2
	addiu	$8, $8, 1
	bne	$7, $8, $BB0_4
	addiu	$10, $10, 4
$BB0_8:                                 #   in Loop: Header=BB0_2 Depth=1
	addiu	$6, $6, 1
	bne	$6, $2, $BB0_2
	addiu	$7, $7, -1
$BB0_9:
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
