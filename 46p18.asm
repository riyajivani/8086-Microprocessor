//take two number as input from user and calculate the addition of that two numbers using the near procedure method.

data SEGMENT
	mes1 DB "enter two numbers: $"
	n1 DB 2 DUP(0),'$'
	n2 DB 2 DUP(0),'$' 
	mes2 DB "addition is: $"
	ans DB 2 dup(0),'$'
data ENDS

my_stack SEGMENT STACK
	DW 10 dup(0)
stack_top LABEL WORD
my_stack ENDS

code SEGMENT
	ASSUME CS:code,DS:data,ss:my_stack

main PROC far 
	MOV AX,data
	MOV DS,AX
	MOV AX,my_stack
	MOV SS,AX
	MOV SP,OFFSET stack_top 
	
	CALL addition
	
	MOV AX,4C00h
	INT 21H
main ENDP

addition PROC NEAR
	PUSH AX
	PUSH DX
	PUSH SI
	
	MOV AH,9
	LEA DX,MES1
	INT 21h
	
	MOV AH,10
	MOV DX,OFFSET n1
	MOV INT 21h
	
	
	MOV AH,10
	MOV DX,OFFSET n2
	MOV INT 21h
	
	
addition ENDP
	
code ENDS
END start
