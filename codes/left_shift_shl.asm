.model small
.stack 100h
.data
.code
main proc
    mov ax,08Ah
    mov cl,3
    shl ax,cl ;shifting left the bits of ax cl=3 times
    mov ah,9
    mov dl,4Ch
    int 21h
    main endp
end main
    