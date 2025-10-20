	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               # -- Begin function xor_cipher_simple
	.p2align	2
	.type	xor_cipher_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cipher_simple
xor_cipher_simple:                      # @xor_cipher_simple
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
	lbu	$1, 0($1)
	xor	$1, $8, $1
	bne	$5, $2, $BB0_2
	sb	$1, 0($3)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cipher_simple
$func_end0:
	.size	xor_cipher_simple, ($func_end0)-xor_cipher_simple
                                        # -- End function
	.globl	xor_encrypt_simple              # -- Begin function xor_encrypt_simple
	.p2align	2
	.type	xor_encrypt_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_simple
xor_encrypt_simple:                     # @xor_encrypt_simple
	.frame	$sp,40,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	lw	$19, 56($sp)
	move	$18, $5
	move	$17, $6
	move	$5, $4
	move	$16, $7
	lw	$25, %call16(memcpy)($gp)
	move	$6, $18
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$4, $19
	beqz	$18, $BB1_3
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB1_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $16
	addu	$3, $19, $2
	teq	$16, $zero, 7
	addiu	$2, $2, 1
	lbu	$4, 0($3)
	mfhi	$1
	addu	$1, $17, $1
	lbu	$1, 0($1)
	xor	$1, $4, $1
	bne	$18, $2, $BB1_2
	sb	$1, 0($3)
$BB1_3:
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	xor_encrypt_simple
$func_end1:
	.size	xor_encrypt_simple, ($func_end1)-xor_encrypt_simple
                                        # -- End function
	.globl	xor_decrypt_simple              # -- Begin function xor_decrypt_simple
	.p2align	2
	.type	xor_decrypt_simple,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_simple
xor_decrypt_simple:                     # @xor_decrypt_simple
	.frame	$sp,40,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	lw	$19, 56($sp)
	move	$18, $5
	move	$17, $6
	move	$5, $4
	move	$16, $7
	lw	$25, %call16(memcpy)($gp)
	move	$6, $18
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	move	$4, $19
	beqz	$18, $BB2_3
	nop
# %bb.1:
	addiu	$2, $zero, 0
$BB2_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $16
	addu	$3, $19, $2
	teq	$16, $zero, 7
	addiu	$2, $2, 1
	lbu	$4, 0($3)
	mfhi	$1
	addu	$1, $17, $1
	lbu	$1, 0($1)
	xor	$1, $4, $1
	bne	$18, $2, $BB2_2
	sb	$1, 0($3)
$BB2_3:
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	xor_decrypt_simple
$func_end2:
	.size	xor_decrypt_simple, ($func_end2)-xor_decrypt_simple
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
