	.file	"aes_key_expansion.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r28,r24
	movw r30,r22
	ld r21,Y
	st Z,r21
	ldd r23,Y+1
	std Z+1,r23
	ldd r26,Y+2
	std Z+2,r26
	ldd r27,Y+3
	std Z+3,r27
	ldd r15,Y+4
	std Z+4,r15
	ldd r22,Y+5
	std Z+5,r22
	ldd r14,Y+6
	std Z+6,r14
	ldd r13,Y+7
	std Z+7,r13
	ldd r12,Y+8
	std Z+8,r12
	ldd r11,Y+9
	std Z+9,r11
	ldd r10,Y+10
	std Z+10,r10
	ldd r9,Y+11
	std Z+11,r9
	ldd r19,Y+12
	std Z+12,r19
	ldd r20,Y+13
	std Z+13,r20
	ldd r25,Y+14
	std Z+14,r25
	ldd r18,Y+15
	std Z+15,r18
	ldi r28,lo8(rcon)
	ldi r29,hi8(rcon)
	adiw r30,16
	ldi r16,lo8(rcon+10)
	ldi r17,hi8(rcon+10)
.L2:
	ld r24,Y+
	eor r24,r20
	eor r21,r24
	st Z,r21
	eor r23,r25
	std Z+1,r23
	eor r26,r18
	std Z+2,r26
	eor r27,r19
	std Z+3,r27
	eor r15,r24
	std Z+4,r15
	eor r22,r25
	std Z+5,r22
	eor r14,r18
	std Z+6,r14
	eor r13,r19
	std Z+7,r13
	eor r12,r24
	std Z+8,r12
	eor r11,r25
	std Z+9,r11
	eor r10,r18
	std Z+10,r10
	eor r9,r19
	std Z+11,r9
	eor r24,r19
	std Z+12,r24
	eor r20,r25
	std Z+13,r20
	eor r25,r18
	std Z+14,r25
	eor r18,r19
	std Z+15,r18
	adiw r30,16
	mov r19,r24
	cp r16,r28
	cpc r17,r29
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	ret
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
