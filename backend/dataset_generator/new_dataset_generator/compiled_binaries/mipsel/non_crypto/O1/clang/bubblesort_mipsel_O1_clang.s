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
	beqz	$2, $BB0_8
	nop
# %bb.1:
	addiu	$3, $4, 4
	addiu	$4, $5, -1
	addiu	$5, $zero, 0
	b	$BB0_3
	move	$6, $2
$BB0_2:                                 #   in Loop: Header=BB0_3 Depth=1
	addiu	$5, $5, 1
	beq	$5, $2, $BB0_8
	addiu	$6, $6, -1
$BB0_3:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	beq	$5, $4, $BB0_2
	nop
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addiu	$7, $zero, 0
	b	$BB0_6
	move	$8, $3
$BB0_5:                                 #   in Loop: Header=BB0_6 Depth=2
	addiu	$7, $7, 1
	beq	$6, $7, $BB0_2
	addiu	$8, $8, 4
$BB0_6:                                 #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$9, -4($8)
	lw	$10, 0($8)
	slt	$1, $10, $9
	beqz	$1, $BB0_5
	nop
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	sw	$9, 0($8)
	b	$BB0_5
	sw	$10, -4($8)
$BB0_8:
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
