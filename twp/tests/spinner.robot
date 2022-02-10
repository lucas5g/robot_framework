*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variable ***
${spinner}=         id=io.qaninja.android.twp:id/spinnerJob
${list_options}=    class=android.widget.ListView

*** Test Case ***
Deve selecionar o perfil QA
    Go To SingUp Form    

    Choice Job    QA

Deve selecionar o perfil DevOps
    Go To SingUp Form    

    Choice Job    DevOps


***Keywords***
Choice Job
    [Arguments]    ${target}

    Click Element                    ${spinner}
    Wait Until Element Is Visible    ${list_options}
    Click Text                       ${target}
