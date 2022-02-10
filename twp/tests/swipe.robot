*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variable ***
${btnRemove}=    id=io.qaninja.android.twp:id/btnRemove

*** Test Case ***
Deve remover o Capitao América
    Go To Avenger List 
    Swipe By Percent       88.88    18.22    47.22    18.22

    Wait Until Element Is Visible    ${btnRemove}
    Click Element                    ${btnRemove} 

