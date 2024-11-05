ORG 100h        

MOV CX, 10      
MOV DL, '9'     

PRINT_REVERSE_NUMBERS:
    MOV AH, 02h 
    INT 21h     
    DEC DL      
    LOOP PRINT_REVERSE_NUMBERS 

MOV AH, 4Ch     
INT 21h                            
