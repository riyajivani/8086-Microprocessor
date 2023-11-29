//find out the factorial of N.

data SEGMENT
	N DB 05h
	fact DW ?
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data
start:MOV AX,data
	MOV DS,AX
	MOV CX,0
	MOV CL,N
	MOV AX,1
	MOV BX,1
next: MUL BX
	INC BX
	CMP BX,CX
	JBE next
	MOV fact,AX
	MOV Ax,4C00h
	INT 21h
code ENDS
END start
