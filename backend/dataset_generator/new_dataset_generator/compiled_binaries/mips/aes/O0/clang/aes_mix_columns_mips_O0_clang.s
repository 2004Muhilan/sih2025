	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_mix_columns
aes_mix_columns:                        # @aes_mix_columns
	.frame	$fp,72,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -72
	sw	$ra, 68($sp)                    # 4-byte Folded Spill
	sw	$fp, 64($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 44($fp)                     # 4-byte Folded Spill
	sw	$4, 60($fp)
	addiu	$1, $zero, 0
	sw	$zero, 56($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 56($fp)
	addiu	$2, $zero, 4
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	lw	$2, 60($fp)
	lw	$3, 56($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$2, 52($fp)
	lw	$2, 52($fp)
	lbu	$2, 0($2)
	sb	$2, 51($fp)
	lw	$2, 52($fp)
	lbu	$2, 1($2)
	sb	$2, 50($fp)
	lw	$2, 52($fp)
	lbu	$2, 2($2)
	sb	$2, 49($fp)
	lw	$2, 52($fp)
	lbu	$2, 3($2)
	sb	$2, 48($fp)
	lbu	$3, 51($fp)
	addiu	$2, $zero, 2
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp0), R_MIPS_JALR, gf_mul
$tmp0:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lbu	$3, 50($fp)
	addiu	$2, $zero, 3
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp1), R_MIPS_JALR, gf_mul
$tmp1:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	lbu	$3, 49($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lbu	$3, 48($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 0($3)
	lbu	$2, 51($fp)
	andi	$2, $2, 255
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lbu	$3, 50($fp)
	addiu	$2, $zero, 2
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp2), R_MIPS_JALR, gf_mul
$tmp2:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	lbu	$3, 49($fp)
	addiu	$2, $zero, 3
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp3), R_MIPS_JALR, gf_mul
$tmp3:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	lbu	$3, 48($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 1($3)
	lbu	$2, 51($fp)
	andi	$2, $2, 255
	lbu	$3, 50($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	lbu	$3, 49($fp)
	addiu	$2, $zero, 2
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp4), R_MIPS_JALR, gf_mul
$tmp4:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 32($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	lbu	$3, 48($fp)
	addiu	$2, $zero, 3
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp5), R_MIPS_JALR, gf_mul
$tmp5:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 36($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 2($3)
	lbu	$3, 51($fp)
	addiu	$2, $zero, 3
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp6), R_MIPS_JALR, gf_mul
$tmp6:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	lbu	$3, 50($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lbu	$3, 49($fp)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 40($fp)                     # 4-byte Folded Spill
	lbu	$3, 48($fp)
	addiu	$2, $zero, 2
	andi	$4, $3, 255
	andi	$5, $2, 255
	lw	$1, %got(gf_mul)($1)
	addiu	$25, $1, %lo(gf_mul)
	.reloc ($tmp7), R_MIPS_JALR, gf_mul
$tmp7:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 52($fp)
	sb	$1, 3($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 56($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 56($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 72
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_mix_columns
$func_end0:
	.size	aes_mix_columns, ($func_end0)-aes_mix_columns
                                        # -- End function
	.p2align	2                               # -- Begin function gf_mul
	.type	gf_mul,@function
	.set	nomicromips
	.set	nomips16
	.ent	gf_mul
gf_mul:                                 # @gf_mul
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
	sb	$4, 15($fp)
	sb	$5, 14($fp)
	addiu	$1, $zero, 0
	sb	$zero, 13($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 8
	slt	$1, $1, $2
	bgtz	$1, $BB1_3
	nop
# %bb.2:
	b	$BB1_11
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lbu	$1, 14($fp)
	andi	$1, $1, 255
	addiu	$2, $zero, 1
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_5
	nop
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	b	$BB1_6
	nop
$BB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	lbu	$1, 15($fp)
	andi	$2, $1, 255
	lbu	$1, 13($fp)
	andi	$1, $1, 255
	xor	$1, $1, $2
	sb	$1, 13($fp)
$BB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
	lbu	$1, 15($fp)
	andi	$1, $1, 255
	addiu	$2, $zero, 128
	and	$1, $1, $2
	sb	$1, 7($fp)
	lbu	$1, 15($fp)
	andi	$1, $1, 255
	sll	$1, $1, 1
	sb	$1, 15($fp)
	lbu	$1, 7($fp)
	addiu	$2, $zero, 0
	seb	$1, $1
	seb	$2, $zero
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_8
	nop
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	b	$BB1_9
	nop
$BB1_8:                                 #   in Loop: Header=BB1_1 Depth=1
	lbu	$1, 15($fp)
	andi	$1, $1, 255
	addiu	$2, $zero, 27
	xor	$1, $1, $2
	sb	$1, 15($fp)
$BB1_9:                                 #   in Loop: Header=BB1_1 Depth=1
	lbu	$1, 14($fp)
	andi	$1, $1, 255
	sra	$1, $1, 1
	sb	$1, 14($fp)
# %bb.10:                               #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB1_1
	nop
$BB1_11:
	lbu	$1, 13($fp)
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	gf_mul
$func_end1:
	.size	gf_mul, ($func_end1)-gf_mul
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gf_mul
	.text
