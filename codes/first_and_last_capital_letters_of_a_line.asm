.model small
.stack 100h
.data
.code
main proc
    mov bh,'0'
    mov ah,1
    int 21h
    while_:
    cmp al,0Dh
    je line_end
    ;if between  'A' and 'Z'
    cmp al,'A'
    jnge not_cap
    cmp al,'Z'
    jnle not_cap
    ;check if bh is occupied or not if not, store in bh else in bl
     cmp bh,'0'
     jne next
     mov bl,al
     next:
     mov bh,al 
     int 21h
     jmp while_
    not_cap:
    int 21h
    jmp while_
    line_end:  ;printing first and last caps
    mov ah,2 
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    mov dl,bl
    int 21h
    mov dl,','
    int 21h
    mov dl,bh
    int 21h
    ;returning to dos   
    mov ah,9
    mov dl,4Ch
    int 21h
    main endp
end main