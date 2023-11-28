data segment public
a db 'M','A','D','A','M'
pal db "pallindrome"
npal db "not pallindrome"
data ends

mystack segment stack
dw 20 dup(0)
stack_top label word
mystack ends

public a
public pal
public npal 

code_proc segment public
	extern pall:far
code_proc ends

code segment public
assume cs:code,ds:data,ss:mystack

start: mov ax,data
mov ds,ax
mov ax,mystack
mov ss,ax
mov sp,offset stack_top

call pall
int 3

code ends
end start