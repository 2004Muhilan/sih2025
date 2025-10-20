	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	2
	.type	sha256_padding,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_padding
sha256_padding:                         # @sha256_padding
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
	addu	$gp, $2, $25
	sw	$gp, 16($fp)                    # 4-byte Folded Spill
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	lw	$4, 36($fp)
	lw	$5, 44($fp)
	lw	$6, 40($fp)
	lw	$25, %call16(memcpy)($gp)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$gp, 16($fp)                    # 4-byte Folded Reload
	lw	$1, 36($fp)
	lw	$2, 40($fp)
	addu	$2, $1, $2
	addiu	$1, $zero, 128
	sb	$1, 0($2)
	lw	$2, 40($fp)
	addiu	$1, $zero, 55
	subu	$1, $1, $2
	andi	$1, $1, 63
	sw	$1, 32($fp)
	lw	$1, 36($fp)
	lw	$2, 40($fp)
	addu	$1, $1, $2
	addiu	$4, $1, 1
	lw	$6, 32($fp)
	lw	$25, %call16(memset)($gp)
	addiu	$5, $zero, 0
	.reloc ($tmp1), R_MIPS_JALR, memset
$tmp1:
	jalr	$25
	nop
	lw	$1, 40($fp)
	sll	$1, $1, 3
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 8
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$2, 24($fp)
	lw	$1, 28($fp)
	lw	$3, 20($fp)
	sll	$4, $3, 3
	addiu	$3, $zero, 56
	subu	$3, $3, $4
	srlv	$4, $1, $3
	xori	$5, $3, 31
	sll	$1, $2, 1
	sllv	$1, $1, $5
	or	$1, $1, $4
	srlv	$2, $2, $3
	andi	$3, $3, 32
	movn	$1, $2, $3
	andi	$1, $1, 255
	lw	$2, 36($fp)
	lw	$3, 40($fp)
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	lw	$4, 32($fp)
	addu	$3, $3, $4
	lw	$4, 20($fp)
	addu	$3, $3, $4
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_padding
$func_end0:
	.size	sha256_padding, ($func_end0)-sha256_padding
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
