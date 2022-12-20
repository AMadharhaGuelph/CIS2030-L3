*-----------------------------------------------------------
* Title      : Lab3g    
* Written by : ankush
* Date       : dd/mm/yyyy
* Description: Absolute Long (32-bit) Addressing
*-----------------------------------------------------------
CODE    EQU    $8000        ;program starts at $8000
DATA    EQU    $9000        ;data starts at $9000

     
        ORG     CODE                
START:  MOVE.W  LIST,D0     ;move 1st word in list to D0
        ADD.W   LIST+2,D0   ;add 2nd word in list
        ADD.W   LIST+4,D0   ;add 3rd word in list
        ADD.W   LIST+6,D0   ;add 4th word in list
        
        SIMHALT             ; halt simulator


* Initialize memory

        ORG     DATA
LIST    DC.W    1,-2,-3,4    ;store list of 4 words

        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
