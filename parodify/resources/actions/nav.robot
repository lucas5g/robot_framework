*** Settings ***
Documentation    Ações de navegação no parodify


*** Keywords ***
Go to Search Page
    Click                      css=a[href*=search]
    Wait For Elements State    xpath=//h2[contains(text(), "Buscar")]    visible    10

Go to Sertanejo Category
    Click                      xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State    xpath=//h2[contains(text(), "Sertanejo")]          visible    10

Open Album From
    [Arguments]                ${artist}
    Click                      xpath=//div[contains(@id, "albums")]//p[contains(text(), "${artist}")]/..
    # Click                      xpath=//div[contains(@id, "albums")]//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State    xpath=//h2[contains(text(), "Músicas")]                                      visible    10

