include Irvine32.inc

.data
	source byte "Hello", 0										;This is the string that I am going to reverse.
	target byte ?												;This will be used to go through each character in the string.

.code
main PROC
	mov esi, 0													;Move the value of 0 to the esi register.
	mov ecx, lengthof source									;Move the length of the source variable to the ecx register.
L1:
	mov al, source[esi]											;Move the offset of source to the al register.
	mov target[esi], al											;Move the al register into the offset of target.
	inc esi														;Increment the esi register.
	loop L1														;Jump back to the L1 tag and repeat the process.
	mov edx, offset target										;Unsure.
	call writestring											;Write the string to the screen.


	exit
main ENDP

END main