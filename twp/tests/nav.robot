*** Settings ***

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variable ***
${TOOLBAR_TITLE}    io.qaninja.android.twp:id/toolbarTitle

*** Test Case ***
Deve Abrir a tela de Dialogs
    Open Nav 

    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should BE           ${TOOLBAR_TITLE}    DIALOGS

Deve Abrir a tela de formulários
    Open Nav

    Click Text                       FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should BE           ${TOOLBAR_TITLE}    FORMS

Deve acessar a tela de vingadores
    Open Nav

    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should BE           ${TOOLBAR_TITLE}    AVENGERS

