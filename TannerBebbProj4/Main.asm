;Tanner Bebb
;Copy a string in reverse order

.386
Include Irvine32.inc 
.stack 4096
ExitProcess proto dwExitCode:dword

.data

source BYTE “This is the string that will be reversed”, 0						;Declared string that will be reversed
target BYTE SIZEOF source DUP(0)												;Unsure right now.

.code

main PROC

main ENDP
end main