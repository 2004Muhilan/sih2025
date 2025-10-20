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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$5, $BB0_3
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $7
	addu	$3, $4, $2
	teq	$7, $zero, 7
	addiu	$2, $2, 1
	lbu	$8, 0($3)
	mfhi	$1
	addu	$1, $6, $1
	lbu	$9, 0($1)
	xor	$8, $8, $9
	sb	$8, 0($3)
	srl	$3, $9, 7
	sll	$8, $9, 1
	or	$3, $8, $3
	bne	$5, $2, $BB0_2
	sb	$3, 0($1)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cipher_rotating
$func_end0:
	.size	xor_cipher_rotating, ($func_end0)-xor_cipher_rotating
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	2
	.type	xor_encrypt_rotating,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_rotating
xor_encrypt_rotating:                   # @xor_encrypt_rotating
	.frame	$sp,304,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -304
	sw	$ra, 300($sp)                   # 4-byte Folded Spill
	sw	$21, 296($sp)                   # 4-byte Folded Spill
	sw	$20, 292($sp)                   # 4-byte Folded Spill
	sw	$19, 288($sp)                   # 4-byte Folded Spill
	sw	$18, 284($sp)                   # 4-byte Folded Spill
	sw	$17, 280($sp)                   # 4-byte Folded Spill
	sw	$16, 276($sp)                   # 4-byte Folded Spill
	addu	$20, $2, $25
	lw	$18, 320($sp)
	move	$17, $5
	move	$21, $6
	move	$5, $4
	move	$16, $7
	lw	$25, %call16(memcpy)($20)
	move	$6, $17
	move	$gp, $20
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$4, $18
	addiu	$19, $sp, 20
	lw	$25, %call16(memcpy)($20)
	move	$5, $21
	move	$6, $16
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	move	$4, $19
	beqz	$17, $BB1_3
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB1_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $16
	addu	$3, $18, $2
	teq	$16, $zero, 7
	addiu	$2, $2, 1
	lbu	$4, 0($3)
	mfhi	$1
	addu	$1, $19, $1
	lbu	$5, 0($1)
	xor	$4, $4, $5
	sb	$4, 0($3)
	srl	$3, $5, 7
	sll	$4, $5, 1
	or	$3, $4, $3
	bne	$17, $2, $BB1_2
	sb	$3, 0($1)
$BB1_3:
	lw	$16, 276($sp)                   # 4-byte Folded Reload
	lw	$17, 280($sp)                   # 4-byte Folded Reload
	lw	$18, 284($sp)                   # 4-byte Folded Reload
	lw	$19, 288($sp)                   # 4-byte Folded Reload
	lw	$20, 292($sp)                   # 4-byte Folded Reload
	lw	$21, 296($sp)                   # 4-byte Folded Reload
	lw	$ra, 300($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 304
	.set	at
	.set	macro
	.set	reorder
	.end	xor_encrypt_rotating
$func_end1:
	.size	xor_encrypt_rotating, ($func_end1)-xor_encrypt_rotating
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	2
	.type	xor_decrypt_rotating,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_rotating
xor_decrypt_rotating:                   # @xor_decrypt_rotating
	.frame	$sp,304,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -304
	sw	$ra, 300($sp)                   # 4-byte Folded Spill
	sw	$21, 296($sp)                   # 4-byte Folded Spill
	sw	$20, 292($sp)                   # 4-byte Folded Spill
	sw	$19, 288($sp)                   # 4-byte Folded Spill
	sw	$18, 284($sp)                   # 4-byte Folded Spill
	sw	$17, 280($sp)                   # 4-byte Folded Spill
	sw	$16, 276($sp)                   # 4-byte Folded Spill
	addu	$20, $2, $25
	lw	$18, 320($sp)
	move	$17, $5
	move	$21, $6
	move	$5, $4
	move	$16, $7
	lw	$25, %call16(memcpy)($20)
	move	$6, $17
	move	$gp, $20
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	move	$4, $18
	addiu	$19, $sp, 20
	lw	$25, %call16(memcpy)($20)
	move	$5, $21
	move	$6, $16
	.reloc ($tmp3), R_MIPS_JALR, memcpy
$tmp3:
	jalr	$25
	move	$4, $19
	beqz	$17, $BB2_3
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB2_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $16
	addu	$3, $18, $2
	teq	$16, $zero, 7
	addiu	$2, $2, 1
	lbu	$4, 0($3)
	mfhi	$1
	addu	$1, $19, $1
	lbu	$5, 0($1)
	xor	$4, $4, $5
	sb	$4, 0($3)
	srl	$3, $5, 7
	sll	$4, $5, 1
	or	$3, $4, $3
	bne	$17, $2, $BB2_2
	sb	$3, 0($1)
$BB2_3:
	lw	$16, 276($sp)                   # 4-byte Folded Reload
	lw	$17, 280($sp)                   # 4-byte Folded Reload
	lw	$18, 284($sp)                   # 4-byte Folded Reload
	lw	$19, 288($sp)                   # 4-byte Folded Reload
	lw	$20, 292($sp)                   # 4-byte Folded Reload
	lw	$21, 296($sp)                   # 4-byte Folded Reload
	lw	$ra, 300($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 304
	.set	at
	.set	macro
	.set	reorder
	.end	xor_decrypt_rotating
$func_end2:
	.size	xor_decrypt_rotating, ($func_end2)-xor_decrypt_rotating
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
