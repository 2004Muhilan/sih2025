	.arch armv8-a
	.file	"rc4_vmpc.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_vmpc_variant
	.type	rc4_vmpc_variant, %function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	adrp	x3, .LC0
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	ldr	q0, [x3, #:lo12:.LC0]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	adrp	x2, .LC1
	ldr	q2, [x2, #:lo12:.LC1]
	adrp	x2, .LC2
	ldr	q1, [x2, #:lo12:.LC2]
	adrp	x2, .LC3
	stp	q0, q2, [sp]
	ldr	q0, [x2, #:lo12:.LC3]
	adrp	x2, .LC4
	str	q1, [sp, 32]
	ldr	q2, [x2, #:lo12:.LC4]
	adrp	x2, .LC5
	ldr	q1, [x2, #:lo12:.LC5]
	adrp	x2, .LC6
	stp	q0, q2, [sp, 48]
	ldr	q0, [x2, #:lo12:.LC6]
	adrp	x2, .LC7
	str	q1, [sp, 80]
	ldr	q2, [x2, #:lo12:.LC7]
	adrp	x2, .LC8
	ldr	q1, [x2, #:lo12:.LC8]
	adrp	x2, .LC9
	stp	q0, q2, [sp, 96]
	ldr	q0, [x2, #:lo12:.LC9]
	adrp	x2, .LC10
	str	q1, [sp, 128]
	ldr	q2, [x2, #:lo12:.LC10]
	adrp	x2, .LC11
	ldr	q1, [x2, #:lo12:.LC11]
	adrp	x2, .LC12
	stp	q0, q2, [sp, 144]
	ldr	q0, [x2, #:lo12:.LC12]
	adrp	x2, .LC13
	str	q1, [sp, 176]
	ldr	q2, [x2, #:lo12:.LC13]
	adrp	x2, .LC14
	ldr	q1, [x2, #:lo12:.LC14]
	adrp	x2, .LC15
	stp	q0, q2, [sp, 192]
	ldr	q0, [x2, #:lo12:.LC15]
	str	q1, [sp, 224]
	str	q0, [sp, 240]
	cbz	x1, .L1
	mov	x2, sp
	mov	x4, x0
	add	x5, x0, x1
	mov	w0, 0
	.p2align 3,,7
.L3:
	ldrb	w3, [x4]
	ldrb	w1, [x2, w3, sxtw]
	add	w0, w0, w1
	and	w0, w0, 255
	ldrb	w0, [x2, w0, sxtw]
	ldrb	w1, [x2, w0, sxtw]
	ldrb	w1, [x2, w1, sxtw]
	add	w1, w1, 1
	and	w1, w1, 255
	ldrb	w1, [x2, w1, sxtw]
	eor	w3, w3, w1
	strb	w3, [x4], 1
	cmp	x5, x4
	bne	.L3
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L11
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L11:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
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
