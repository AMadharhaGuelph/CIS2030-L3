*-----------------------------------------------------------
* Title      : Lab3k    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Post-Increment and Pre-Decrement Addressing
*-----------------------------------------------------------
CODE    EQU     $8000              ;program starts at $8000
DATA    EQU     $9000              ;start of data
     
     
        ORG     CODE                
START:  LEA     ARRAY,A0           ;A0 points to start of ARRAY
        LEA     ARRAY+LENGTH*4,A1  ;A1 points to end of ARRAY
        
        MOVE.L  (A0),D0            ;D0 = array[0]        
        MOVE.L  -(A1),(A0)+        ;array[0] = array[3]
        MOVE.L  D0,(A1)            ;array[3] = D0 
        
        MOVE.L  (A0),D0            ;D0 = array[1]
        MOVE.L  -(A1),(A0)         ;array[1] = array[2]
        MOVE.L  D0,(A1)            ;array[2] = D0
        
        SIMHALT                    ;halt simulator

        ORG     DATA
ARRAY   DC.L    1,2,3,4            ;array[4] = {1,2,3,4}
LENGTH  EQU     (*-ARRAY)/4        ;number of array items
      
        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
