	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.p2align	2
	.type	base64_char_value,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_char_value
base64_char_value:                      # @base64_char_value
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $4, -65
	andi	$1, $2, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_2
	nop
# %bb.1:
	jr	$ra
	nop
$BB0_2:
	addiu	$1, $4, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_4
	nop
# %bb.3:
	jr	$ra
	addiu	$2, $4, -71
$BB0_4:
	addiu	$1, $4, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB0_6
	nop
# %bb.5:
	jr	$ra
	addiu	$2, $4, 4
$BB0_6:
	xori	$1, $4, 47
	addiu	$2, $zero, -1
	addiu	$3, $zero, 63
	movz	$2, $3, $1
	xori	$1, $4, 43
	addiu	$3, $zero, 62
	jr	$ra
	movz	$2, $3, $1
	.set	at
	.set	macro
	.set	reorder
	.end	base64_char_value
$func_end0:
	.size	base64_char_value, ($func_end0)-base64_char_value
                                        # -- End function
	.globl	base64_decode_standard          # -- Begin function base64_decode_standard
	.p2align	2
	.type	base64_decode_standard,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_decode_standard
base64_decode_standard:                 # @base64_decode_standard
	.frame	$sp,56,$ra
	.mask 	0xc0ff0000,-4
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
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	sw	$21, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $6
	move	$18, $5
	move	$19, $4
	sw	$zero, 0($6)
	addiu	$20, $zero, 0
	addiu	$22, $zero, 4
	move	$23, $4
$BB1_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	addu	$1, $19, $20
	lbu	$2, 0($1)
	beqz	$2, $BB1_6
	nop
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	addiu	$1, $zero, 61
	beq	$2, $1, $BB1_6
	nop
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	addiu	$21, $zero, 0
	addiu	$fp, $zero, 0
$BB1_4:                                 #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $23, $21
	lb	$4, 0($1)
	lw	$25, %call16(base64_char_value)($16)
	.reloc ($tmp0), R_MIPS_JALR, base64_char_value
$tmp0:
	jalr	$25
	move	$gp, $16
	sll	$1, $fp, 6
	addiu	$21, $21, 1
	bne	$21, $22, $BB1_4
	or	$fp, $2, $1
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 0($17)
	addiu	$2, $1, 1
	sw	$2, 0($17)
	addu	$1, $18, $1
	srl	$2, $fp, 16
	sb	$2, 0($1)
	lw	$1, 0($17)
	addiu	$2, $1, 1
	sw	$2, 0($17)
	addu	$1, $18, $1
	addiu	$23, $23, 4
	addiu	$20, $20, 4
	srl	$2, $fp, 8
	sb	$2, 0($1)
	lw	$1, 0($17)
	addiu	$2, $1, 1
	sw	$2, 0($17)
	addu	$1, $18, $1
	b	$BB1_1
	sb	$fp, 0($1)
$BB1_6:
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	base64_decode_standard
$func_end1:
	.size	base64_decode_standard, ($func_end1)-base64_decode_standard
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
