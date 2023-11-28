data SEGMENT
	n1 DW 1234h
	n2 DW 3456h
	ans DW ?
END data

code SEGMENT
	ASSUME cs:code,ds:data
start: 
	MOV AX,data
	MOV DS,AX

	MOV AX,n1
	MOV BX,n2
	
	XOR AX,BX
