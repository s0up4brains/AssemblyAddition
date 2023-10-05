; A simple example adding two numbers.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	answer SWORD ?; OUtPUt

.code ; code segment

main PROC ; main procedure
	; (a + b) - (c + d)
  mov eax, 100 ; Value of A is stored as 100
  mov ebx, 5 ; Value of B is stored as 5
  mov ecx, 8 ; Value of C is stored as 8
  mov edx, 3 ; Value of D is stored as 3

  add eax,  ebx ; (a +b) ADDS EAX AND EBX REGISTER VALUES
  add ecx,  edx ; (c+d) ADDS ECX AND EDX REGISTER VALUES

  sub eax, ecx ; (a+b) - (c+d) SUBTRACTS EAX AND ECX REGISTER VALUES



	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling
