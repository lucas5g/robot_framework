*** Settings ***
Library    hello.py 

*** Test Case ***
Deve Retornar Mensagem
    ${resultado}=      Hello Robot     Fernando Papito
    Should Be Equal    ${resultado}    Olá, Fernando Papito.
    # Log To Console     "asdfasdfasdfasdf\n"