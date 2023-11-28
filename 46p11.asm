data SEGMENT
	block DB 05h,23h,0A2h,66h,12h,7Dh
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data
start:MOV AX,data
	MOV DS,AX
	LEA SI,block
	MOV CX,0
	MOV CL, BYTE PTR[SI]
	DEC CX
outer:  MOV DX,CX
	INC SI
	MOV DI,SI
inner:INC DI
	MOV AL,BYTE PTR[SI]
	CMP AL,BYTE PTR[DI]
	JBE skip
	MOV BL,Al
	MOV AL,BYTE PTR[DI]
	MOV BYTE PTR[DI],BL
	MOV BYTE PTR[SI],AL
skip:   DEC DX
	JNZ inner
	DEC CX
	JNZ outer
	
	MOV AX,4C00h
	INT 21h
code ENDS
END start