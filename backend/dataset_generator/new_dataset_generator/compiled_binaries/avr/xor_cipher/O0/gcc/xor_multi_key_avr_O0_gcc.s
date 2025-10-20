	.file	"xor_multi_key.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
	push r16
	push r17
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
/* stack size = 16 */
.L__stack_usage = 16
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	std Y+12,r17
	std Y+11,r16
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+11
	ldd r19,Y+12
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r20,X
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	mov r18,r30
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+11
	ldd r19,Y+12
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r20,X
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	mov r18,r30
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L3
	nop
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (GNU) 7.3.0"
