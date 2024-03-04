;Tanner Bebb Assembly Language Project 4.

INCLUDE Irvine32.inc

    .data

    source BYTE "This is the string that will be reversed",0                                        ;Variable called source that will hold the string that is going to be reversed.
    target BYTE SIZEOF source DUP('#')                                                              ;Variable called target target, unsure as to what this does right now.

    .code

    main PROC
        mov esi,0                                                                                   ;Move the value of 0 into the esi register.
        mov edi,LENGTHOF source - 2                                                                 ;Move the lengthof source to the edi register.
        mov ecx,SIZEOF source                                                                       ;Move the sizeof source to the ecx register.
    L1:
        mov al,source[esi]                                                                          ;Move the memory address of source to the al register?
        mov target[edi],al                                                                          ;Move the al register to the memory address of target?
        inc esi                                                                                     ;Increment the esi register.
        dec edi                                                                                     ;Decerment the edi register.
        loop L1                                                                                     ;Loop back to the L1 tag.
        mov edx, OFFSET target                                                                      ;Move the address of the varible target to the edx register.
        call WriteString                                                                            ;Write the string that is stored in the edx register.

        exit
    main ENDP
    END main