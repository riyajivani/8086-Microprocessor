data segment public 
extern a:byte,pal:byte,npal:byte
data ends

public pall

code_proc segment public
pall proc far
assume cs:code_proc,ds:data
lea si,a
lea di,a+04h
mov cl,02h
back: mov ah,[si]
mov bh,[di]
cmp ah,bh
mov ah,9
jnz skip
inc si
dec di
dec cl
jnz back
lea dx,pal
jmp over
skip:lea dx,npal 
over:pall endp
code_proc ends
end