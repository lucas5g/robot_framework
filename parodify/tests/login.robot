*** Settings ***
Documentation    Teste da página login
Resource         ../resources/base.robot

# Test Setup     Open Browser       https://parodify.herokuapp.com/users/sign_in    chromium
Test Setup       New Page           https://parodify.herokuapp.com/users/sign_in
Test Teardown    Take Screenshot


*** Test Cases ***
Login com sucesso
    [Tags]                           smoke
    Get Text                         [for=user_email]    contains    Email
    Login With                       lucas@mail.com      qweqwe
    Logout Link Should Be Visible
Senha incorreta
    Get Text           [for=user_email]                      contains    Email
    Login With         lucas@mail.com                        123
    Alert Should Be    Oops! Email e/ou senha incorretos.

Email não informado
    Get Text      [for=user_email]    contains    Email
    Login With    lucas@mail.com      123


