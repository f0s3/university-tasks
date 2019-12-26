section .data
	text db "Kosenko Andrii Vitaliyovych, KM-175",13,0
	spaces db "                                   ",13,0
	delay dq 1,0

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 36
	syscall

	mov rax, 35
	mov rdi, delay
	mov rsi, 0
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, spaces
	mov rdx, 36
	syscall

	mov rax, 35
	mov rdi, delay
	mov rsi, 0
	syscall

	jmp _start
