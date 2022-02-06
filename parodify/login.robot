*** Settings ***
Documentation    Teste da página login
Library          Browser

# Test Setup    Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium
Test Setup      New Page        https://parodify.herokuapp.com/users/sign_in

Test Teardown    Take Screenshot

Resource    resources/login_actions.robot

*** Test Cases ***
Login com sucesso
    Get Text                   [for=user_email]         contains    Email
    Login With                 lucas@mail.com           qweqwe
    Wait For Elements State    css=a[href$=sign_out]    visible     10

Senha incorreta
    Get Text           [for=user_email]                      contains    Email
    Login With         lucas@mail.com                        123
    Alert Should Be    Oops! Email e/ou senha incorretos.

Email não informado
    Get Text      [for=user_email]    contains    Email
    Login With    lucas@mail.com      123


