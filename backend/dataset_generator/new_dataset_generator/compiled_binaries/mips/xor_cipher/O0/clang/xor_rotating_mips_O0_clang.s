	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             # -- Begin function xor_cipher_rotating
	.p2align	2
	.type	xor_cipher_rotating,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cipher_rotating
xor_cipher_rotating:                    # @xor_cipher_rotating
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
	sw	$7, 32($fp)
	addiu	$1, $zero, 0
	sw	$zero, 28($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	lw	$2, 40($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)
	lw	$4, 28($fp)
	lw	$3, 32($fp)
	divu	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	addu	$2, $2, $3
	lbu	$2, 0($2)
	sb	$2, 27($fp)
	lbu	$2, 27($fp)
	andi	$4, $2, 255
	lw	$2, 44($fp)
	lw	$3, 28($fp)
	addu	$3, $2, $3
	lbu	$2, 0($3)
	andi	$2, $2, 255
	xor	$2, $2, $4
	sb	$2, 0($3)
	lbu	$2, 27($fp)
	addiu	$5, $zero, 1
	andi	$4, $2, 255
	lw	$1, %got(rotate_left)($1)
	addiu	$25, $1, %lo(rotate_left)
	.reloc ($tmp0), R_MIPS_JALR, rotate_left
$tmp0:
	jalr	$25
	nop
	lw	$1, 36($fp)
	lw	$4, 28($fp)
	lw	$3, 32($fp)
	divu	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	addu	$1, $1, $3
	sb	$2, 0($1)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 28($fp)
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
	.end	xor_cipher_rotating
$func_end0:
	.size	xor_cipher_rotating, ($func_end0)-xor_cipher_rotating
                                        # -- End function
	.p2align	2                               # -- Begin function rotate_left
	.type	rotate_left,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotate_left
rotate_left:                            # @rotate_left
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
	sb	$4, 7($fp)
	sw	$5, 0($fp)
	lbu	$1, 7($fp)
	andi	$1, $1, 255
	lw	$2, 0($fp)
	sllv	$1, $1, $2
	lbu	$2, 7($fp)
	andi	$2, $2, 255
	lw	$4, 0($fp)
	addiu	$3, $zero, 8
	subu	$3, $3, $4
	srav	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotate_left
$func_end1:
	.size	rotate_left, ($func_end1)-rotate_left
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	2
	.type	xor_encrypt_rotating,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_rotating
xor_encrypt_rotating:                   # @xor_encrypt_rotating
	.frame	$fp,304,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -304
	sw	$ra, 300($sp)                   # 4-byte Folded Spill
	sw	$fp, 296($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 320($fp)
	sw	$4, 292($fp)
	sw	$5, 288($fp)
	sw	$6, 284($fp)
	sw	$7, 280($fp)
	lw	$4, 320($fp)
	lw	$5, 292($fp)
	lw	$6, 288($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 284($fp)
	lw	$6, 280($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 320($fp)
	lw	$5, 288($fp)
	addiu	$6, $fp, 24
	lw	$7, 280($fp)
	lw	$25, %got(xor_cipher_rotating)($1)
	.reloc ($tmp3), R_MIPS_JALR, xor_cipher_rotating
$tmp3:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 296($sp)                   # 4-byte Folded Reload
	lw	$ra, 300($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 304
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_encrypt_rotating
$func_end2:
	.size	xor_encrypt_rotating, ($func_end2)-xor_encrypt_rotating
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	2
	.type	xor_decrypt_rotating,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_rotating
xor_decrypt_rotating:                   # @xor_decrypt_rotating
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
	addu	$gp, $2, $25
	lw	$1, 64($fp)
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$7, 24($fp)
	lw	$1, 64($fp)
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(xor_encrypt_rotating)($gp)
	.reloc ($tmp4), R_MIPS_JALR, xor_encrypt_rotating
$tmp4:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_decrypt_rotating
$func_end3:
	.size	xor_decrypt_rotating, ($func_end3)-xor_decrypt_rotating
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_rotating
	.addrsig_sym rotate_left
	.addrsig_sym xor_encrypt_rotating
	.text
