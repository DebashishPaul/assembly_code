org 100h 

arr1 db '1','2','3','4','5',0
arr2 db 5 dup(?)

mov al,arr1[0]
mov arr2[4],al

mov ah,arr1[1]
mov arr2[3],ah  

mov bl,arr1[2]
mov arr2[2],bl

mov bh,arr1[3]
mov arr2[1],bh

mov cl,arr1[4]
mov arr2[0],cl


ret


