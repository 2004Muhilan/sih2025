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
	lw	$1, 12($fp)
	lw	$1, 0($1)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$1, 0($1)
	lw	$2, 12($fp)
	sw	$1, 0($2)
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	lw	$1, 44($fp)
	lw	$2, 36($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	sw	$1, 28($fp)
	lw	$1, 40($fp)
	sw	$1, 24($fp)
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB1_3
	nop
# %bb.2:
	b	$BB1_8
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 44($fp)
	lw	$2, 24($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 32($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB1_5
	nop
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	b	$BB1_6
	nop
$BB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)
	addiu	$3, $zero, 1
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 44($fp)
	lw	$3, 28($fp)
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$2, 44($fp)
	lw	$3, 24($fp)
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$25, %got(swap)($1)
	.reloc ($tmp0), R_MIPS_JALR, swap
$tmp0:
	jalr	$25
	nop
$BB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
	b	$BB1_7
	nop
$BB1_7:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB1_1
	nop
$BB1_8:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 44($fp)
	lw	$3, 28($fp)
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$2, 44($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$25, %got(swap)($1)
	.reloc ($tmp1), R_MIPS_JALR, swap
$tmp1:
	jalr	$25
	nop
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	addu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB2_2
	nop
# %bb.1:
	b	$BB2_3
	nop
$BB2_2:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$25, %got(partition)($1)
	.reloc ($tmp2), R_MIPS_JALR, partition
$tmp2:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 24($fp)
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	lw	$2, 24($fp)
	addiu	$3, $zero, 1
	subu	$6, $2, $3
	lw	$25, %got(quicksort)($1)
	.reloc ($tmp3), R_MIPS_JALR, quicksort
$tmp3:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 24($fp)
	addiu	$3, $zero, 1
	addu	$5, $2, $3
	lw	$6, 28($fp)
	lw	$25, %got(quicksort)($1)
	.reloc ($tmp4), R_MIPS_JALR, quicksort
$tmp4:
	jalr	$25
	nop
$BB2_3:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.addrsig_sym swap
	.addrsig_sym partition
	.addrsig_sym quicksort
	.text
