title pgm:which one comes first in ascii 
.model small
.stack 100h
.data
.code
main proc
    mov bh,'c'
    mov bl,'b'
    mov ah,2
    cmp bh,bl
    jnbe else 
     mov dl,bh 
    jmp display
    else:
    mov dl,bl
    
    display:
    int 21h
    
    ;exit to dos
    mov ah,9
    mov dl, 4Ch
    int 21h
    main endp 
end main