//addition of two numbers 

data SEGMENT 
	n1 DW 1234h
	n2 DW 3456h
data ENDS	

code SEGMENT
	ASSUME cs:code,ds:data
start:
	MOV AX,data
	MOV DS,AX

	MOV AX,n1
	MOV BX,n2
	ADD AX,BX
	MOV CX,AX
	
	MOV AX,4C00h
	INT 21h
code ENDS
END start
