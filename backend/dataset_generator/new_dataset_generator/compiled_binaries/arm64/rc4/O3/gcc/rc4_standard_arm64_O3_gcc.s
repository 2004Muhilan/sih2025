	.arch armv8-a
	.file	"rc4_standard.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_init
	.type	rc4_init, %function
rc4_init:
.LFB14:
	.cfi_startproc
	adrp	x3, .LC0
	adrp	x5, .LC4
	adrp	x4, .LC3
	ldr	q0, [x3, #:lo12:.LC0]
	adrp	x3, .LC1
	ldr	q1, [x5, #:lo12:.LC4]
	adrp	x5, .LC5
	ldr	q4, [x3, #:lo12:.LC1]
	adrp	x3, .LC2
	ldr	q2, [x4, #:lo12:.LC3]
	str	q1, [x0, 64]
	mov	w4, 0
	ldr	q3, [x3, #:lo12:.LC2]
	stp	q0, q4, [x0]
	mov	x3, 0
	ldr	q0, [x5, #:lo12:.LC5]
	adrp	x5, .LC6
	stp	q3, q2, [x0, 32]
	ldr	q4, [x5, #:lo12:.LC6]
	adrp	x5, .LC7
	ldr	q3, [x5, #:lo12:.LC7]
	adrp	x5, .LC8
	stp	q0, q4, [x0, 80]
	ldr	q2, [x5, #:lo12:.LC8]
	adrp	x5, .LC9
	ldr	q1, [x5, #:lo12:.LC9]
	adrp	x5, .LC10
	stp	q3, q2, [x0, 112]
	ldr	q0, [x5, #:lo12:.LC10]
	adrp	x5, .LC11
	str	q1, [x0, 144]
	ldr	q4, [x5, #:lo12:.LC11]
	adrp	x5, .LC12
	ldr	q3, [x5, #:lo12:.LC12]
	adrp	x5, .LC13
	stp	q0, q4, [x0, 160]
	ldr	q2, [x5, #:lo12:.LC13]
	adrp	x5, .LC14
	ldr	q1, [x5, #:lo12:.LC14]
	adrp	x5, .LC15
	stp	q3, q2, [x0, 192]
	ldr	q0, [x5, #:lo12:.LC15]
	str	q1, [x0, 224]
	str	q0, [x0, 240]
	.p2align 3,,7
.L2:
	ldrb	w7, [x0, x3]
	udiv	x6, x3, x2
	add	w5, w4, w7
	msub	x4, x6, x2, x3
	ldrb	w4, [x1, x4]
	add	w4, w4, w5
	and	w5, w4, 255
	and	w4, w4, 255
	ldrb	w6, [x0, w5, sxtw]
	strb	w6, [x0, x3]
	add	x3, x3, 1
	strb	w7, [x0, w5, sxtw]
	cmp	x3, 256
	bne	.L2
	strh	wzr, [x0, 256]
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.align	2
	.p2align 4,,11
	.global	rc4_crypt
	.type	rc4_crypt, %function
rc4_crypt:
.LFB15:
	.cfi_startproc
	cbz	x2, .L5
	add	x6, x1, x2
	.p2align 3,,7
.L7:
	ldrb	w2, [x0, 256]
	ldrb	w4, [x0, 257]
	add	w2, w2, 1
	strb	w2, [x0, 256]
	and	w2, w2, 255
	ldrb	w3, [x0, w2, sxtw]
	add	w4, w3, w4
	and	w4, w4, 255
	strb	w4, [x0, 257]
	ldrb	w5, [x0, w4, sxtw]
	strb	w5, [x0, w2, sxtw]
	strb	w3, [x0, w4, sxtw]
	ldrb	w2, [x0, w2, sxtw]
	ldrb	w4, [x1]
	add	w3, w3, w2
	and	w3, w3, 255
	ldrb	w2, [x0, w3, sxtw]
	eor	w2, w2, w4
	strb	w2, [x1], 1
	cmp	x6, x1
	bne	.L7
.L5:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.p2align 4,,11
	.global	rc4_encrypt
	.type	rc4_encrypt, %function
rc4_encrypt:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	mov	x11, x1
	adrp	x1, .LC2
	adrp	x5, .LC0
	mov	w6, 0
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 272
	ldr	q21, [x1, #:lo12:.LC2]
	mov	x1, x2
	adrp	x2, .LC3
	stp	x19, x20, [sp, 288]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, sp
	ldr	q20, [x2, #:lo12:.LC3]
	adrp	x2, .LC4
	ldr	q23, [x5, #:lo12:.LC0]
	adrp	x5, .LC1
	ldr	q19, [x2, #:lo12:.LC4]
	adrp	x2, .LC5
	ldr	q22, [x5, #:lo12:.LC1]
	mov	x20, x3
	ldr	q18, [x2, #:lo12:.LC5]
	adrp	x2, .LC6
	mov	x9, x19
	mov	x5, 0
	ldr	q17, [x2, #:lo12:.LC6]
	adrp	x2, .LC7
	ldr	q16, [x2, #:lo12:.LC7]
	adrp	x2, .LC8
	ldr	q7, [x2, #:lo12:.LC8]
	adrp	x2, .LC9
	ldr	q6, [x2, #:lo12:.LC9]
	adrp	x2, .LC10
	ldr	q5, [x2, #:lo12:.LC10]
	adrp	x2, .LC11
	ldr	q4, [x2, #:lo12:.LC11]
	adrp	x2, .LC12
	ldr	q3, [x2, #:lo12:.LC12]
	adrp	x2, .LC13
	ldr	q2, [x2, #:lo12:.LC13]
	adrp	x2, .LC14
	ldr	q1, [x2, #:lo12:.LC14]
	adrp	x2, .LC15
	ldr	q0, [x2, #:lo12:.LC15]
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	stp	q23, q22, [sp]
	stp	q21, q20, [sp, 32]
	stp	q19, q18, [sp, 64]
	stp	q17, q16, [sp, 96]
	stp	q7, q6, [sp, 128]
	stp	q5, q4, [sp, 160]
	stp	q3, q2, [sp, 192]
	stp	q1, q0, [sp, 224]
	.p2align 3,,7
.L13:
	ldrb	w10, [x9]
	udiv	x8, x5, x11
	add	w7, w6, w10
	msub	x6, x8, x11, x5
	add	x5, x5, 1
	ldrb	w6, [x0, x6]
	add	w6, w6, w7
	and	w7, w6, 255
	and	w6, w6, 255
	ldrb	w8, [x19, w7, sxtw]
	strb	w8, [x9], 1
	strb	w10, [x19, w7, sxtw]
	cmp	x5, 256
	bne	.L13
	mov	x0, x4
	mov	x2, x20
	bl	memcpy
	mov	x4, x0
	cbz	x20, .L12
	mov	w6, 0
	mov	x5, 0
	.p2align 3,,7
.L15:
	and	w1, w5, 255
	ldrb	w2, [x4, x5]
	add	w1, w1, 1
	and	w1, w1, 255
	ldrb	w0, [x19, w1, sxtw]
	add	w6, w0, w6
	and	w6, w6, 255
	ldrb	w3, [x19, w6, sxtw]
	strb	w3, [x19, w1, sxtw]
	strb	w0, [x19, w6, sxtw]
	ldrb	w1, [x19, w1, sxtw]
	add	w0, w0, w1
	and	w0, w0, 255
	ldrb	w0, [x19, w0, sxtw]
	eor	w0, w0, w2
	strb	w0, [x4, x5]
	add	x5, x5, 1
	cmp	x20, x5
	bne	.L15
.L12:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L23
	ldp	x29, x30, [sp, 272]
	ldp	x19, x20, [sp, 288]
	add	sp, sp, 304
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L23:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.p2align 4,,11
	.global	rc4_decrypt
	.type	rc4_decrypt, %function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	b	rc4_encrypt
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.align	4
.LC1:
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.align	4
.LC2:
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.align	4
.LC3:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.align	4
.LC4:
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.align	4
.LC5:
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.align	4
.LC6:
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.align	4
.LC7:
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.align	4
.LC8:
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.align	4
.LC9:
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.align	4
.LC10:
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.align	4
.LC11:
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.align	4
.LC12:
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.align	4
.LC13:
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.align	4
.LC14:
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.align	4
.LC15:
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
