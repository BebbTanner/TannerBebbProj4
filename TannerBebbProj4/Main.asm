include Irvine32.inc

.data
	source byte "Hello", 0
	target byte ?

.code
main PROC
	mov esi, 0
	mov ecx, lengthof source
L1:
	mov al, source[esi]
	mov target[esi], al
	inc esi
	loop L1
	mov edx, offset target
	call writestring


	exit
main ENDP

END main