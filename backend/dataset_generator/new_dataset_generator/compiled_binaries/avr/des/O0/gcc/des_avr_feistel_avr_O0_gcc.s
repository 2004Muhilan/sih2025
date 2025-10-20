	.file	"des_avr_feistel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_feistel_avr
	.type	des_feistel_avr, @function
des_feistel_avr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r18,Y+11
	ldd r19,Y+12
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsl r24
	rol r25
	rol r26
	rol r27
	adc r24,__zero_reg__
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L2:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,8
	brlt .L3
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	des_feistel_avr, .-des_feistel_avr
	.ident	"GCC: (GNU) 7.3.0"
