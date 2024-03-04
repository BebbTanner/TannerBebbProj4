INCLUDE Irvine32.inc
WriteString PROTO

    .data

    source BYTE "This is the string that will be reversed",0
    target BYTE SIZEOF source DUP('#')

    .code

    main PROC
        mov esi,0
        mov edi,LENGTHOF source - 2
        mov ecx,SIZEOF source
    L1:
        mov al,source[esi]
        mov target[edi],al
        inc esi
        dec edi
        loop L1
        mov edx, OFFSET target
        call WriteString

        exit
    main ENDP
    END main