*-----------------------------------------------------------
* Title      : Lab3j    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Adress Register Indirect Addressing 
*-----------------------------------------------------------
CODE    EQU     $8000            ;program starts at $8000
DATA    EQU     $9000            ;start of data
     
     
        ORG     CODE                
START:  MOVE.W  NUM1,D0          ;move word at NUM1 in D0
        LEA     NUM2,A0          ;A0 pointer initialized with address of NUM2
        MOVEA.L #SUM,A1          ;A1 pointer initialized with address of SUM  
        ADD.W   (A0),D0          ;value pointed at by A0 added to D0
        MOVE.W  D0,(A1)          ;D0 copied to location pointed to by A1
                   
        SIMHALT                  ; halt simulator

        ORG     DATA
NUM1    DC.W    1                ;store 1 as a word
NUM2    DC.W    2                ;store 2 as a word
SUM     DS.W    1                ;reserve one word for sum

        END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
