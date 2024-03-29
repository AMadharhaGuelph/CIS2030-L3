*-----------------------------------------------------------
* Title      : Lab3i    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Immediate Addressing
*-----------------------------------------------------------
CODE        EQU    $8000        ;program starts at $8000
VALUE       EQU    100

     
        ORG     CODE                
START:  MOVE.L  #'JAYS',D0       ;move 4-character string into long word in D0
        MOVE.B  #VALUE,D0        ;move VALUE into byte in D0
        MOVE.W  #VALUE,D0        ;move VALUE into word in D0
        MOVE.L  #VALUE,D0        ;move VALUE into longword in D0
        MOVE.B  #$64,D0          ;move 0x64 into byte in D0
        MOVE.B  #%1100100,D0     ;move 0b1100100 into byte in D0
        MOVE.L  #$FFFFFFFF,D0    ;move 0xFFFFFFFF into longword in D0
        MOVEQ   #$FF,D0          ;move 0xFFFFFFFF into longword in D0
        MOVE.B  #VALUE*2,D0      ;move 2 x VALUE into byte in D0
                    
        SIMHALT                  ; halt simulator

        END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
