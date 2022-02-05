*** Settings ***
Resource    ../main.robot

*** Variable ***
&{Home}
...    A_Signup=//a[@href="https://www.phptravels.net/signup"] 
...    a_voos=//a[contains(text(),"flights")] 
...    A_Visto=//a[@href="https://www.phptravels.net/visa"] 

*** Keywords ***
Dado que acesso a página de visto
    Wait Until Element Is Visible    ${A_Visto}    10
    Click Element                    ${A_Visto}