*** Settings ***
Documentation   Ações da página de categoria

*** Keywords ***
Open Album From
    [Arguments]                ${artist}
    Click                      xpath=//div[contains(@id, "albums")]//p[contains(text(), "${artist}")]/..
    # Click                      xpath=//div[contains(@id, "albums")]//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State    xpath=//h2[contains(text(), "Músicas")]                                      visible    10
