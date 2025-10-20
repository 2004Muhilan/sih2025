	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             # -- Begin function xor_cipher_feedback
	.p2align	2
	.type	xor_cipher_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cipher_feedback
xor_cipher_feedback:                    # @xor_cipher_feedback
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	beqz	$2, $BB0_3
	nop
# %bb.1:
	lbu	$2, 0($2)
	bnez	$5, $BB0_4
	nop
# %bb.2:
	b	$BB0_6
	nop
$BB0_3:
	beqz	$5, $BB0_6
	addiu	$2, $zero, 0
$BB0_4:
	addiu	$3, $zero, 0
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $3, $7
	teq	$7, $zero, 7
	mfhi	$1
	addu	$1, $6, $1
	lbu	$1, 0($1)
	xor	$1, $1, $2
	addu	$8, $4, $3
	lbu	$2, 0($8)
	xor	$1, $1, $2
	addiu	$3, $3, 1
	bne	$5, $3, $BB0_5
	sb	$1, 0($8)
$BB0_6:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cipher_feedback
$func_end0:
	.size	xor_cipher_feedback, ($func_end0)-xor_cipher_feedback
                                        # -- End function
	.globl	xor_encrypt_feedback            # -- Begin function xor_encrypt_feedback
	.p2align	2
	.type	xor_encrypt_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_encrypt_feedback
xor_encrypt_feedback:                   # @xor_encrypt_feedback
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
	move	$16, $7
	move	$17, $6
	move	$18, $5
	move	$5, $4
	lw	$19, 60($sp)
	lw	$25, %call16(memcpy)($gp)
	move	$4, $19
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$6, $18
	beqz	$18, $BB1_3
	nop
# %bb.1:
	lw	$3, 56($sp)
	addiu	$2, $zero, 0
$BB1_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $16
	teq	$16, $zero, 7
	mfhi	$1
	addu	$1, $17, $1
	lbu	$1, 0($1)
	xor	$1, $1, $3
	addu	$4, $19, $2
	lbu	$3, 0($4)
	xor	$1, $1, $3
	addiu	$2, $2, 1
	bne	$18, $2, $BB1_2
	sb	$1, 0($4)
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
	.end	xor_encrypt_feedback
$func_end1:
	.size	xor_encrypt_feedback, ($func_end1)-xor_encrypt_feedback
                                        # -- End function
	.globl	xor_decrypt_feedback            # -- Begin function xor_decrypt_feedback
	.p2align	2
	.type	xor_decrypt_feedback,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_decrypt_feedback
xor_decrypt_feedback:                   # @xor_decrypt_feedback
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$5, $BB2_3
	nop
# %bb.1:
	lw	$2, 20($sp)
	lw	$8, 16($sp)
	addiu	$3, $zero, 0
$BB2_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $3, $7
	teq	$7, $zero, 7
	mfhi	$1
	addu	$1, $6, $1
	lbu	$1, 0($1)
	xor	$1, $1, $8
	addu	$8, $4, $3
	lbu	$8, 0($8)
	xor	$1, $1, $8
	addu	$9, $2, $3
	addiu	$3, $3, 1
	bne	$5, $3, $BB2_2
	sb	$1, 0($9)
$BB2_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
$func_end2:
	.size	xor_decrypt_feedback, ($func_end2)-xor_decrypt_feedback
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
