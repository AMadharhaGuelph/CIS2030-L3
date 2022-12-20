*-----------------------------------------------------------
* Title      : Lab3a    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Examples of Define Storage (DS)
*-----------------------------------------------------------
    
        ORG    $8000        
START:  MOVE.W  A,D0        ;move word at A to D0
        ADD.W   B,D0        ;add word at B to D0
        MOVE.W  D0,C        ;store sum in D0 at C

        SIMHALT             ; halt simulator


* Reserve storage for variables A, B, C;
        ORG     $9000
A       DS.W    1           ;reserve 1 word in memory
B       DS.W    1           ;reserve 1 word in memory
C       DS.W    1           ;reserve 1 word in memory

        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
