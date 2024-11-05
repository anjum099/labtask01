ORG 100h      ; Set the origin for a .COM file

MOV CX, 26    ; Set loop counter to 26 (for letters Z to A)
MOV DL, 'Z'   ; Initialize DL to ASCII value of 'Z'

PRINT_CHARACTERS:
    MOV AH, 02h    ; DOS interrupt for printing a character
    INT 21h        ; Call DOS interrupt
    DEC DL         ; Decrement DL to the previous ASCII value
    LOOP PRINT_CHARACTERS ; Repeat until CX becomes 0

MOV AH, 4Ch    ; Exit to DOS
INT 21h
