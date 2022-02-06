***Settings** ***
Documentation   Ações da página de login

*** Keywords ***
Login With
    [Arguments]    ${email}                   ${password}
    Fill Text      id=user_email              ${email}
    Fill Text      css=#user_password         ${password}
    Click          css=input[type=submit] 

Alert Should Be
    [Arguments]    ${expect}
    Get Text       article.is-danger    ==    ${expect}
