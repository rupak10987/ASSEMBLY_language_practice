.model small
.stack 100h
.data 
msg1 db 'Enter a lowecase letter: $'
msg2 db 'Upper case of the letter is $'
.code
main proc
    mov ax,@data
    mov ds,ax
    LEA dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h 
    mov bl,al
    sub bl,32d
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    Lea dx,msg2
    mov ah,9
    int 21h
    mov ah,2
    mov dl,bl  
    int 21h
    mov ah, 4ch
    int 21h
    main endp
end main