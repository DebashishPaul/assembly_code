org 100h   

s1 db "paul$"
              
lea si, s1
mov bl, 0

count:
    mov al, [si]
    cmp al, '$'
    jz exit
    inc bl
    inc si
    jmp count
        
exit:
    add bx, '0'
    mov dx, bx
    mov ah, 2
    int 21h
    ret
    
