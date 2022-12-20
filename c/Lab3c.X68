*-----------------------------------------------------------
* Title      : Lab3c    
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Examples of character data and numeric data
*-----------------------------------------------------------
    
        ORG    $9000        
        
MSG1    DC.B   'CIS2030'
MSG2    DC.B   'CIS','2','030'
MSG3    DC.B    $43,$49,$53,$32,$30,$33,$30     
    
    
MSG4    DC.W   'CIS2030'
MSG5    DC.W   'CIS','2','030'
MSG6    DC.W    $43,$49,$53,$32,$30,$33,$30     


MSG7    DC.L   'CIS2030'
MSG8    DC.L   'CIS','2','030'
MSG9    DC.L    $43,$49,$53,$32,$30,$33,$30     

        END    $9000        
