;Tanner Bebb
;Copy a string in reverse order

.386
.model flat, stdcall
.stack 4096
ExitProcess proto dwExitCode:dword
Include Irvine32.inc 


.data

source BYTE “Hello”, 0															;Declared string that will be reversed
target BYTE SIZEOF source DUP(0)												;Declared variable that will be used as the loop counter.

.code

main PROC

	mov esi, 0																	;Moving the value of 0 into the esi register. Which is the instruction register.
	mov eax, SIZEOF source														;This will be the loop counter.

L1:
	mov al, source[esi]															;Moving what value that is stored in the register into the al register.
	mov target[esi], al															;Unsure as to what this does.
	inc esi																		;Increment the esi register
	loop L1																		;Loops back to the L1 tag and repeats the process

	invoke ExitProcess, 0

main ENDP
end main