;set section to 'data'
;.data used for pre compile var
section .data
	text db "Hello World!",10
	;create var call it 'text'
	;db = defineByte()
	;set text = to the bytes for 'Hello World!\n'
	;',10' = \n


;set scection to 'text'
;.text used for main code execution
section .text
	global _start
	;set _start as a global function
	;like 'public void Main()'

_start:
;enter point for program
;set the code in the 'Main()' function

	call _printHelloWorld	;jump to '_printHelloWorld' = printHelloWorld()

	mov rax, 60	;move 60 to 'rax'
	mov rdi, 0	;move 0 to 'rdi'
	syscall
	;run a statem call using args 'rax' and 'rdi'
	;syscall(60, 0) = exit(0)

_printHelloWorld:
	mov rax, 1	;move 1 to 'rax'
	mov rdi, 1	;move 1 to 'rdi'
	mov rsi, text	;move the address for the var 'text' to 'rsi'
	mov rdx, 14	;move 14 to 'rdx'
	syscall
	;run the sysytem call using the arguments in 'rax' 'rdi' 'rsi' and 'rdx'
	;syscall(1, 1, %(Address for 'text'), 14) = PrintLine(text)

	ret 	;exit function
