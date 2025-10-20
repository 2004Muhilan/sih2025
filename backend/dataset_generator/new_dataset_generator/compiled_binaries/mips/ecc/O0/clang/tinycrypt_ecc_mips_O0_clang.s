	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_set_rng
uECC_set_rng:                           # @uECC_set_rng
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	addu	$2, $2, $25
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	lw	$2, %got(g_rng_function)($2)
	addiu	$2, $2, %lo(g_rng_function)
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_set_rng
$func_end0:
	.size	uECC_set_rng, ($func_end0)-uECC_set_rng
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.p2align	2
	.type	uECC_get_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_get_rng
uECC_get_rng:                           # @uECC_get_rng
	.frame	$fp,8,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -8
	sw	$ra, 4($sp)                     # 4-byte Folded Spill
	sw	$fp, 0($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	lw	$1, %got(g_rng_function)($1)
	addiu	$1, $1, %lo(g_rng_function)
	lw	$2, 0($1)
	move	$sp, $fp
	lw	$fp, 0($sp)                     # 4-byte Folded Reload
	lw	$ra, 4($sp)                     # 4-byte Folded Reload
	addiu	$sp, $sp, 8
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_get_rng
$func_end1:
	.size	uECC_get_rng, ($func_end1)-uECC_get_rng
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.p2align	2
	.type	uECC_curve_private_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_private_key_size
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	addiu	$2, $zero, 7
	addu	$2, $1, $2
	addiu	$1, $zero, 8
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_private_key_size
$func_end2:
	.size	uECC_curve_private_key_size, ($func_end2)-uECC_curve_private_key_size
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.p2align	2
	.type	uECC_curve_public_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_public_key_size
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	lbu	$1, 1($1)
	seb	$1, $1
	sll	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_public_key_size
$func_end3:
	.size	uECC_curve_public_key_size, ($func_end3)-uECC_curve_public_key_size
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.p2align	2
	.type	uECC_vli_clear,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_clear
uECC_vli_clear:                         # @uECC_vli_clear
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sb	$5, 3($fp)
	addiu	$1, $zero, 0
	sb	$zero, 2($fp)
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 2($fp)
	seb	$1, $1
	lbu	$2, 3($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB4_3
	nop
# %bb.2:
	b	$BB4_5
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 4($fp)
	lbu	$2, 2($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	addiu	$2, $zero, 0
	sw	$zero, 0($1)
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
	lbu	$1, 2($fp)
	addiu	$1, $1, 1
	sb	$1, 2($fp)
	b	$BB4_1
	nop
$BB4_5:
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_clear
$func_end4:
	.size	uECC_vli_clear, ($func_end4)-uECC_vli_clear
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.p2align	2
	.type	uECC_vli_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_isZero
uECC_vli_isZero:                        # @uECC_vli_isZero
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
	sb	$5, 11($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
	addiu	$1, $zero, 0
	sb	$zero, 3($fp)
$BB5_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 3($fp)
	seb	$1, $1
	lbu	$2, 11($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB5_3
	nop
# %bb.2:
	b	$BB5_5
	nop
$BB5_3:                                 #   in Loop: Header=BB5_1 Depth=1
	lw	$1, 12($fp)
	lbu	$2, 3($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 4($fp)
	or	$1, $1, $2
	sw	$1, 4($fp)
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	lbu	$1, 3($fp)
	addiu	$1, $1, 1
	sb	$1, 3($fp)
	b	$BB5_1
	nop
$BB5_5:
	lw	$1, 4($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_isZero
$func_end5:
	.size	uECC_vli_isZero, ($func_end5)-uECC_vli_isZero
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.p2align	2
	.type	uECC_vli_testBit,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_testBit
uECC_vli_testBit:                       # @uECC_vli_testBit
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sh	$5, 2($fp)
	lw	$1, 4($fp)
	lhu	$2, 2($fp)
	seh	$2, $2
	sra	$2, $2, 5
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lhu	$2, 2($fp)
	seh	$2, $2
	addiu	$3, $zero, 31
	and	$3, $2, $3
	addiu	$2, $zero, 1
	sllv	$2, $2, $3
	and	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_testBit
$func_end6:
	.size	uECC_vli_testBit, ($func_end6)-uECC_vli_testBit
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.p2align	2
	.type	uECC_vli_numBits,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_numBits
uECC_vli_numBits:                       # @uECC_vli_numBits
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
	sw	$4, 32($fp)
	sb	$5, 31($fp)
	lw	$4, 32($fp)
	lbu	$2, 31($fp)
	seb	$5, $2
	lw	$1, %got(vli_numDigits)($1)
	addiu	$25, $1, %lo(vli_numDigits)
	.reloc ($tmp0), R_MIPS_JALR, vli_numDigits
$tmp0:
	jalr	$25
	nop
	sb	$2, 19($fp)
	lbu	$1, 19($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB7_2
	nop
# %bb.1:
	b	$BB7_3
	nop
$BB7_2:
	addiu	$1, $zero, 0
	sh	$zero, 38($fp)
	b	$BB7_9
	nop
$BB7_3:
	lw	$1, 32($fp)
	lbu	$2, 19($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 24($fp)
$BB7_4:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB7_6
	nop
# %bb.5:
	b	$BB7_8
	nop
$BB7_6:                                 #   in Loop: Header=BB7_4 Depth=1
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB7_4
	nop
$BB7_8:
	lbu	$1, 19($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	seh	$1, $1
	sll	$1, $1, 5
	lw	$2, 24($fp)
	addu	$1, $1, $2
	sh	$1, 38($fp)
$BB7_9:
	lhu	$1, 38($fp)
	seh	$2, $1
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_numBits
$func_end7:
	.size	uECC_vli_numBits, ($func_end7)-uECC_vli_numBits
                                        # -- End function
	.p2align	2                               # -- Begin function vli_numDigits
	.type	vli_numDigits,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_numDigits
vli_numDigits:                          # @vli_numDigits
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
	sb	$5, 11($fp)
	lbu	$1, 11($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	sb	$1, 10($fp)
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 10($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
	slt	$1, $1, $zero
	xori	$1, $1, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bgtz	$1, $BB8_3
	nop
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	b	$BB8_4
	nop
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 12($fp)
	lbu	$2, 10($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
$BB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	bgtz	$1, $BB8_6
	nop
# %bb.5:
	b	$BB8_8
	nop
$BB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	b	$BB8_7
	nop
$BB8_7:                                 #   in Loop: Header=BB8_1 Depth=1
	lbu	$1, 10($fp)
	addiu	$1, $1, -1
	sb	$1, 10($fp)
	b	$BB8_1
	nop
$BB8_8:
	lbu	$1, 10($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	seb	$2, $1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	vli_numDigits
$func_end8:
	.size	vli_numDigits, ($func_end8)-vli_numDigits
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_set
uECC_vli_set:                           # @uECC_vli_set
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
	sb	$6, 7($fp)
	addiu	$1, $zero, 0
	sb	$zero, 6($fp)
$BB9_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 6($fp)
	seb	$1, $1
	lbu	$2, 7($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB9_3
	nop
# %bb.2:
	b	$BB9_5
	nop
$BB9_3:                                 #   in Loop: Header=BB9_1 Depth=1
	lw	$1, 8($fp)
	lbu	$2, 6($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 12($fp)
	lbu	$3, 6($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB9_1 Depth=1
	lbu	$1, 6($fp)
	addiu	$1, $1, 1
	sb	$1, 6($fp)
	b	$BB9_1
	nop
$BB9_5:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_set
$func_end9:
	.size	uECC_vli_set, ($func_end9)-uECC_vli_set
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp_unsafe
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
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
	sw	$4, 8($fp)
	sw	$5, 4($fp)
	sb	$6, 3($fp)
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	sb	$1, 2($fp)
$BB10_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 2($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	xori	$1, $1, 1
	bgtz	$1, $BB10_3
	nop
# %bb.2:
	b	$BB10_12
	nop
$BB10_3:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 8($fp)
	lbu	$2, 2($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 4($fp)
	lbu	$3, 2($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	sltu	$1, $1, $2
	bgtz	$1, $BB10_5
	nop
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	b	$BB10_6
	nop
$BB10_5:
	addiu	$1, $zero, 1
	sb	$1, 15($fp)
	b	$BB10_13
	nop
$BB10_6:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 8($fp)
	lbu	$2, 2($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 4($fp)
	lbu	$3, 2($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sltu	$1, $1, $2
	bgtz	$1, $BB10_8
	nop
# %bb.7:                                #   in Loop: Header=BB10_1 Depth=1
	b	$BB10_9
	nop
$BB10_8:
	addiu	$1, $zero, 255
	sb	$1, 15($fp)
	b	$BB10_13
	nop
$BB10_9:                                #   in Loop: Header=BB10_1 Depth=1
	b	$BB10_10
	nop
$BB10_10:                               #   in Loop: Header=BB10_1 Depth=1
	b	$BB10_11
	nop
$BB10_11:                               #   in Loop: Header=BB10_1 Depth=1
	lbu	$1, 2($fp)
	addiu	$1, $1, -1
	sb	$1, 2($fp)
	b	$BB10_1
	nop
$BB10_12:
	addiu	$1, $zero, 0
	sb	$zero, 15($fp)
$BB10_13:
	lbu	$1, 15($fp)
	seb	$2, $1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp_unsafe
$func_end10:
	.size	uECC_vli_cmp_unsafe, ($func_end10)-uECC_vli_cmp_unsafe
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_equal
uECC_vli_equal:                         # @uECC_vli_equal
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
	sb	$6, 15($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
	lbu	$1, 15($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	sb	$1, 7($fp)
$BB11_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 7($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	xori	$1, $1, 1
	bgtz	$1, $BB11_3
	nop
# %bb.2:
	b	$BB11_5
	nop
$BB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	lw	$1, 20($fp)
	lbu	$2, 7($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 16($fp)
	lbu	$3, 7($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$2, $1, $2
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	lbu	$1, 7($fp)
	addiu	$1, $1, -1
	sb	$1, 7($fp)
	b	$BB11_1
	nop
$BB11_5:
	lw	$1, 8($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_equal
$func_end11:
	.size	uECC_vli_equal, ($func_end11)-uECC_vli_equal
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	2
	.type	cond_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	cond_set
cond_set:                               # @cond_set
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
	sw	$6, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	mul	$1, $1, $2
	lw	$2, 8($fp)
	lw	$3, 4($fp)
	addiu	$4, $zero, 0
	xor	$3, $3, $zero
	sltu	$3, $zero, $3
	lui	$4, 65535
	ori	$4, $4, 65535
	xor	$3, $3, $4
	andi	$3, $3, 1
	mul	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cond_set
$func_end12:
	.size	cond_set, ($func_end12)-cond_set
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_sub
uECC_vli_sub:                           # @uECC_vli_sub
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 52($fp)
	sw	$5, 48($fp)
	sw	$6, 44($fp)
	sb	$7, 43($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
	addiu	$1, $zero, 0
	sb	$zero, 35($fp)
$BB13_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 35($fp)
	seb	$1, $1
	lbu	$2, 43($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB13_3
	nop
# %bb.2:
	b	$BB13_5
	nop
$BB13_3:                                #   in Loop: Header=BB13_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 44($fp)
	lbu	$4, 35($fp)
	seb	$4, $4
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	subu	$2, $2, $3
	lw	$3, 36($fp)
	subu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$3, 28($fp)
	lw	$2, 48($fp)
	lbu	$4, 35($fp)
	seb	$4, $4
	sll	$4, $4, 2
	addu	$2, $2, $4
	lw	$2, 0($2)
	sltu	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 24($fp)
	lw	$4, 24($fp)
	lw	$5, 36($fp)
	lw	$2, 28($fp)
	lw	$3, 48($fp)
	lbu	$6, 35($fp)
	seb	$6, $6
	sll	$6, $6, 2
	addu	$3, $3, $6
	lw	$3, 0($3)
	xor	$2, $2, $3
	sltu	$2, $zero, $2
	andi	$6, $2, 1
	lw	$25, %got(cond_set)($1)
	.reloc ($tmp1), R_MIPS_JALR, cond_set
$tmp1:
	jalr	$25
	nop
	sw	$2, 36($fp)
	lw	$1, 28($fp)
	lw	$2, 52($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB13_1 Depth=1
	lbu	$1, 35($fp)
	addiu	$1, $1, 1
	sb	$1, 35($fp)
	b	$BB13_1
	nop
$BB13_5:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_sub
$func_end13:
	.size	uECC_vli_sub, ($func_end13)-uECC_vli_sub
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp
uECC_vli_cmp:                           # @uECC_vli_cmp
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	sb	$6, 63($fp)
	addiu	$4, $fp, 28
	lw	$5, 68($fp)
	lw	$6, 64($fp)
	lbu	$2, 63($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp2), R_MIPS_JALR, uECC_vli_sub
$tmp2:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 24($fp)
	addiu	$4, $fp, 28
	lbu	$2, 63($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_isZero
$tmp3:
	jalr	$25
	nop
	sw	$2, 20($fp)
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$1, $1, 1
	lw	$2, 24($fp)
	sll	$2, $2, 1
	subu	$1, $1, $2
	seb	$2, $1
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp
$func_end14:
	.size	uECC_vli_cmp, ($func_end14)-uECC_vli_cmp
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modAdd
uECC_vli_modAdd:                        # @uECC_vli_modAdd
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
	lw	$2, 72($fp)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	sw	$7, 32($fp)
	sb	$2, 31($fp)
	lw	$4, 44($fp)
	lw	$5, 40($fp)
	lw	$6, 36($fp)
	lbu	$2, 31($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_add
$tmp4:
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB15_3
	nop
# %bb.1:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 44($fp)
	lbu	$2, 31($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp5), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp5:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB15_3
	nop
# %bb.2:
	b	$BB15_4
	nop
$BB15_3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 44($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lbu	$2, 31($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp6), R_MIPS_JALR, uECC_vli_sub
$tmp6:
	jalr	$25
	nop
$BB15_4:
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
$func_end15:
	.size	uECC_vli_modAdd, ($func_end15)-uECC_vli_modAdd
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_add
	.type	uECC_vli_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_add
uECC_vli_add:                           # @uECC_vli_add
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 52($fp)
	sw	$5, 48($fp)
	sw	$6, 44($fp)
	sb	$7, 43($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
	addiu	$1, $zero, 0
	sb	$zero, 35($fp)
$BB16_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 35($fp)
	seb	$1, $1
	lbu	$2, 43($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB16_3
	nop
# %bb.2:
	b	$BB16_5
	nop
$BB16_3:                                #   in Loop: Header=BB16_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 44($fp)
	lbu	$4, 35($fp)
	seb	$4, $4
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	addu	$2, $2, $3
	lw	$3, 36($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 28($fp)
	lw	$3, 48($fp)
	lbu	$4, 35($fp)
	seb	$4, $4
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	sltu	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 24($fp)
	lw	$4, 24($fp)
	lw	$5, 36($fp)
	lw	$2, 28($fp)
	lw	$3, 48($fp)
	lbu	$6, 35($fp)
	seb	$6, $6
	sll	$6, $6, 2
	addu	$3, $3, $6
	lw	$3, 0($3)
	xor	$2, $2, $3
	sltu	$2, $zero, $2
	andi	$6, $2, 1
	lw	$25, %got(cond_set)($1)
	.reloc ($tmp7), R_MIPS_JALR, cond_set
$tmp7:
	jalr	$25
	nop
	sw	$2, 36($fp)
	lw	$1, 28($fp)
	lw	$2, 52($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB16_1 Depth=1
	lbu	$1, 35($fp)
	addiu	$1, $1, 1
	sb	$1, 35($fp)
	b	$BB16_1
	nop
$BB16_5:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_add
$func_end16:
	.size	uECC_vli_add, ($func_end16)-uECC_vli_add
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modSub
uECC_vli_modSub:                        # @uECC_vli_modSub
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
	lw	$2, 72($fp)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	sw	$7, 32($fp)
	sb	$2, 31($fp)
	lw	$4, 44($fp)
	lw	$5, 40($fp)
	lw	$6, 36($fp)
	lbu	$2, 31($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp8), R_MIPS_JALR, uECC_vli_sub
$tmp8:
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB17_2
	nop
# %bb.1:
	b	$BB17_3
	nop
$BB17_2:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 44($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lbu	$2, 31($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp9), R_MIPS_JALR, uECC_vli_add
$tmp9:
	jalr	$25
	nop
$BB17_3:
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
$func_end17:
	.size	uECC_vli_modSub, ($func_end17)-uECC_vli_modSub
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	2
	.type	uECC_vli_mmod,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mmod
uECC_vli_mmod:                          # @uECC_vli_mmod
	.frame	$fp,208,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -208
	sw	$ra, 204($sp)                   # 4-byte Folded Spill
	sw	$fp, 200($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 196($fp)
	sw	$5, 192($fp)
	sw	$6, 188($fp)
	sb	$7, 187($fp)
	addiu	$2, $fp, 56
	sw	$2, 48($fp)
	lw	$2, 192($fp)
	sw	$2, 52($fp)
	lbu	$2, 187($fp)
	seb	$2, $2
	sll	$2, $2, 1
	sll	$2, $2, 5
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$4, 188($fp)
	lbu	$2, 187($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_numBits)($1)
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_numBits
$tmp10:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	seh	$3, $3
	subu	$2, $2, $3
	sh	$2, 42($fp)
	lhu	$2, 42($fp)
	seh	$3, $2
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	sb	$2, 41($fp)
	lhu	$2, 42($fp)
	seh	$3, $2
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	sb	$2, 40($fp)
	addiu	$2, $zero, 0
	sw	$zero, 36($fp)
	addiu	$4, $fp, 120
	lbu	$2, 41($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_clear
$tmp11:
	jalr	$25
	nop
	lbu	$1, 40($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $zero, $1
	bgtz	$1, $BB18_2
	nop
# %bb.1:
	b	$BB18_8
	nop
$BB18_2:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
$BB18_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	lbu	$2, 187($fp)
	seb	$2, $2
	sltu	$1, $1, $2
	bgtz	$1, $BB18_5
	nop
# %bb.4:
	b	$BB18_7
	nop
$BB18_5:                                #   in Loop: Header=BB18_3 Depth=1
	lw	$1, 188($fp)
	lw	$2, 44($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lbu	$2, 40($fp)
	seb	$2, $2
	sllv	$1, $1, $2
	lw	$2, 36($fp)
	or	$1, $1, $2
	lbu	$2, 41($fp)
	seb	$2, $2
	lw	$3, 44($fp)
	addu	$3, $2, $3
	addiu	$2, $fp, 120
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 188($fp)
	lw	$2, 44($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lbu	$2, 40($fp)
	seb	$3, $2
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	srlv	$1, $1, $2
	sw	$1, 36($fp)
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	lw	$1, 44($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 44($fp)
	b	$BB18_3
	nop
$BB18_7:
	b	$BB18_9
	nop
$BB18_8:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 120
	lbu	$3, 41($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$5, 188($fp)
	lbu	$2, 187($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_set
$tmp12:
	jalr	$25
	nop
$BB18_9:
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
$BB18_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
	lhu	$1, 42($fp)
	seh	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	xori	$1, $1, 1
	bgtz	$1, $BB18_12
	nop
# %bb.11:
	b	$BB18_22
	nop
$BB18_12:                               #   in Loop: Header=BB18_10 Depth=1
	addiu	$1, $zero, 0
	sw	$zero, 32($fp)
	addiu	$1, $zero, 0
	sb	$zero, 31($fp)
$BB18_13:                               #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	$1, 31($fp)
	seb	$1, $1
	lbu	$2, 187($fp)
	seb	$2, $2
	sll	$2, $2, 1
	slt	$1, $1, $2
	bgtz	$1, $BB18_15
	nop
# %bb.14:                               #   in Loop: Header=BB18_10 Depth=1
	b	$BB18_20
	nop
$BB18_15:                               #   in Loop: Header=BB18_13 Depth=2
	lw	$2, 44($fp)
	addiu	$1, $fp, 48
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lbu	$2, 31($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lbu	$2, 31($fp)
	seb	$3, $2
	addiu	$2, $fp, 120
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	subu	$1, $1, $2
	lw	$2, 32($fp)
	subu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$1, 24($fp)
	lw	$3, 44($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lbu	$3, 31($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB18_17
	nop
# %bb.16:                               #   in Loop: Header=BB18_13 Depth=2
	b	$BB18_18
	nop
$BB18_17:                               #   in Loop: Header=BB18_13 Depth=2
	lw	$2, 24($fp)
	lw	$3, 44($fp)
	addiu	$1, $fp, 48
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	lbu	$3, 31($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	sltu	$1, $1, $2
	andi	$1, $1, 1
	sw	$1, 32($fp)
$BB18_18:                               #   in Loop: Header=BB18_13 Depth=2
	lw	$1, 24($fp)
	lw	$3, 44($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lbu	$3, 31($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.19:                               #   in Loop: Header=BB18_13 Depth=2
	lbu	$1, 31($fp)
	addiu	$1, $1, 1
	sb	$1, 31($fp)
	b	$BB18_13
	nop
$BB18_20:                               #   in Loop: Header=BB18_10 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 44($fp)
	lw	$3, 32($fp)
	xor	$2, $2, $3
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 44($fp)
	addiu	$4, $fp, 120
	lbu	$2, 187($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_rshift1
$tmp13:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lbu	$2, 187($fp)
	seb	$3, $2
	addiu	$2, $fp, 120
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sll	$4, $2, 31
	lbu	$2, 187($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 120
	sll	$3, $3, 2
	addu	$3, $2, $3
	lw	$2, 0($3)
	or	$2, $2, $4
	sw	$2, 0($3)
	addiu	$2, $fp, 120
	lbu	$3, 187($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	lbu	$2, 187($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_rshift1
$tmp14:
	jalr	$25
	nop
# %bb.21:                               #   in Loop: Header=BB18_10 Depth=1
	lhu	$1, 42($fp)
	addiu	$1, $1, -1
	sh	$1, 42($fp)
	b	$BB18_10
	nop
$BB18_22:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 196($fp)
	lw	$3, 44($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$5, 0($2)
	lbu	$2, 187($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_set
$tmp15:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 200($sp)                   # 4-byte Folded Reload
	lw	$ra, 204($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 208
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mmod
$func_end18:
	.size	uECC_vli_mmod, ($func_end18)-uECC_vli_mmod
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_rshift1
	.type	uECC_vli_rshift1,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_rshift1
uECC_vli_rshift1:                       # @uECC_vli_rshift1
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
	sb	$5, 19($fp)
	lw	$1, 20($fp)
	sw	$1, 12($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
	lbu	$1, 19($fp)
	seb	$2, $1
	lw	$1, 20($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	sw	$1, 20($fp)
$BB19_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	lui	$1, 65535
	ori	$1, $1, 65532
	addu	$1, $2, $1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB19_3
	nop
# %bb.2:
	b	$BB19_4
	nop
$BB19_3:                                #   in Loop: Header=BB19_1 Depth=1
	lw	$1, 20($fp)
	lw	$1, 0($1)
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 1
	lw	$2, 8($fp)
	or	$1, $1, $2
	lw	$2, 20($fp)
	sw	$1, 0($2)
	lw	$1, 4($fp)
	sll	$1, $1, 31
	sw	$1, 8($fp)
	b	$BB19_1
	nop
$BB19_4:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_rshift1
$func_end19:
	.size	uECC_vli_rshift1, ($func_end19)-uECC_vli_rshift1
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult
uECC_vli_modMult:                       # @uECC_vli_modMult
	.frame	$fp,112,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$fp, 104($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	lw	$2, 128($fp)
	sw	$4, 100($fp)
	sw	$5, 96($fp)
	sw	$6, 92($fp)
	sw	$7, 88($fp)
	sb	$2, 87($fp)
	addiu	$4, $fp, 20
	lw	$5, 96($fp)
	lw	$6, 92($fp)
	lbu	$2, 87($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$25, $1, %lo(uECC_vli_mult)
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_mult
$tmp16:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 100($fp)
	addiu	$5, $fp, 20
	lw	$6, 88($fp)
	lbu	$2, 87($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_mmod)($1)
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_mmod
$tmp17:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 112
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult
$func_end20:
	.size	uECC_vli_modMult, ($func_end20)-uECC_vli_modMult
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mult
uECC_vli_mult:                          # @uECC_vli_mult
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
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 60($fp)
	sw	$5, 56($fp)
	sw	$6, 52($fp)
	sb	$7, 51($fp)
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	addiu	$1, $zero, 0
	sw	$zero, 40($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
	addiu	$1, $zero, 0
	sb	$zero, 34($fp)
$BB21_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_4 Depth 2
	lbu	$1, 34($fp)
	seb	$1, $1
	lbu	$2, 51($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB21_3
	nop
# %bb.2:
	b	$BB21_10
	nop
$BB21_3:                                #   in Loop: Header=BB21_1 Depth=1
	addiu	$1, $zero, 0
	sb	$zero, 35($fp)
$BB21_4:                                #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	$1, 35($fp)
	seb	$2, $1
	lbu	$1, 34($fp)
	seb	$1, $1
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB21_6
	nop
# %bb.5:                                #   in Loop: Header=BB21_1 Depth=1
	b	$BB21_8
	nop
$BB21_6:                                #   in Loop: Header=BB21_4 Depth=2
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 56($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$4, 0($2)
	lw	$2, 52($fp)
	lbu	$3, 34($fp)
	seb	$3, $3
	lbu	$5, 35($fp)
	seb	$5, $5
	subu	$3, $3, $5
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$5, 0($2)
	move	$3, $sp
	addiu	$2, $fp, 36
	sw	$2, 16($3)
	lw	$1, %got(muladd)($1)
	addiu	$25, $1, %lo(muladd)
	addiu	$6, $fp, 44
	addiu	$7, $fp, 40
	.reloc ($tmp18), R_MIPS_JALR, muladd
$tmp18:
	jalr	$25
	nop
# %bb.7:                                #   in Loop: Header=BB21_4 Depth=2
	lbu	$1, 35($fp)
	addiu	$1, $1, 1
	sb	$1, 35($fp)
	b	$BB21_4
	nop
$BB21_8:                                #   in Loop: Header=BB21_1 Depth=1
	lw	$1, 44($fp)
	lw	$2, 60($fp)
	lbu	$3, 34($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	lw	$1, 36($fp)
	sw	$1, 40($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
# %bb.9:                                #   in Loop: Header=BB21_1 Depth=1
	lbu	$1, 34($fp)
	addiu	$1, $1, 1
	sb	$1, 34($fp)
	b	$BB21_1
	nop
$BB21_10:
	lbu	$1, 51($fp)
	sb	$1, 34($fp)
$BB21_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_14 Depth 2
	lbu	$1, 34($fp)
	seb	$1, $1
	lbu	$2, 51($fp)
	seb	$2, $2
	sll	$2, $2, 1
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	slt	$1, $1, $2
	bgtz	$1, $BB21_13
	nop
# %bb.12:
	b	$BB21_20
	nop
$BB21_13:                               #   in Loop: Header=BB21_11 Depth=1
	lbu	$1, 34($fp)
	seb	$1, $1
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lbu	$2, 51($fp)
	seb	$2, $2
	subu	$1, $1, $2
	sb	$1, 35($fp)
$BB21_14:                               #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	$1, 35($fp)
	seb	$1, $1
	lbu	$2, 51($fp)
	seb	$2, $2
	slt	$1, $1, $2
	bgtz	$1, $BB21_16
	nop
# %bb.15:                               #   in Loop: Header=BB21_11 Depth=1
	b	$BB21_18
	nop
$BB21_16:                               #   in Loop: Header=BB21_14 Depth=2
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 56($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$4, 0($2)
	lw	$2, 52($fp)
	lbu	$3, 34($fp)
	seb	$3, $3
	lbu	$5, 35($fp)
	seb	$5, $5
	subu	$3, $3, $5
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$5, 0($2)
	move	$3, $sp
	addiu	$2, $fp, 36
	sw	$2, 16($3)
	lw	$1, %got(muladd)($1)
	addiu	$25, $1, %lo(muladd)
	addiu	$6, $fp, 44
	addiu	$7, $fp, 40
	.reloc ($tmp19), R_MIPS_JALR, muladd
$tmp19:
	jalr	$25
	nop
# %bb.17:                               #   in Loop: Header=BB21_14 Depth=2
	lbu	$1, 35($fp)
	addiu	$1, $1, 1
	sb	$1, 35($fp)
	b	$BB21_14
	nop
$BB21_18:                               #   in Loop: Header=BB21_11 Depth=1
	lw	$1, 44($fp)
	lw	$2, 60($fp)
	lbu	$3, 34($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	lw	$1, 36($fp)
	sw	$1, 40($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
# %bb.19:                               #   in Loop: Header=BB21_11 Depth=1
	lbu	$1, 34($fp)
	addiu	$1, $1, 1
	sb	$1, 34($fp)
	b	$BB21_11
	nop
$BB21_20:
	lw	$1, 44($fp)
	lw	$2, 60($fp)
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 1
	addiu	$4, $zero, 1
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 72
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mult
$func_end21:
	.size	uECC_vli_mult, ($func_end21)-uECC_vli_mult
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult_fast
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.frame	$fp,104,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -104
	sw	$ra, 100($sp)                   # 4-byte Folded Spill
	sw	$fp, 96($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$4, 92($fp)
	sw	$5, 88($fp)
	sw	$6, 84($fp)
	sw	$7, 80($fp)
	addiu	$4, $fp, 16
	lw	$5, 88($fp)
	lw	$6, 84($fp)
	lw	$2, 80($fp)
	lbu	$2, 0($2)
	seb	$7, $2
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$25, $1, %lo(uECC_vli_mult)
	.reloc ($tmp20), R_MIPS_JALR, uECC_vli_mult
$tmp20:
	jalr	$25
	nop
	lw	$1, 80($fp)
	lw	$25, 172($1)
	lw	$4, 92($fp)
	addiu	$5, $fp, 16
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 96($sp)                    # 4-byte Folded Reload
	lw	$ra, 100($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 104
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
$func_end22:
	.size	uECC_vli_modMult_fast, ($func_end22)-uECC_vli_modMult_fast
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modInv
uECC_vli_modInv:                        # @uECC_vli_modInv
	.frame	$fp,176,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -176
	sw	$ra, 172($sp)                   # 4-byte Folded Spill
	sw	$fp, 168($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 164($fp)
	sw	$5, 160($fp)
	sw	$6, 156($fp)
	sb	$7, 155($fp)
	lw	$4, 160($fp)
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_isZero
$tmp21:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB23_2
	nop
# %bb.1:
	b	$BB23_3
	nop
$BB23_2:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 164($fp)
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_clear
$tmp22:
	jalr	$25
	nop
	b	$BB23_24
	nop
$BB23_3:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	lw	$5, 160($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_set
$tmp23:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	lw	$5, 156($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp24), R_MIPS_JALR, uECC_vli_set
$tmp24:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_clear
$tmp25:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 1
	sw	$2, 56($fp)
	addiu	$4, $fp, 24
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp26), R_MIPS_JALR, uECC_vli_clear
$tmp26:
	jalr	$25
	nop
$BB23_4:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	addiu	$5, $fp, 88
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp27:
	jalr	$25
	nop
	sb	$2, 23($fp)
	seb	$1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB23_6
	nop
# %bb.5:
	b	$BB23_23
	nop
$BB23_6:                                #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 120($fp)
	addiu	$2, $zero, 1
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB23_8
	nop
# %bb.7:                                #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_rshift1
$tmp28:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	lw	$5, 156($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$1, %got(vli_modInv_update)($1)
	addiu	$25, $1, %lo(vli_modInv_update)
	.reloc ($tmp29), R_MIPS_JALR, vli_modInv_update
$tmp29:
	jalr	$25
	nop
	b	$BB23_22
	nop
$BB23_8:                                #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 88($fp)
	addiu	$2, $zero, 1
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB23_10
	nop
# %bb.9:                                #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_rshift1
$tmp30:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 156($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$1, %got(vli_modInv_update)($1)
	addiu	$25, $1, %lo(vli_modInv_update)
	.reloc ($tmp31), R_MIPS_JALR, vli_modInv_update
$tmp31:
	jalr	$25
	nop
	b	$BB23_21
	nop
$BB23_10:                               #   in Loop: Header=BB23_4 Depth=1
	lbu	$1, 23($fp)
	seb	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $zero, $1
	bgtz	$1, $BB23_12
	nop
# %bb.11:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_16
	nop
$BB23_12:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	addiu	$5, $fp, 120
	addiu	$6, $fp, 88
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_sub
$tmp32:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp33), R_MIPS_JALR, uECC_vli_rshift1
$tmp33:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	addiu	$5, $fp, 24
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp34), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp34:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	bgtz	$1, $BB23_14
	nop
# %bb.13:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_15
	nop
$BB23_14:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	addiu	$5, $fp, 56
	lw	$6, 156($fp)
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp35), R_MIPS_JALR, uECC_vli_add
$tmp35:
	jalr	$25
	nop
$BB23_15:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	addiu	$5, $fp, 56
	addiu	$6, $fp, 24
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp36), R_MIPS_JALR, uECC_vli_sub
$tmp36:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	lw	$5, 156($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$1, %got(vli_modInv_update)($1)
	addiu	$25, $1, %lo(vli_modInv_update)
	.reloc ($tmp37), R_MIPS_JALR, vli_modInv_update
$tmp37:
	jalr	$25
	nop
	b	$BB23_20
	nop
$BB23_16:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	addiu	$5, $fp, 88
	addiu	$6, $fp, 120
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp38), R_MIPS_JALR, uECC_vli_sub
$tmp38:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	lbu	$2, 155($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp39), R_MIPS_JALR, uECC_vli_rshift1
$tmp39:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 56
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp40), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp40:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	bgtz	$1, $BB23_18
	nop
# %bb.17:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_19
	nop
$BB23_18:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 24
	lw	$6, 156($fp)
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp41), R_MIPS_JALR, uECC_vli_add
$tmp41:
	jalr	$25
	nop
$BB23_19:                               #   in Loop: Header=BB23_4 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 24
	addiu	$6, $fp, 56
	lbu	$2, 155($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_sub
$tmp42:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 156($fp)
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$1, %got(vli_modInv_update)($1)
	addiu	$25, $1, %lo(vli_modInv_update)
	.reloc ($tmp43), R_MIPS_JALR, vli_modInv_update
$tmp43:
	jalr	$25
	nop
$BB23_20:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_21
	nop
$BB23_21:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_22
	nop
$BB23_22:                               #   in Loop: Header=BB23_4 Depth=1
	b	$BB23_4
	nop
$BB23_23:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 164($fp)
	addiu	$5, $fp, 56
	lbu	$2, 155($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp44), R_MIPS_JALR, uECC_vli_set
$tmp44:
	jalr	$25
	nop
$BB23_24:
	move	$sp, $fp
	lw	$fp, 168($sp)                   # 4-byte Folded Reload
	lw	$ra, 172($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 176
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modInv
$func_end23:
	.size	uECC_vli_modInv, ($func_end23)-uECC_vli_modInv
                                        # -- End function
	.p2align	2                               # -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_modInv_update
vli_modInv_update:                      # @vli_modInv_update
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
	sb	$6, 31($fp)
	addiu	$1, $zero, 0
	sw	$zero, 24($fp)
	lw	$1, 36($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 1
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB24_2
	nop
# %bb.1:
	b	$BB24_3
	nop
$BB24_2:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	lbu	$2, 31($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_add
$tmp45:
	jalr	$25
	nop
	sw	$2, 24($fp)
$BB24_3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lbu	$2, 31($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp46), R_MIPS_JALR, uECC_vli_rshift1
$tmp46:
	jalr	$25
	nop
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB24_5
	nop
# %bb.4:
	b	$BB24_6
	nop
$BB24_5:
	lw	$1, 36($fp)
	lbu	$2, 31($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 0($2)
	lui	$3, 32768
	or	$1, $1, $3
	sw	$1, 0($2)
$BB24_6:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	vli_modInv_update
$func_end24:
	.size	vli_modInv_update, ($func_end24)-vli_modInv_update
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	double_jacobian_default
double_jacobian_default:                # @double_jacobian_default
	.frame	$fp,128,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -128
	sw	$ra, 124($sp)                   # 4-byte Folded Spill
	sw	$fp, 120($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 116($fp)
	sw	$5, 112($fp)
	sw	$6, 108($fp)
	sw	$7, 104($fp)
	lw	$2, 104($fp)
	lbu	$2, 0($2)
	sb	$2, 39($fp)
	lw	$4, 108($fp)
	lbu	$2, 39($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp47), R_MIPS_JALR, uECC_vli_isZero
$tmp47:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB25_2
	nop
# %bb.1:
	b	$BB25_3
	nop
$BB25_2:
	b	$BB25_8
	nop
$BB25_3:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 72
	lw	$5, 112($fp)
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp48), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp48:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 40
	lw	$5, 116($fp)
	addiu	$6, $fp, 72
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp49), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp49:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 72
	addiu	$5, $fp, 72
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp50), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp50:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 112($fp)
	lw	$5, 112($fp)
	lw	$6, 108($fp)
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp51), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp51:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 108($fp)
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp52), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp52:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 116($fp)
	lw	$6, 108($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp53), R_MIPS_JALR, uECC_vli_modAdd
$tmp53:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 108($fp)
	lw	$6, 108($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp54), R_MIPS_JALR, uECC_vli_modAdd
$tmp54:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 116($fp)
	lw	$6, 108($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp55), R_MIPS_JALR, uECC_vli_modSub
$tmp55:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 116($fp)
	lw	$6, 108($fp)
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp56), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp56:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 116($fp)
	lw	$6, 116($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp57), R_MIPS_JALR, uECC_vli_modAdd
$tmp57:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 116($fp)
	lw	$6, 108($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp58), R_MIPS_JALR, uECC_vli_modAdd
$tmp58:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	addiu	$2, $zero, 0
	seh	$5, $zero
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp59), R_MIPS_JALR, uECC_vli_testBit
$tmp59:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB25_5
	nop
# %bb.4:
	b	$BB25_6
	nop
$BB25_5:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 116($fp)
	lw	$2, 104($fp)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	lbu	$2, 39($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp60), R_MIPS_JALR, uECC_vli_add
$tmp60:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 32($fp)
	lw	$4, 116($fp)
	lbu	$2, 39($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp61), R_MIPS_JALR, uECC_vli_rshift1
$tmp61:
	jalr	$25
	nop
	lw	$1, 32($fp)
	sll	$3, $1, 31
	lw	$1, 116($fp)
	lbu	$2, 39($fp)
	seb	$2, $2
	addiu	$4, $zero, 1
	subu	$2, $2, $4
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 0($2)
	or	$1, $1, $3
	sw	$1, 0($2)
	b	$BB25_7
	nop
$BB25_6:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	lbu	$2, 39($fp)
	seb	$5, $2
	lw	$1, %got(uECC_vli_rshift1)($1)
	addiu	$25, $1, %lo(uECC_vli_rshift1)
	.reloc ($tmp62), R_MIPS_JALR, uECC_vli_rshift1
$tmp62:
	jalr	$25
	nop
$BB25_7:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 116($fp)
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp63), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp63:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 108($fp)
	addiu	$6, $fp, 40
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp64), R_MIPS_JALR, uECC_vli_modSub
$tmp64:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 108($fp)
	addiu	$6, $fp, 40
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_modSub
$tmp65:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 40
	addiu	$5, $fp, 40
	lw	$6, 108($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_modSub
$tmp66:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 116($fp)
	addiu	$6, $fp, 40
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp67), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp67:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 72
	lw	$5, 116($fp)
	addiu	$6, $fp, 72
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 39($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp68), R_MIPS_JALR, uECC_vli_modSub
$tmp68:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 116($fp)
	lw	$5, 108($fp)
	lbu	$2, 39($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp69), R_MIPS_JALR, uECC_vli_set
$tmp69:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 108($fp)
	lw	$5, 112($fp)
	lbu	$2, 39($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp70), R_MIPS_JALR, uECC_vli_set
$tmp70:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 112($fp)
	addiu	$5, $fp, 72
	lbu	$2, 39($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp71), R_MIPS_JALR, uECC_vli_set
$tmp71:
	jalr	$25
	nop
$BB25_8:
	move	$sp, $fp
	lw	$fp, 120($sp)                   # 4-byte Folded Reload
	lw	$ra, 124($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 128
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	double_jacobian_default
$func_end25:
	.size	double_jacobian_default, ($func_end25)-double_jacobian_default
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modSquare_fast
uECC_vli_modSquare_fast:                # @uECC_vli_modSquare_fast
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
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	lw	$6, 24($fp)
	lw	$7, 20($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp72), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp72:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modSquare_fast
$func_end26:
	.size	uECC_vli_modSquare_fast, ($func_end26)-uECC_vli_modSquare_fast
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	x_side_default
x_side_default:                         # @x_side_default
	.frame	$fp,88,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -88
	sw	$ra, 84($sp)                    # 4-byte Folded Spill
	sw	$fp, 80($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 76($fp)
	sw	$5, 72($fp)
	sw	$6, 68($fp)
	addiu	$4, $fp, 36
	lw	$2, %got($__const.x_side_default._3)($1)
	addiu	$5, $2, %lo($__const.x_side_default._3)
	addiu	$6, $zero, 32
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp73), R_MIPS_JALR, memcpy
$tmp73:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 68($fp)
	lbu	$2, 0($2)
	sb	$2, 35($fp)
	lw	$4, 76($fp)
	lw	$5, 72($fp)
	lw	$6, 68($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp74), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp74:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 76($fp)
	lw	$5, 76($fp)
	addiu	$6, $fp, 36
	lw	$1, 68($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 35($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp75), R_MIPS_JALR, uECC_vli_modSub
$tmp75:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 76($fp)
	lw	$5, 76($fp)
	lw	$6, 72($fp)
	lw	$7, 68($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp76), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp76:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$4, 76($fp)
	lw	$5, 76($fp)
	lw	$1, 68($fp)
	addiu	$2, $zero, 132
	addu	$6, $1, $2
	lw	$1, 68($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 35($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp77), R_MIPS_JALR, uECC_vli_modAdd
$tmp77:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 80($sp)                    # 4-byte Folded Reload
	lw	$ra, 84($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 88
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	x_side_default
$func_end27:
	.size	x_side_default, ($func_end27)-x_side_default
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	2
	.type	uECC_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_secp256r1
uECC_secp256r1:                         # @uECC_secp256r1
	.frame	$fp,8,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -8
	sw	$ra, 4($sp)                     # 4-byte Folded Spill
	sw	$fp, 0($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	lw	$1, %got(curve_secp256r1)($1)
	addiu	$2, $1, %lo(curve_secp256r1)
	move	$sp, $fp
	lw	$fp, 0($sp)                     # 4-byte Folded Reload
	lw	$ra, 4($sp)                     # 4-byte Folded Reload
	addiu	$sp, $sp, 8
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_secp256r1
$func_end28:
	.size	uECC_secp256r1, ($func_end28)-uECC_secp256r1
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_mmod_fast_secp256r1
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	lw	$4, 68($fp)
	lw	$5, 64($fp)
	addiu	$2, $zero, 8
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp78), R_MIPS_JALR, uECC_vli_set
$tmp78:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 0
	sw	$zero, 40($fp)
	addiu	$2, $zero, 0
	sw	$zero, 36($fp)
	addiu	$2, $zero, 0
	sw	$zero, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 44($2)
	sw	$2, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 48($2)
	sw	$2, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 52($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 60($fp)
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp79), R_MIPS_JALR, uECC_vli_add
$tmp79:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$2, 28($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp80), R_MIPS_JALR, uECC_vli_add
$tmp80:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 48($2)
	sw	$2, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 52($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 56($fp)
	addiu	$2, $zero, 0
	sw	$zero, 60($fp)
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp81), R_MIPS_JALR, uECC_vli_add
$tmp81:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp82), R_MIPS_JALR, uECC_vli_add
$tmp82:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 32($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 36($2)
	sw	$2, 36($fp)
	lw	$2, 64($fp)
	lw	$2, 40($2)
	sw	$2, 40($fp)
	addiu	$2, $zero, 0
	sw	$zero, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 48($fp)
	addiu	$2, $zero, 0
	sw	$zero, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp83), R_MIPS_JALR, uECC_vli_add
$tmp83:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 36($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 40($2)
	sw	$2, 36($fp)
	lw	$2, 64($fp)
	lw	$2, 44($2)
	sw	$2, 40($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 52($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 32($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp84), R_MIPS_JALR, uECC_vli_add
$tmp84:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 44($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 48($2)
	sw	$2, 36($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 40($fp)
	addiu	$2, $zero, 0
	sw	$zero, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 48($fp)
	addiu	$2, $zero, 0
	sw	$zero, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 32($2)
	sw	$2, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 40($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp85), R_MIPS_JALR, uECC_vli_sub
$tmp85:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	subu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 48($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 36($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 40($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 44($fp)
	addiu	$2, $zero, 0
	sw	$zero, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 36($2)
	sw	$2, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 44($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp86), R_MIPS_JALR, uECC_vli_sub
$tmp86:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	subu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 36($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 40($fp)
	lw	$2, 64($fp)
	lw	$2, 32($2)
	sw	$2, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 36($2)
	sw	$2, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 40($2)
	sw	$2, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 48($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp87), R_MIPS_JALR, uECC_vli_sub
$tmp87:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)
	subu	$2, $2, $3
	sw	$2, 28($fp)
	lw	$2, 64($fp)
	lw	$2, 56($2)
	sw	$2, 32($fp)
	lw	$2, 64($fp)
	lw	$2, 60($2)
	sw	$2, 36($fp)
	addiu	$2, $zero, 0
	sw	$zero, 40($fp)
	lw	$2, 64($fp)
	lw	$2, 36($2)
	sw	$2, 44($fp)
	lw	$2, 64($fp)
	lw	$2, 40($2)
	sw	$2, 48($fp)
	lw	$2, 64($fp)
	lw	$2, 44($2)
	sw	$2, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 56($fp)
	lw	$2, 64($fp)
	lw	$2, 52($2)
	sw	$2, 60($fp)
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp88), R_MIPS_JALR, uECC_vli_sub
$tmp88:
	jalr	$25
	nop
	lw	$1, 28($fp)
	subu	$1, $1, $2
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	bgtz	$1, $BB29_2
	nop
# %bb.1:
	b	$BB29_6
	nop
$BB29_2:
	b	$BB29_3
	nop
$BB29_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	lw	$2, %got(curve_secp256r1)($1)
	addiu	$2, $2, %lo(curve_secp256r1)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp89), R_MIPS_JALR, uECC_vli_add
$tmp89:
	jalr	$25
	nop
	lw	$1, 28($fp)
	addu	$1, $1, $2
	sw	$1, 28($fp)
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	bgtz	$1, $BB29_3
	nop
# %bb.5:
	b	$BB29_13
	nop
$BB29_6:
	b	$BB29_7
	nop
$BB29_7:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	addiu	$3, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	bgtz	$1, $BB29_9
	nop
# %bb.8:                                #   in Loop: Header=BB29_7 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$5, 68($fp)
	lw	$2, %got(curve_secp256r1)($1)
	addiu	$2, $2, %lo(curve_secp256r1)
	addiu	$3, $zero, 4
	addu	$4, $2, $3
	addiu	$2, $zero, 8
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp90), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp90:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
$BB29_9:                                #   in Loop: Header=BB29_7 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	bgtz	$1, $BB29_11
	nop
# %bb.10:
	b	$BB29_12
	nop
$BB29_11:                               #   in Loop: Header=BB29_7 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	lw	$2, %got(curve_secp256r1)($1)
	addiu	$2, $2, %lo(curve_secp256r1)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	addiu	$2, $zero, 8
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp91), R_MIPS_JALR, uECC_vli_sub
$tmp91:
	jalr	$25
	nop
	lw	$1, 28($fp)
	subu	$1, $1, $2
	sw	$1, 28($fp)
	b	$BB29_7
	nop
$BB29_12:
	b	$BB29_13
	nop
$BB29_13:
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
$func_end29:
	.size	vli_mmod_fast_secp256r1, ($func_end29)-vli_mmod_fast_secp256r1
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_isZero
EccPoint_isZero:                        # @EccPoint_isZero
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	lw	$4, 20($fp)
	lw	$2, 16($fp)
	lbu	$2, 0($2)
	seb	$2, $2
	sll	$2, $2, 1
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp92), R_MIPS_JALR, uECC_vli_isZero
$tmp92:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_isZero
$func_end30:
	.size	EccPoint_isZero, ($func_end30)-EccPoint_isZero
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
	.set	nomicromips
	.set	nomips16
	.ent	apply_z
apply_z:                                # @apply_z
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	sw	$6, 60($fp)
	sw	$7, 56($fp)
	addiu	$4, $fp, 24
	lw	$5, 60($fp)
	lw	$6, 56($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp93), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp93:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 24
	lw	$7, 56($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp94), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp94:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 24
	lw	$6, 60($fp)
	lw	$7, 56($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp95), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp95:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 64($fp)
	addiu	$6, $fp, 24
	lw	$7, 56($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp96), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp96:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	apply_z
$func_end31:
	.size	apply_z, ($func_end31)-apply_z
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_add
XYcZ_add:                               # @XYcZ_add
	.frame	$fp,88,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -88
	sw	$ra, 84($sp)                    # 4-byte Folded Spill
	sw	$fp, 80($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 24($fp)                    # 4-byte Folded Spill
	lw	$1, 104($fp)
	sw	$4, 76($fp)
	sw	$5, 72($fp)
	sw	$6, 68($fp)
	sw	$7, 64($fp)
	lw	$1, 104($fp)
	lbu	$1, 0($1)
	sb	$1, 31($fp)
	addiu	$4, $fp, 32
	lw	$5, 68($fp)
	lw	$6, 76($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp97), R_MIPS_JALR, uECC_vli_modSub
$tmp97:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp98), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp98:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 76($fp)
	lw	$5, 76($fp)
	addiu	$6, $fp, 32
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp99), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp99:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	addiu	$6, $fp, 32
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp100), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp100:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 64($fp)
	lw	$6, 72($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp101), R_MIPS_JALR, uECC_vli_modSub
$tmp101:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 32
	lw	$5, 64($fp)
	lw	$6, 104($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp102), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp102:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	lw	$6, 76($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp103), R_MIPS_JALR, uECC_vli_modSub
$tmp103:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	lw	$6, 68($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp104), R_MIPS_JALR, uECC_vli_modSub
$tmp104:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 68($fp)
	lw	$6, 76($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp105), R_MIPS_JALR, uECC_vli_modSub
$tmp105:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 72($fp)
	lw	$5, 72($fp)
	lw	$6, 68($fp)
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp106), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp106:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 76($fp)
	addiu	$6, $fp, 32
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp107), R_MIPS_JALR, uECC_vli_modSub
$tmp107:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 64($fp)
	lw	$6, 68($fp)
	lw	$7, 104($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp108), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp108:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 64($fp)
	lw	$5, 64($fp)
	lw	$6, 72($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp109), R_MIPS_JALR, uECC_vli_modSub
$tmp109:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	addiu	$5, $fp, 32
	lbu	$2, 31($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp110), R_MIPS_JALR, uECC_vli_set
$tmp110:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 80($sp)                    # 4-byte Folded Reload
	lw	$ra, 84($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 88
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_add
$func_end32:
	.size	XYcZ_add, ($func_end32)-XYcZ_add
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_mult
EccPoint_mult:                          # @EccPoint_mult
	.frame	$fp,232,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -232
	sw	$ra, 228($sp)                   # 4-byte Folded Spill
	sw	$fp, 224($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	lw	$2, 252($fp)
	lw	$2, 248($fp)
	sw	$4, 220($fp)
	sw	$5, 216($fp)
	sw	$6, 212($fp)
	sw	$7, 208($fp)
	sh	$2, 206($fp)
	lw	$2, 252($fp)
	lbu	$2, 0($2)
	sb	$2, 35($fp)
	addiu	$2, $fp, 140
	addiu	$3, $zero, 32
	addu	$4, $2, $3
	lw	$5, 216($fp)
	lbu	$2, 35($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp111), R_MIPS_JALR, uECC_vli_set
$tmp111:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 76
	addiu	$3, $zero, 32
	addu	$4, $2, $3
	lw	$2, 216($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 35($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp112), R_MIPS_JALR, uECC_vli_set
$tmp112:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 140
	addiu	$3, $zero, 32
	addu	$4, $2, $3
	addiu	$2, $fp, 76
	addiu	$3, $zero, 32
	addu	$5, $2, $3
	addiu	$6, $fp, 140
	addiu	$7, $fp, 76
	lw	$2, 208($fp)
	lw	$8, 252($fp)
	move	$3, $sp
	sw	$8, 20($3)
	sw	$2, 16($3)
	lw	$1, %got(XYcZ_initial_double)($1)
	addiu	$25, $1, %lo(XYcZ_initial_double)
	.reloc ($tmp113), R_MIPS_JALR, XYcZ_initial_double
$tmp113:
	jalr	$25
	nop
	lhu	$1, 206($fp)
	seh	$1, $1
	addiu	$2, $zero, 2
	subu	$1, $1, $2
	sh	$1, 42($fp)
$BB33_1:                                # =>This Inner Loop Header: Depth=1
	lhu	$1, 42($fp)
	seh	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $zero, $1
	bgtz	$1, $BB33_3
	nop
# %bb.2:
	b	$BB33_5
	nop
$BB33_3:                                #   in Loop: Header=BB33_1 Depth=1
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 212($fp)
	lhu	$2, 42($fp)
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp114), R_MIPS_JALR, uECC_vli_testBit
$tmp114:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 36($fp)
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 140
	sll	$3, $3, 5
	addu	$4, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 76
	sll	$3, $3, 5
	addu	$5, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $fp, 140
	sll	$3, $3, 5
	addu	$6, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $fp, 76
	sll	$3, $3, 5
	addu	$7, $2, $3
	lw	$2, 252($fp)
	move	$3, $sp
	sw	$2, 16($3)
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$25, $1, %lo(XYcZ_addC)
	.reloc ($tmp115), R_MIPS_JALR, XYcZ_addC
$tmp115:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$1, $fp, 140
	sll	$2, $2, 5
	addu	$4, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $fp, 76
	sll	$2, $2, 5
	addu	$5, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $zero, 1
	subu	$2, $1, $2
	addiu	$1, $fp, 140
	sll	$2, $2, 5
	addu	$6, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $zero, 1
	subu	$2, $1, $2
	addiu	$1, $fp, 76
	sll	$2, $2, 5
	addu	$7, $1, $2
	lw	$1, 252($fp)
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(XYcZ_add)($gp)
	.reloc ($tmp116), R_MIPS_JALR, XYcZ_add
$tmp116:
	jalr	$25
	nop
# %bb.4:                                #   in Loop: Header=BB33_1 Depth=1
	lhu	$1, 42($fp)
	addiu	$1, $1, -1
	sh	$1, 42($fp)
	b	$BB33_1
	nop
$BB33_5:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 212($fp)
	addiu	$2, $zero, 0
	seh	$5, $zero
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp117), R_MIPS_JALR, uECC_vli_testBit
$tmp117:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 36($fp)
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 140
	sll	$3, $3, 5
	addu	$4, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 76
	sll	$3, $3, 5
	addu	$5, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $fp, 140
	sll	$3, $3, 5
	addu	$6, $2, $3
	lw	$3, 36($fp)
	addiu	$2, $fp, 76
	sll	$3, $3, 5
	addu	$7, $2, $3
	lw	$2, 252($fp)
	move	$3, $sp
	sw	$2, 16($3)
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$25, $1, %lo(XYcZ_addC)
	.reloc ($tmp118), R_MIPS_JALR, XYcZ_addC
$tmp118:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$1, $fp, 140
	addiu	$2, $zero, 32
	addu	$5, $1, $2
	addiu	$6, $fp, 140
	lw	$1, 252($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 35($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp119), R_MIPS_JALR, uECC_vli_modSub
$tmp119:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$5, $fp, 44
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 76
	sll	$3, $3, 5
	addu	$6, $2, $3
	lw	$7, 252($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp120), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp120:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$5, $fp, 44
	lw	$6, 216($fp)
	lw	$7, 252($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp121), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp121:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$5, $fp, 44
	lw	$2, 252($fp)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	lbu	$2, 35($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_modInv)($1)
	.reloc ($tmp122), R_MIPS_JALR, uECC_vli_modInv
$tmp122:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$5, $fp, 44
	lw	$2, 216($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$6, $2, $3
	lw	$7, 252($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp123), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp123:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 44
	addiu	$5, $fp, 44
	lw	$3, 36($fp)
	addiu	$2, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 140
	sll	$3, $3, 5
	addu	$6, $2, $3
	lw	$7, 252($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp124), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp124:
	jalr	$25
	nop
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$1, $fp, 140
	sll	$2, $2, 5
	addu	$4, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $fp, 76
	sll	$2, $2, 5
	addu	$5, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $zero, 1
	subu	$2, $1, $2
	addiu	$1, $fp, 140
	sll	$2, $2, 5
	addu	$6, $1, $2
	lw	$2, 36($fp)
	addiu	$1, $zero, 1
	subu	$2, $1, $2
	addiu	$1, $fp, 76
	sll	$2, $2, 5
	addu	$7, $1, $2
	lw	$1, 252($fp)
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(XYcZ_add)($gp)
	.reloc ($tmp125), R_MIPS_JALR, XYcZ_add
$tmp125:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 140
	addiu	$5, $fp, 76
	addiu	$6, $fp, 44
	lw	$7, 252($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp126), R_MIPS_JALR, apply_z
$tmp126:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 220($fp)
	addiu	$5, $fp, 140
	lbu	$2, 35($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp127), R_MIPS_JALR, uECC_vli_set
$tmp127:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 220($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	addiu	$5, $fp, 76
	lbu	$2, 35($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp128), R_MIPS_JALR, uECC_vli_set
$tmp128:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 224($sp)                   # 4-byte Folded Reload
	lw	$ra, 228($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 232
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_mult
$func_end33:
	.size	EccPoint_mult, ($func_end33)-EccPoint_mult
                                        # -- End function
	.p2align	2                               # -- Begin function XYcZ_initial_double
	.type	XYcZ_initial_double,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_initial_double
XYcZ_initial_double:                    # @XYcZ_initial_double
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	lw	$1, 100($fp)
	lw	$1, 96($fp)
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	sw	$6, 60($fp)
	sw	$7, 56($fp)
	lw	$1, 100($fp)
	lbu	$1, 0($1)
	sb	$1, 23($fp)
	lw	$1, 96($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB34_2
	nop
# %bb.1:
	b	$BB34_3
	nop
$BB34_2:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 96($fp)
	lbu	$2, 23($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp129), R_MIPS_JALR, uECC_vli_set
$tmp129:
	jalr	$25
	nop
	b	$BB34_4
	nop
$BB34_3:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lbu	$2, 23($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp130), R_MIPS_JALR, uECC_vli_clear
$tmp130:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
$BB34_4:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 60($fp)
	lw	$5, 68($fp)
	lbu	$2, 23($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp131), R_MIPS_JALR, uECC_vli_set
$tmp131:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 56($fp)
	lw	$5, 64($fp)
	lbu	$2, 23($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp132), R_MIPS_JALR, uECC_vli_set
$tmp132:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$5, 64($fp)
	addiu	$6, $fp, 24
	lw	$7, 100($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp133), R_MIPS_JALR, apply_z
$tmp133:
	jalr	$25
	nop
	lw	$1, 100($fp)
	lw	$25, 164($1)
	lw	$4, 68($fp)
	lw	$5, 64($fp)
	addiu	$6, $fp, 24
	lw	$7, 100($fp)
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 60($fp)
	lw	$5, 56($fp)
	addiu	$6, $fp, 24
	lw	$7, 100($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp134), R_MIPS_JALR, apply_z
$tmp134:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_initial_double
$func_end34:
	.size	XYcZ_initial_double, ($func_end34)-XYcZ_initial_double
                                        # -- End function
	.p2align	2                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_addC
XYcZ_addC:                              # @XYcZ_addC
	.frame	$fp,152,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -152
	sw	$ra, 148($sp)                   # 4-byte Folded Spill
	sw	$fp, 144($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 24($fp)                    # 4-byte Folded Spill
	lw	$1, 168($fp)
	sw	$4, 140($fp)
	sw	$5, 136($fp)
	sw	$6, 132($fp)
	sw	$7, 128($fp)
	lw	$1, 168($fp)
	lbu	$1, 0($1)
	sb	$1, 31($fp)
	addiu	$4, $fp, 96
	lw	$5, 132($fp)
	lw	$6, 140($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp135), R_MIPS_JALR, uECC_vli_modSub
$tmp135:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 96
	addiu	$5, $fp, 96
	lw	$6, 168($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp136), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp136:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 140($fp)
	lw	$5, 140($fp)
	addiu	$6, $fp, 96
	lw	$7, 168($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp137), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp137:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 132($fp)
	lw	$5, 132($fp)
	addiu	$6, $fp, 96
	lw	$7, 168($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp138), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp138:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 96
	lw	$5, 128($fp)
	lw	$6, 136($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp139), R_MIPS_JALR, uECC_vli_modAdd
$tmp139:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 128($fp)
	lw	$5, 128($fp)
	lw	$6, 136($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp140), R_MIPS_JALR, uECC_vli_modSub
$tmp140:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 64
	lw	$5, 132($fp)
	lw	$6, 140($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp141), R_MIPS_JALR, uECC_vli_modSub
$tmp141:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 136($fp)
	lw	$5, 136($fp)
	addiu	$6, $fp, 64
	lw	$7, 168($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp142), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp142:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 64
	lw	$5, 140($fp)
	lw	$6, 132($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp143), R_MIPS_JALR, uECC_vli_modAdd
$tmp143:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 132($fp)
	lw	$5, 128($fp)
	lw	$6, 168($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp144), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp144:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 132($fp)
	lw	$5, 132($fp)
	addiu	$6, $fp, 64
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp145), R_MIPS_JALR, uECC_vli_modSub
$tmp145:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 32
	lw	$5, 140($fp)
	lw	$6, 132($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp146), R_MIPS_JALR, uECC_vli_modSub
$tmp146:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 128($fp)
	lw	$5, 128($fp)
	addiu	$6, $fp, 32
	lw	$7, 168($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp147), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp147:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 128($fp)
	lw	$5, 128($fp)
	lw	$6, 136($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp148), R_MIPS_JALR, uECC_vli_modSub
$tmp148:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 96
	lw	$6, 168($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp149), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp149:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 32
	addiu	$6, $fp, 64
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp150), R_MIPS_JALR, uECC_vli_modSub
$tmp150:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 64
	addiu	$5, $fp, 32
	lw	$6, 140($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp151), R_MIPS_JALR, uECC_vli_modSub
$tmp151:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 64
	addiu	$5, $fp, 64
	addiu	$6, $fp, 96
	lw	$7, 168($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp152), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp152:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 136($fp)
	addiu	$5, $fp, 64
	lw	$6, 136($fp)
	lw	$1, 168($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 31($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp153), R_MIPS_JALR, uECC_vli_modSub
$tmp153:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 140($fp)
	addiu	$5, $fp, 32
	lbu	$2, 31($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp154), R_MIPS_JALR, uECC_vli_set
$tmp154:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 144($sp)                   # 4-byte Folded Reload
	lw	$ra, 148($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 152
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_addC
$func_end35:
	.size	XYcZ_addC, ($func_end35)-XYcZ_addC
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,@function
	.set	nomicromips
	.set	nomips16
	.ent	regularize_k
regularize_k:                           # @regularize_k
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	sw	$4, 52($fp)
	sw	$5, 48($fp)
	sw	$6, 44($fp)
	sw	$7, 40($fp)
	lw	$2, 40($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	sb	$2, 39($fp)
	lw	$2, 40($fp)
	lhu	$2, 2($2)
	sh	$2, 36($fp)
	lw	$4, 48($fp)
	lw	$5, 52($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lbu	$2, 39($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp155), R_MIPS_JALR, uECC_vli_add
$tmp155:
	jalr	$25
	nop
	move	$1, $2
	addiu	$2, $zero, 1
	addiu	$3, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bgtz	$1, $BB36_5
	nop
# %bb.1:
	lhu	$1, 36($fp)
	seh	$1, $1
	lbu	$2, 39($fp)
	seb	$2, $2
	seh	$2, $2
	sll	$2, $2, 2
	sll	$3, $2, 3
	addiu	$2, $zero, 0
	slt	$1, $1, $3
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	bgtz	$1, $BB36_3
	nop
# %bb.2:
	b	$BB36_4
	nop
$BB36_3:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 48($fp)
	lhu	$2, 36($fp)
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp156), R_MIPS_JALR, uECC_vli_testBit
$tmp156:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
$BB36_4:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB36_5:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 1
	sw	$2, 32($fp)
	lw	$4, 44($fp)
	lw	$5, 48($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lbu	$2, 39($fp)
	seb	$7, $2
	lw	$1, %got(uECC_vli_add)($1)
	addiu	$25, $1, %lo(uECC_vli_add)
	.reloc ($tmp157), R_MIPS_JALR, uECC_vli_add
$tmp157:
	jalr	$25
	nop
	lw	$2, 32($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	regularize_k
$func_end36:
	.size	regularize_k, ($func_end36)-regularize_k
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_compute_public_key
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.frame	$fp,128,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -128
	sw	$ra, 124($sp)                   # 4-byte Folded Spill
	sw	$fp, 120($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	sw	$4, 112($fp)
	sw	$5, 108($fp)
	sw	$6, 104($fp)
	addiu	$2, $fp, 72
	sw	$2, 32($fp)
	addiu	$2, $fp, 40
	sw	$2, 36($fp)
	lw	$4, 108($fp)
	addiu	$5, $fp, 72
	addiu	$6, $fp, 40
	lw	$7, 104($fp)
	lw	$25, %got(regularize_k)($1)
	.reloc ($tmp158), R_MIPS_JALR, regularize_k
$tmp158:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	sw	$2, 28($fp)
	lw	$4, 112($fp)
	lw	$1, 104($fp)
	addiu	$2, $zero, 68
	addu	$5, $1, $2
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$2, $1, 1
	addiu	$1, $fp, 32
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$6, 0($1)
	lw	$1, 104($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lw	$3, 104($fp)
	move	$2, $sp
	sw	$3, 20($2)
	seh	$1, $1
	sw	$1, 16($2)
	lw	$25, %call16(EccPoint_mult)($gp)
	addiu	$7, $zero, 0
	.reloc ($tmp159), R_MIPS_JALR, EccPoint_mult
$tmp159:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 112($fp)
	lw	$5, 104($fp)
	lw	$25, %got(EccPoint_isZero)($1)
	.reloc ($tmp160), R_MIPS_JALR, EccPoint_isZero
$tmp160:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB37_2
	nop
# %bb.1:
	b	$BB37_3
	nop
$BB37_2:
	addiu	$1, $zero, 0
	sw	$zero, 116($fp)
	b	$BB37_4
	nop
$BB37_3:
	addiu	$1, $zero, 1
	sw	$1, 116($fp)
$BB37_4:
	lw	$2, 116($fp)
	move	$sp, $fp
	lw	$fp, 120($sp)                   # 4-byte Folded Reload
	lw	$ra, 124($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 128
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
$func_end37:
	.size	EccPoint_compute_public_key, ($func_end37)-EccPoint_compute_public_key
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_nativeToBytes
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
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
	sw	$6, 12($fp)
	addiu	$1, $zero, 0
	sb	$zero, 11($fp)
$BB38_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 11($fp)
	seb	$1, $1
	lw	$2, 16($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB38_3
	nop
# %bb.2:
	b	$BB38_5
	nop
$BB38_3:                                #   in Loop: Header=BB38_1 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	lbu	$2, 11($fp)
	seb	$2, $2
	subu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	srl	$2, $2, 2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 4($fp)
	addiu	$3, $zero, 3
	and	$2, $2, $3
	sll	$2, $2, 3
	srlv	$1, $1, $2
	lw	$2, 20($fp)
	lbu	$3, 11($fp)
	seb	$3, $3
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB38_1 Depth=1
	lbu	$1, 11($fp)
	addiu	$1, $1, 1
	sb	$1, 11($fp)
	b	$BB38_1
	nop
$BB38_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
$func_end38:
	.size	uECC_vli_nativeToBytes, ($func_end38)-uECC_vli_nativeToBytes
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_bytesToNative
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
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
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	lw	$4, 36($fp)
	lw	$2, 28($fp)
	addiu	$3, $zero, 3
	addu	$3, $2, $3
	addiu	$2, $zero, 4
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp161), R_MIPS_JALR, uECC_vli_clear
$tmp161:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	sb	$zero, 27($fp)
$BB39_1:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 27($fp)
	seb	$1, $1
	lw	$2, 28($fp)
	slt	$1, $1, $2
	bgtz	$1, $BB39_3
	nop
# %bb.2:
	b	$BB39_5
	nop
$BB39_3:                                #   in Loop: Header=BB39_1 Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	lbu	$2, 27($fp)
	seb	$2, $2
	subu	$1, $1, $2
	sw	$1, 20($fp)
	lw	$1, 32($fp)
	lbu	$2, 27($fp)
	seb	$2, $2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$2, 20($fp)
	addiu	$3, $zero, 3
	and	$2, $2, $3
	sll	$2, $2, 3
	sllv	$3, $1, $2
	lw	$1, 36($fp)
	lw	$2, 20($fp)
	srl	$2, $2, 2
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 0($2)
	or	$1, $1, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB39_1 Depth=1
	lbu	$1, 27($fp)
	addiu	$1, $1, 1
	sb	$1, 27($fp)
	b	$BB39_1
	nop
$BB39_5:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_bytesToNative
$func_end39:
	.size	uECC_vli_bytesToNative, ($func_end39)-uECC_vli_bytesToNative
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_generate_random_int
uECC_generate_random_int:               # @uECC_generate_random_int
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
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 40($fp)
	sw	$5, 36($fp)
	sb	$6, 35($fp)
	lui	$2, 65535
	ori	$2, $2, 65535
	sw	$2, 28($fp)
	lw	$4, 36($fp)
	lbu	$2, 35($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_numBits)($1)
	.reloc ($tmp162), R_MIPS_JALR, uECC_vli_numBits
$tmp162:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sh	$2, 22($fp)
	lw	$1, %got(g_rng_function)($1)
	addiu	$1, $1, %lo(g_rng_function)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB40_2
	nop
# %bb.1:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	b	$BB40_14
	nop
$BB40_2:
	addiu	$1, $zero, 0
	sw	$zero, 24($fp)
$BB40_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 64
	sltu	$1, $1, $2
	bgtz	$1, $BB40_5
	nop
# %bb.4:
	b	$BB40_13
	nop
$BB40_5:                                #   in Loop: Header=BB40_3 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$1, %got(g_rng_function)($1)
	addiu	$1, $1, %lo(g_rng_function)
	lw	$25, 0($1)
	lw	$4, 40($fp)
	lbu	$1, 35($fp)
	seb	$1, $1
	sll	$5, $1, 2
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB40_7
	nop
# %bb.6:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	b	$BB40_14
	nop
$BB40_7:                                #   in Loop: Header=BB40_3 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	sll	$3, $3, 2
	sll	$3, $3, 3
	lhu	$4, 22($fp)
	seh	$4, $4
	subu	$3, $3, $4
	seh	$3, $3
	srlv	$4, $2, $3
	lw	$2, 40($fp)
	lbu	$3, 35($fp)
	seb	$3, $3
	addiu	$5, $zero, 1
	subu	$3, $3, $5
	sll	$3, $3, 2
	addu	$3, $2, $3
	lw	$2, 0($3)
	and	$2, $2, $4
	sw	$2, 0($3)
	lw	$4, 40($fp)
	lbu	$2, 35($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp163), R_MIPS_JALR, uECC_vli_isZero
$tmp163:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB40_11
	nop
# %bb.8:                                #   in Loop: Header=BB40_3 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 40($fp)
	lbu	$2, 35($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp)($1)
	.reloc ($tmp164), R_MIPS_JALR, uECC_vli_cmp
$tmp164:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	bgtz	$1, $BB40_10
	nop
# %bb.9:                                #   in Loop: Header=BB40_3 Depth=1
	b	$BB40_11
	nop
$BB40_10:
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
	b	$BB40_14
	nop
$BB40_11:                               #   in Loop: Header=BB40_3 Depth=1
	b	$BB40_12
	nop
$BB40_12:                               #   in Loop: Header=BB40_3 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB40_3
	nop
$BB40_13:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
$BB40_14:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
$func_end40:
	.size	uECC_generate_random_int, ($func_end40)-uECC_generate_random_int
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_point
uECC_valid_point:                       # @uECC_valid_point
	.frame	$fp,112,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$fp, 104($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 96($fp)
	sw	$5, 92($fp)
	lw	$2, 92($fp)
	lbu	$2, 0($2)
	sb	$2, 27($fp)
	lw	$4, 96($fp)
	lw	$5, 92($fp)
	lw	$25, %got(EccPoint_isZero)($1)
	.reloc ($tmp165), R_MIPS_JALR, EccPoint_isZero
$tmp165:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB41_2
	nop
# %bb.1:
	b	$BB41_3
	nop
$BB41_2:
	lui	$1, 65535
	ori	$1, $1, 65535
	sw	$1, 100($fp)
	b	$BB41_11
	nop
$BB41_3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 92($fp)
	addiu	$3, $zero, 4
	addu	$4, $2, $3
	lw	$5, 96($fp)
	lbu	$2, 27($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp166), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp166:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB41_6
	nop
# %bb.4:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 92($fp)
	addiu	$3, $zero, 4
	addu	$4, $2, $3
	lw	$2, 96($fp)
	lbu	$3, 27($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 27($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp167), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp167:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB41_6
	nop
# %bb.5:
	b	$BB41_7
	nop
$BB41_6:
	lui	$1, 65535
	ori	$1, $1, 65534
	sw	$1, 100($fp)
	b	$BB41_11
	nop
$BB41_7:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 60
	lw	$2, 96($fp)
	lbu	$3, 27($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$6, 92($fp)
	lw	$1, %got(uECC_vli_modSquare_fast)($1)
	addiu	$25, $1, %lo(uECC_vli_modSquare_fast)
	.reloc ($tmp168), R_MIPS_JALR, uECC_vli_modSquare_fast
$tmp168:
	jalr	$25
	nop
	lw	$1, 92($fp)
	lw	$25, 168($1)
	addiu	$4, $fp, 28
	lw	$5, 96($fp)
	lw	$6, 92($fp)
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 60
	addiu	$5, $fp, 28
	lbu	$2, 27($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_equal)($1)
	.reloc ($tmp169), R_MIPS_JALR, uECC_vli_equal
$tmp169:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB41_9
	nop
# %bb.8:
	b	$BB41_10
	nop
$BB41_9:
	lui	$1, 65535
	ori	$1, $1, 65533
	sw	$1, 100($fp)
	b	$BB41_11
	nop
$BB41_10:
	addiu	$1, $zero, 0
	sw	$zero, 100($fp)
$BB41_11:
	lw	$2, 100($fp)
	move	$sp, $fp
	lw	$fp, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 112
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_point
$func_end41:
	.size	uECC_valid_point, ($func_end41)-uECC_valid_point
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_public_key
uECC_valid_public_key:                  # @uECC_valid_public_key
	.frame	$fp,104,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -104
	sw	$ra, 100($sp)                   # 4-byte Folded Spill
	sw	$fp, 96($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 88($fp)
	sw	$5, 84($fp)
	addiu	$4, $fp, 20
	lw	$5, 88($fp)
	lw	$2, 84($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp170), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp170:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 20
	lw	$3, 84($fp)
	lbu	$3, 0($3)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$2, 88($fp)
	lw	$3, 84($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$5, $2, $3
	lw	$2, 84($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp171), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp171:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 20
	lw	$2, 84($fp)
	addiu	$3, $zero, 68
	addu	$5, $2, $3
	addiu	$2, $zero, 16
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp172), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp172:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB42_2
	nop
# %bb.1:
	b	$BB42_3
	nop
$BB42_2:
	lui	$1, 65535
	ori	$1, $1, 65532
	sw	$1, 92($fp)
	b	$BB42_4
	nop
$BB42_3:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 20
	lw	$5, 84($fp)
	lw	$25, %got(uECC_valid_point)($1)
	.reloc ($tmp173), R_MIPS_JALR, uECC_valid_point
$tmp173:
	jalr	$25
	nop
	sw	$2, 92($fp)
$BB42_4:
	lw	$2, 92($fp)
	move	$sp, $fp
	lw	$fp, 96($sp)                    # 4-byte Folded Reload
	lw	$ra, 100($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 104
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_public_key
$func_end42:
	.size	uECC_valid_public_key, ($func_end42)-uECC_valid_public_key
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_compute_public_key
uECC_compute_public_key:                # @uECC_compute_public_key
	.frame	$fp,144,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$fp, 136($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 128($fp)
	sw	$5, 124($fp)
	sw	$6, 120($fp)
	addiu	$4, $fp, 88
	lw	$5, 128($fp)
	lw	$2, 120($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 7
	addu	$3, $2, $3
	addiu	$2, $zero, 8
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$6
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp174), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp174:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	lw	$2, 120($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp175), R_MIPS_JALR, uECC_vli_isZero
$tmp175:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB43_2
	nop
# %bb.1:
	b	$BB43_3
	nop
$BB43_2:
	addiu	$1, $zero, 0
	sw	$zero, 132($fp)
	b	$BB43_9
	nop
$BB43_3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 120($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	addiu	$5, $fp, 88
	lw	$2, 120($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp)($1)
	.reloc ($tmp176), R_MIPS_JALR, uECC_vli_cmp
$tmp176:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB43_5
	nop
# %bb.4:
	b	$BB43_6
	nop
$BB43_5:
	addiu	$1, $zero, 0
	sw	$zero, 132($fp)
	b	$BB43_9
	nop
$BB43_6:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 88
	lw	$6, 120($fp)
	lw	$25, %got(EccPoint_compute_public_key)($1)
	.reloc ($tmp177), R_MIPS_JALR, EccPoint_compute_public_key
$tmp177:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB43_8
	nop
# %bb.7:
	addiu	$1, $zero, 0
	sw	$zero, 132($fp)
	b	$BB43_9
	nop
$BB43_8:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 124($fp)
	lw	$2, 120($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$6, $fp, 24
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp178), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp178:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 124($fp)
	lw	$3, 120($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$4, $2, $3
	lw	$2, 120($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$2, $fp, 24
	lw	$3, 120($fp)
	lbu	$3, 0($3)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$6, $2, $3
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp179), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp179:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 132($fp)
$BB43_9:
	lw	$2, 132($fp)
	move	$sp, $fp
	lw	$fp, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 144
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
$func_end43:
	.size	uECC_compute_public_key, ($func_end43)-uECC_compute_public_key
                                        # -- End function
	.p2align	2                               # -- Begin function muladd
	.type	muladd,@function
	.set	nomicromips
	.set	nomips16
	.ent	muladd
muladd:                                 # @muladd
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 56($fp)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	sw	$7, 16($fp)
	lw	$1, 28($fp)
	lw	$2, 24($fp)
	multu	$1, $2
	mfhi	$1
	mflo	$2
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	lw	$1, 0($1)
	lw	$2, 20($fp)
	lw	$2, 0($2)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$2, 12($fp)
	lw	$4, 8($fp)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $4
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	lw	$4, 12($fp)
	lw	$5, 8($fp)
	sltu	$3, $2, $5
	xor	$2, $2, $5
	sltu	$1, $1, $4
	movz	$3, $1, $2
	lw	$2, 56($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$1, 0($fp)
	lw	$2, 16($fp)
	sw	$1, 0($2)
	lw	$1, 4($fp)
	lw	$2, 20($fp)
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	muladd
$func_end44:
	.size	muladd, ($func_end44)-muladd
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.data
	.p2align	2, 0x0
g_rng_function:
	.4byte	default_CSPRNG
	.size	g_rng_function, 4

	.type	$__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
$__const.x_side_default._3:
	.4byte	3                               # 0x3
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.size	$__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	2, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.2byte	256                             # 0x100
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	1                               # 0x1
	.4byte	4294967295                      # 0xffffffff
	.4byte	4234356049                      # 0xfc632551
	.4byte	4089039554                      # 0xf3b9cac2
	.4byte	2803342980                      # 0xa7179e84
	.4byte	3169254061                      # 0xbce6faad
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	4294967295                      # 0xffffffff
	.4byte	3633889942                      # 0xd898c296
	.4byte	4104206661                      # 0xf4a13945
	.4byte	770388896                       # 0x2deb33a0
	.4byte	1996717441                      # 0x77037d81
	.4byte	1671708914                      # 0x63a440f2
	.4byte	4173129445                      # 0xf8bce6e5
	.4byte	3777774151                      # 0xe12c4247
	.4byte	1796723186                      # 0x6b17d1f2
	.4byte	935285237                       # 0x37bf51f5
	.4byte	3417718888                      # 0xcbb64068
	.4byte	1798397646                      # 0x6b315ece
	.4byte	734933847                       # 0x2bce3357
	.4byte	2081398294                      # 0x7c0f9e16
	.4byte	2397563722                      # 0x8ee7eb4a
	.4byte	4263149467                      # 0xfe1a7f9b
	.4byte	1340293858                      # 0x4fe342e2
	.4byte	668098635                       # 0x27d2604b
	.4byte	1003371582                      # 0x3bce3c3e
	.4byte	3428036854                      # 0xcc53b0f6
	.4byte	1696401072                      # 0x651d06b0
	.4byte	1989707452                      # 0x769886bc
	.4byte	3018571093                      # 0xb3ebbd55
	.4byte	2855965671                      # 0xaa3a93e7
	.4byte	1522939352                      # 0x5ac635d8
	.4byte	double_jacobian_default
	.4byte	x_side_default
	.4byte	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 176

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym vli_numDigits
	.addrsig_sym uECC_vli_set
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_equal
	.addrsig_sym cond_set
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_add
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_rshift1
	.addrsig_sym uECC_vli_mult
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym vli_modInv_update
	.addrsig_sym double_jacobian_default
	.addrsig_sym uECC_vli_modSquare_fast
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym EccPoint_isZero
	.addrsig_sym apply_z
	.addrsig_sym XYcZ_add
	.addrsig_sym EccPoint_mult
	.addrsig_sym XYcZ_initial_double
	.addrsig_sym XYcZ_addC
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_valid_point
	.addrsig_sym default_CSPRNG
	.addrsig_sym muladd
	.addrsig_sym g_rng_function
	.addrsig_sym curve_secp256r1
	.text
