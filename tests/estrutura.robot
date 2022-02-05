*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    hhhhh
${variavel3}    1554545


*** Keywords ***
abrir site da google
    Open Browser    https://google.com.br   firefox
    Close Browser

abrir site da globo
    Open Browser    https://globo.com   firefox
    Close Browser



*** Test Cases ***
Cenário 1: Teste de abrir navegador
    [Tags]  regressivo  admin
    abrir site da google

Cenário 2: abrir site da globo
    abrir site da globo


# Cinário 3: Visitar site

