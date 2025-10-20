	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,@function
	.set	nomicromips
	.set	nomips16
	.ent	binary_tree_search
binary_tree_search:                     # @binary_tree_search
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	lw	$1, 24($fp)
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
	sw	$zero, 28($fp)
	b	$BB0_10
	nop
$BB0_3:
	lw	$1, 24($fp)
	lw	$1, 0($1)
	lw	$2, 20($fp)
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_5
	nop
# %bb.4:
	b	$BB0_6
	nop
$BB0_5:
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	b	$BB0_10
	nop
$BB0_6:
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_9
	nop
$BB0_8:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 24($fp)
	lw	$4, 4($2)
	lw	$5, 20($fp)
	lw	$25, %got(binary_tree_search)($1)
	.reloc ($tmp0), R_MIPS_JALR, binary_tree_search
$tmp0:
	jalr	$25
	nop
	sw	$2, 28($fp)
	b	$BB0_10
	nop
$BB0_9:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 24($fp)
	lw	$4, 8($2)
	lw	$5, 20($fp)
	lw	$25, %got(binary_tree_search)($1)
	.reloc ($tmp1), R_MIPS_JALR, binary_tree_search
$tmp1:
	jalr	$25
	nop
	sw	$2, 28($fp)
$BB0_10:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	binary_tree_search
$func_end0:
	.size	binary_tree_search, ($func_end0)-binary_tree_search
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binary_tree_search
	.text
