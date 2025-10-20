	.file	"rsa_miller_rabin.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r30,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r29,r22
	mov r28,r23
	mov r27,r24
	mov r31,r25
	ldi r26,lo8(1)
	call __cmpdi2_s8
	breq .+2
	brsh .+2
	rjmp .L4
	ldi r26,lo8(-2)
	call __adddi3_s8
	ldi r26,lo8(1)
	call __cmpdi2_s8
	breq .+2
	brsh .+2
	rjmp .L5
	mov r18,r30
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	call __cmpdi2_s8
	brne .+2
	rjmp .L6
	mov r18,r30
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r29
	mov r23,r28
	mov r24,r27
	mov r25,r31
	ldi r26,lo8(-1)
	call __adddi3_s8
	mov r17,r18
	mov r29,r19
	mov r28,r20
	mov r27,r21
	mov r31,r22
	mov r30,r23
	mov r15,r24
	mov r16,r25
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	call __cmpdi2_s8
	brne .L7
.L3:
	mov r18,r17
	mov r19,r29
	mov r20,r28
	mov r21,r27
	mov r22,r31
	mov r23,r30
	mov r24,r15
	mov r25,r16
	ldi r16,lo8(1)
	call __lshrdi3
	mov r17,r18
	mov r29,r19
	mov r28,r20
	mov r27,r21
	mov r31,r22
	mov r30,r23
	mov r15,r24
	mov r16,r25
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	call __cmpdi2_s8
	breq .L3
	ldi r24,lo8(1)
	rjmp .L1
.L4:
	ldi r24,0
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L5:
	ldi r24,lo8(1)
	rjmp .L1
.L6:
	ldi r24,0
	rjmp .L1
.L7:
	ldi r24,lo8(1)
	rjmp .L1
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (GNU) 7.3.0"
