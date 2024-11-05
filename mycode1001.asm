ORG 100h      ; Set the origin for a .COM file

MOV CX, 10    ; Set loop counter to 10 (for numbers 0 to 9)
MOV DL, '0'   ; Initialize DL to ASCII value of '0'

PRINT_NUMBERS:
    MOV AH, 02h    ; DOS interrupt for printing a character
    INT 21h        ; Call DOS interrupt
    INC DL         ; Increment DL to the next ASCII value
    LOOP PRINT_NUMBERS ; Repeat until CX becomes 0

MOV AH, 4Ch   
INT 21h
end                                              