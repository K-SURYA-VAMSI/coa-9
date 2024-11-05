org 100h
jmp start

input1 db "Enter the first Digit: $"

output1 db 0Dh,0Ah, "odd.$" 
output2 db 0Dh,0Ah, "even.$"  


start:
   mov dx,offset input1
   mov ah,09h
   int 21h
   
   mov ah,01h
   int 21h
   mov bl,al
    
   and bl,0001h
    
    cmp bl,0000h
    je equal
    jne nequal
    
  equal:
    mov dx,offset output2
   mov ah,09h
   int 21h  
   
   ret
           
  nequal:
   mov dx,offset output1
   mov ah,09h
   int 21h  
   
   ret
            
  mov ah,04Ch
  int 21h
  
  ret        
   