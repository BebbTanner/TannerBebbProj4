;Tanner Bebb Assembly Language Project 4.

INCLUDE Irvine32.inc

    .data

    source BYTE "This is the string that will be reversed",0                                        ;Variable called source that will hold the string that is going to be reversed.
    target BYTE SIZEOF source DUP('#')                                                              ;Variable called target target, unsure as to what this does right now.

    .code

    main PROC
        mov esi,0                                                                                   ;Move the value of 0 into the esi register.
        mov edi,LENGTHOF source - 2                                                                 ;Move the length of the array source to the edi register.
        mov ecx,SIZEOF source                                                                       ;Move the number of bytes that source uses to the ecx register.
    L1:
        mov al,source[esi]                                                                          ;point to the value source in the esi register. Move that to the al register.
        mov target[edi],al                                                                          ;Mov the al register to the value that is in the esi register called target.
        inc esi                                                                                     ;Increment the esi register to move to the next letter in the string.
        dec edi                                                                                     ;Decrement the edi register, this will help in finding the endpoint of the string.
        loop L1                                                                                     ;Loop back to the L1 tag.
        mov edx, OFFSET target                                                                      ;Move the address of the varible target to the edx register.
        call WriteString                                                                            ;Write the string that is stored in the edx register.

        exit
    main ENDP
    END main