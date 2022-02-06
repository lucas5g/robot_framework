*** Keywords ***
#steps
Mostra Saldo
    Click Element    accessibility_id=show-balance

Meu Saldo Deve Ser De
    [Arguments]                      ${saldo}
    Wait Until Element Is Visible    accessibility_id=card-hero       10
    Element Text Should Be           accessibility_id=user-balance    ${saldo}


