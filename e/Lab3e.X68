*-----------------------------------------------------------
* Title      : Lab3e    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Memory Alignment
*-----------------------------------------------------------

        ORG     $9000
BYTE    DS.B    1               ;reserve 1 byte
LIST    DC.W    1,2,%11,$E      ;store a list of words
STRING  DC.B    'ABC'           ;store ASCII string
LONG    DS.L    1               ;reserve 1 long word
        
        END     $9000           ;last line of source
