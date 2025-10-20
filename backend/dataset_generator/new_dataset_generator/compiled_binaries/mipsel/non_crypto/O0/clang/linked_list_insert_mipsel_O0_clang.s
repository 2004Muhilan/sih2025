	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"linked_list_insert.c"
	.globl	linked_list_insert              # -- Begin function linked_list_insert
	.p2align	2
	.type	linked_list_insert,@function
	.set	nomicromips
	.set	nomips16
	.ent	linked_list_insert
linked_list_insert:                     # @linked_list_insert
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
	lw	$1, 4($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_3
	nop
$BB0_2:
	b	$BB0_7
	nop
$BB0_3:
	b	$BB0_4
	nop
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$1, 4($1)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_6
	nop
# %bb.5:
	b	$BB0_7
	nop
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=1
	lw	$1, 4($fp)
	lw	$1, 4($1)
	sw	$1, 4($fp)
	b	$BB0_4
	nop
$BB0_7:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	linked_list_insert
$func_end0:
	.size	linked_list_insert, ($func_end0)-linked_list_insert
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
