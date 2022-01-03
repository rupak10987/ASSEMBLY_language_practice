.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    mov dl,'?'
INT 21H
    main endp
end main



