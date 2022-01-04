.model small
.stack 100h
.data
.code
main proc
    mov dx,0
    mov ah,1
    int 21h
    while_:
     cmp al,0Dh;carriage return
     je finish
     inc dx;counts total charecter
     int 21h
     jmp while_
     finish:
     mov ah,9
     mov dl,4Ch
     int 21h
     main endp
end main