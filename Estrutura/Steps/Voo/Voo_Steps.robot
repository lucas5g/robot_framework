
*** Settings ***
Resource    ../../Resource/Settings.robot 
Resource    ../../Elements/Voo/Voo_Elements.robot

*** Keywords ***
Dado que eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible    ${Home.a_voos}             10
    Click Element                    ${Home.a_voos}
    Wait Until Element Is Visible    ${Voo.Input_IdaeVolta}    10
    Click Element                    ${Voo.Input_IdaeVolta}

Quando informo que está saindo de ${Texto}
    Wait Until Element Is Visible  ${Voo.Input_Ida}  10
    Input Text                     ${Voo.Input_Ida}  ${Texto}
    Press Keys                     ${Voo.Input_Ida}  ARROW_DOWN
    Press Keys                     ${Voo.Input_Ida}  ENTER 
