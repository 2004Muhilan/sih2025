	.file	"des3_triple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des3_encrypt
	.type	des3_encrypt, @function
des3_encrypt:
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
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r25,Y+1
	ldd r24,Y+9
	eor r24,r25
	std Y+1,r24
	ldd r25,Y+2
	ldd r24,Y+10
	eor r24,r25
	std Y+2,r24
	ldd r25,Y+3
	ldd r24,Y+11
	eor r24,r25
	std Y+3,r24
	ldd r25,Y+4
	ldd r24,Y+12
	eor r24,r25
	std Y+4,r24
	ldd r25,Y+5
	ldd r24,Y+13
	eor r24,r25
	std Y+5,r24
	ldd r25,Y+6
	ldd r24,Y+14
	eor r24,r25
	std Y+6,r24
	ldd r25,Y+7
	ldd r24,Y+15
	eor r24,r25
	std Y+7,r24
	ldd r25,Y+8
	ldd r24,Y+16
	eor r24,r25
	std Y+8,r24
	ldd r25,Y+1
	ldd r24,Y+29
	eor r24,r25
	std Y+1,r24
	ldd r25,Y+2
	ldd r24,Y+30
	eor r24,r25
	std Y+2,r24
	ldd r25,Y+3
	ldd r24,Y+31
	eor r24,r25
	std Y+3,r24
	ldd r25,Y+4
	ldd r24,Y+32
	eor r24,r25
	std Y+4,r24
	ldd r25,Y+5
	ldd r24,Y+33
	eor r24,r25
	std Y+5,r24
	ldd r25,Y+6
	ldd r24,Y+34
	eor r24,r25
	std Y+6,r24
	ldd r25,Y+7
	ldd r24,Y+35
	eor r24,r25
	std Y+7,r24
	ldd r25,Y+8
	ldd r24,Y+36
	eor r24,r25
	std Y+8,r24
	ldd r25,Y+1
	ldd r24,Y+37
	eor r24,r25
	std Y+1,r24
	ldd r25,Y+2
	ldd r24,Y+38
	eor r24,r25
	std Y+2,r24
	ldd r25,Y+3
	ldd r24,Y+39
	eor r24,r25
	std Y+3,r24
	ldd r25,Y+4
	ldd r24,Y+40
	eor r24,r25
	std Y+4,r24
	ldd r25,Y+5
	ldd r24,Y+41
	eor r24,r25
	std Y+5,r24
	ldd r25,Y+6
	ldd r24,Y+42
	eor r24,r25
	std Y+6,r24
	ldd r25,Y+7
	ldd r24,Y+43
	eor r24,r25
	std Y+7,r24
	ldd r25,Y+8
	ldd r24,Y+44
	eor r24,r25
	std Y+8,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
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
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (GNU) 7.3.0"
