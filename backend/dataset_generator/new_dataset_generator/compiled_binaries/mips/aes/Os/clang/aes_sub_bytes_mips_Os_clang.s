	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_sub_bytes
aes_sub_bytes:                          # @aes_sub_bytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	addiu	$2, $zero, 0
	lw	$1, %got(sbox)($1)
	addiu	$3, $1, %lo(sbox)
	addiu	$5, $zero, 16
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $2
	lbu	$6, 0($1)
	addu	$6, $3, $6
	lbu	$6, 0($6)
	addiu	$2, $2, 1
	bne	$2, $5, $BB0_1
	sb	$6, 0($1)
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_sub_bytes
$func_end0:
	.size	aes_sub_bytes, ($func_end0)-aes_sub_bytes
                                        # -- End function
	.globl	aes_inv_sub_bytes               # -- Begin function aes_inv_sub_bytes
	.p2align	2
	.type	aes_inv_sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_inv_sub_bytes
aes_inv_sub_bytes:                      # @aes_inv_sub_bytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	addiu	$2, $zero, 0
	lw	$1, %got(aes_inv_sub_bytes.inv_sbox)($1)
	addiu	$3, $1, %lo(aes_inv_sub_bytes.inv_sbox)
	addiu	$5, $zero, 16
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $2
	lbu	$6, 0($1)
	addu	$6, $3, $6
	lbu	$6, 0($6)
	addiu	$2, $2, 1
	bne	$2, $5, $BB1_1
	sb	$6, 0($1)
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_inv_sub_bytes
$func_end1:
	.size	aes_inv_sub_bytes, ($func_end1)-aes_inv_sub_bytes
                                        # -- End function
	.type	aes_inv_sub_bytes.inv_sbox,@object # @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",@progbits
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.space	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,@object                    # @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.space	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
