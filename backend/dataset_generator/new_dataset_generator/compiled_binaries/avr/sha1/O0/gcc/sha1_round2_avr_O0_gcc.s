	.file	"sha1_round2.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_round2
	.type	sha1_round2, @function
sha1_round2:
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 26 */
.L__stack_usage = 26
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	std Y+13,r10
	std Y+14,r11
	std Y+15,r12
	std Y+16,r13
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r18,r24
	movw r20,r26
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	add r18,r18
	adc r19,r19
	adc r20,r20
	adc r21,r21
	mov r0,r23
	ldi r23,27
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	eor r14,r18
	eor r15,r19
	eor r16,r20
	eor r17,r21
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	eor r18,r14
	eor r19,r15
	eor r20,r16
	eor r21,r17
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldd r24,Y+29
	ldd r25,Y+30
	ldd r26,Y+31
	ldd r27,Y+32
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	subi r24,95
	sbci r25,20
	sbci r26,38
	sbci r27,-111
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	ret
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (GNU) 7.3.0"
