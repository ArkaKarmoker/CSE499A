.org 0x1000
.data
@ variable declaration 
a: .space 1 @ int a => reserves 1 byte space
b: .byte 5 @ int b = 5
.equ k, 6 @ const k = 6
arr: .space 6 @ int arr [6]
.equ arr_len, . - arr
arr1: .word 1,2,3 @ int arr1 = {1,2,3}
.equ arr1_len, . - arr1
ch: .hword 'A' @ char ch = 'A'
str: .byte 'B','C', 0 @ char str = {'B','C','\0'}
str1: .asciz "Hello world" @ string str1 = "Hello"
.equ str1_len, . - str1
ab: .byte 3
.text
.global _start
_start:

	@ load the value of a
	ldr r0, =a
	ldrb r1, [r0]
	
	@ load the value ofch
	ldr r0, =ch
	ldrh r1, [r0]
	
	