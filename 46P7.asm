//de morgan's law for (n1+n2)' = (n1' + n2')

data SEGMENT
	n1 DW 1234h
	n2 DW 4321h
	ans DW ?
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data

start:
	MOV AX,data
	MOV DS,AX

	MOV AX,n1
	NOT AX
	MOV BX,n2
	NOT BX
	AND  AX,BX
	NOT AX
	MOV ans,AX

	MOV AX,4C00h
	INT 21h
code ENDS
END start
