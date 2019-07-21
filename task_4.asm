org 100h

lea si, s1
lea di, s2
lea bx, result

concatenate_s1:
    mov al, [si]
    mov [bx], al
    cmp al, '$'
    jz concatenate_s2
    inc si
    inc bx
    jmp concatenate_s1
    

concatenate_s2:
    mov al, [di]
    mov [bx], al
    cmp al, '$'
    jz end
    inc di
    inc bx
    jmp concatenate_s2
    


end:
    mov dx, offset result
    mov ah, 9
    int 21h
    ret
    
s1 db "Hello World, $"
s2 db "This is assembly programming language$"
result db 100 dup(?)
    