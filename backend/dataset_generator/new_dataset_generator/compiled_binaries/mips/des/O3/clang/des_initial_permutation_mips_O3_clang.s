	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         # -- Begin function des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_initial_permutation
des_initial_permutation:                # @des_initial_permutation
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
	addiu	$6, $zero, 0
	addiu	$8, $zero, 64
	addiu	$9, $zero, 1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
	lw	$1, %got(IP)($1)
	addiu	$7, $1, %lo(IP)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $7, $6
	move	$11, $5
	addiu	$13, $zero, 0
	lbu	$1, 0($1)
	subu	$1, $8, $1
	andi	$10, $1, 32
	movn	$11, $4, $10
	xori	$10, $6, 63
	addiu	$6, $6, 1
	srlv	$1, $11, $1
	sllv	$12, $9, $10
	andi	$10, $10, 32
	andi	$1, $1, 1
	movn	$13, $12, $10
	movn	$12, $zero, $10
	negu	$1, $1
	and	$10, $1, $12
	and	$1, $1, $13
	or	$3, $10, $3
	bne	$6, $8, $BB0_1
	or	$2, $1, $2
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_initial_permutation
$func_end0:
	.size	des_initial_permutation, ($func_end0)-des_initial_permutation
                                        # -- End function
	.type	IP,@object                      # @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
