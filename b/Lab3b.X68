*-----------------------------------------------------------
* Title      : Lab3b    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Examples of Define Constant (DC)
*-----------------------------------------------------------
    
        ORG    $8000        
START:  MOVE.W  A,D0        ;move word at A to D0
        ADD.W   B,D0        ;add word at B to D0
        MOVE.W  D0,C        ;store sum in D0 at C

        SIMHALT             ; halt simulator


* Reserve storage for variables A, B, C;
        ORG     $9000
A       DC.W    10          ;store 10 as a word
B       DC.W    20          ;store 20 as a word
C       DS.W    1           ;reserve 1 word in memory

        END    START        ; last line of source
