*-----------------------------------------------------------
* Title      : Lab3m    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: X=Y/Z, where X,Y,Z are items in a C struct 
*-----------------------------------------------------------
CODE    EQU     $8000              ;program starts at $8000
DATA    EQU     $9000              ;start of data
     
     
        ORG     CODE                
START:  LEA     STRUCT,A0          ;A0 points to start of STRUCT
        MOVE.L  (A0),D0            ;D0 = dividend        
        DIVS    4(A0),D0           ;divide Y by Z
        MOVE.W  D0,6(A0)           ;save quotient in struct 
        SWAP    D0  
        MOVE.W  D0,8(A0)           ;save remainder in struct

        SIMHALT                    ;halt simulator
        
        ORG     DATA
STRUCT  DC.L    100                ;dividend (Y)
        DC.W    15                 ;divisor (Z)      
        DS.W    1                  ;quotient (X)
        DS.W    1                  ;remainder (X)
        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
