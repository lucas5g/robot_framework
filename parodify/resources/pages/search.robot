*** Settings ***
Documentation   Ações da página de pesquisa

*** Keywords ***

Go to Sertanejo Category
    Click                      xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State    xpath=//h2[contains(text(), "Sertanejo")]          visible    10


