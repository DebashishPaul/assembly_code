org 100h



lea si,a
lea di,b
lea bx,c

s1:
   mov al,[si]
   mov [bx],al
   cmp al,36
   jz s2
   inc si
   inc bx
   jmp s1
  
s2:
   mov al,[di] 
   mov [bx],al
   cmp al,36
   jz end
   inc di
   inc bx
   jmp s2
   
end:  
   mov dx,offset c
   mov ah,9
   int 21h
   
   ret
      
a db "day 1  $"
b db "day 2  $"
c db 100 dup(?)