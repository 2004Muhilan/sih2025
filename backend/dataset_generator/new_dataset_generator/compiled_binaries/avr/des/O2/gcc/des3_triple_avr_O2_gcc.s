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
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
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
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r27,Y+27
	ldd r5,Y+28
	ldd r7,Y+29
	std Y+1,r7
	ldd r30,Y+30
	ldd r31,Y+31
	std Y+2,r31
	ldd r7,Y+32
	std Y+3,r7
	ldd r2,Y+33
	ldd r3,Y+34
	ldd r4,Y+35
	ldd r26,Y+36
	ldd r31,Y+37
	ldd r7,Y+38
	std Y+4,r7
	ldd r6,Y+39
	ldd r7,Y+40
	eor r8,r2
	eor r9,r3
	eor r27,r4
	eor r26,r5
	ldd r5,Y+1
	eor r31,r5
	ldd r5,Y+4
	eor r30,r5
	ldd r5,Y+2
	eor r6,r5
	ldd r5,Y+3
	eor r7,r5
	eor r8,r10
	eor r9,r11
	eor r27,r12
	eor r26,r13
	eor r14,r31
	eor r15,r30
	eor r16,r6
	eor r17,r7
	eor r18,r8
	eor r19,r9
	eor r20,r27
	eor r21,r26
	eor r22,r14
	eor r23,r15
	eor r24,r16
	eor r25,r17
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (GNU) 7.3.0"
