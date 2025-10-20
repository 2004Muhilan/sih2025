	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"quicksort.c"
	.globl	swap                            # -- Begin function swap
	.p2align	2
	.type	swap,@function
	.set	nomicromips
	.set	nomips16
	.ent	swap
swap:                                   # @swap
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$1, 0($4)
	lw	$2, 0($5)
	sw	$2, 0($4)
	jr	$ra
	sw	$1, 0($5)
	.set	at
	.set	macro
	.set	reorder
	.end	swap
$func_end0:
	.size	swap, ($func_end0)-swap
                                        # -- End function
	.globl	partition                       # -- Begin function partition
	.p2align	2
	.type	partition,@function
	.set	nomicromips
	.set	nomips16
	.ent	partition
partition:                              # @partition
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	slt	$1, $5, $6
	sll	$2, $6, 2
	addu	$2, $4, $2
	lw	$3, 0($2)
	beqz	$1, $BB1_6
	nop
# %bb.1:
	subu	$6, $6, $5
	sll	$1, $5, 2
	addu	$7, $4, $1
	b	$BB1_3
	addiu	$5, $5, -1
$BB1_2:                                 #   in Loop: Header=BB1_3 Depth=1
	addiu	$6, $6, -1
	beqz	$6, $BB1_5
	addiu	$7, $7, 4
$BB1_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$8, 0($7)
	slt	$1, $8, $3
	beqz	$1, $BB1_2
	nop
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	addiu	$5, $5, 1
	sll	$1, $5, 2
	addu	$1, $4, $1
	lw	$9, 0($1)
	sw	$8, 0($1)
	b	$BB1_2
	sw	$9, 0($7)
$BB1_5:
	addiu	$5, $5, 1
	lw	$3, 0($2)
$BB1_6:
	sll	$1, $5, 2
	addu	$1, $4, $1
	lw	$4, 0($1)
	sw	$3, 0($1)
	sw	$4, 0($2)
	jr	$ra
	move	$2, $5
	.set	at
	.set	macro
	.set	reorder
	.end	partition
$func_end1:
	.size	partition, ($func_end1)-partition
                                        # -- End function
	.globl	quicksort                       # -- Begin function quicksort
	.p2align	2
	.type	quicksort,@function
	.set	nomicromips
	.set	nomips16
	.ent	quicksort
quicksort:                              # @quicksort
	.frame	$sp,48,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$21, 40($sp)                    # 4-byte Folded Spill
	sw	$20, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	slt	$1, $5, $6
	beqz	$1, $BB2_7
	addu	$16, $2, $25
# %bb.1:
	move	$17, $6
	move	$18, $4
	addiu	$20, $4, 4
	sll	$1, $6, 2
	b	$BB2_3
	addu	$21, $4, $1
$BB2_2:                                 #   in Loop: Header=BB2_3 Depth=1
	sll	$1, $19, 2
	addu	$1, $20, $1
	lw	$2, 0($1)
	lw	$3, 0($21)
	sw	$3, 0($1)
	sw	$2, 0($21)
	lw	$25, %call16(quicksort)($16)
	move	$4, $18
	move	$6, $19
	.reloc ($tmp0), R_MIPS_JALR, quicksort
$tmp0:
	jalr	$25
	move	$gp, $16
	addiu	$5, $19, 2
	slt	$1, $5, $17
	beqz	$1, $BB2_7
	nop
$BB2_3:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	sll	$1, $5, 2
	addu	$2, $18, $1
	addiu	$19, $5, -1
	lw	$3, 0($21)
	b	$BB2_5
	move	$4, $17
$BB2_4:                                 #   in Loop: Header=BB2_5 Depth=2
	addiu	$4, $4, -1
	beq	$5, $4, $BB2_2
	addiu	$2, $2, 4
$BB2_5:                                 #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$6, 0($2)
	slt	$1, $6, $3
	beqz	$1, $BB2_4
	nop
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	addiu	$19, $19, 1
	sll	$1, $19, 2
	addu	$1, $18, $1
	lw	$7, 0($1)
	sw	$6, 0($1)
	b	$BB2_4
	sw	$7, 0($2)
$BB2_7:
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$20, 36($sp)                    # 4-byte Folded Reload
	lw	$21, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 48
	.set	at
	.set	macro
	.set	reorder
	.end	quicksort
$func_end2:
	.size	quicksort, ($func_end2)-quicksort
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
