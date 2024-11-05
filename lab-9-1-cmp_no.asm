org 100h
jmp start

input1 db "Enter the first Digit: $"
input2 db 0Dh,0Ah,"Enter the second Digit: $"
output1 db 0Dh,0Ah, "yes.$" 
output2 db 0Dh,0Ah, "no.$"  


start:
   mov dx,offset input1
   mov ah,09h
   int 21h
   
   mov ah,01h
   int 21h
   mov bl,al
   
    mov dx, offset input2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bh, al   
    
    cmp bh,bl
    je equal
    jne nequal
    
  equal:
    mov dx,offset output1
   mov ah,09h
   int 21h
           
  nequal:
   mov dx,offset output2
   mov ah,09h
   int 21h
            
  mov ah,04Ch
  int 21h
  
  ret        
   