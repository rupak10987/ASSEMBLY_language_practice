
.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    mov dl,'?'
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h
    mov ah,2
    mov dl,bl
    int 21h 
    ;return to dos
    mov ah,4ch
    int 21h
    main endp
end main
    



