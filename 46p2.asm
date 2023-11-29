//addition of all elements of given array

data SEGMENT
	block DW 1234H,5678H,2345H,5214H,0ABCDH
	ans DW ?
data ENDS

code SEGMENT
ASSUME cs:code,ds:data
start:
MOV AX,data
MOV ds,AX
MOV CX,05H
MOV AX,00H
LEA BX,block
next: ADD AX,WORD PTR[BX]
ADD BX,2
LOOP next
MOV DX,OFFSET ans
MOV DX,AX
MOV AX,4C00H
INT 21H
code ENDS
END start
