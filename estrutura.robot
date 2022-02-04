*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    hhhhh
${variavel3}    1554545


*** Keywords ***
abrir site da google
    Open Browser    https://google.com.br   chrome
    Close Browser

abrir site da globo
    Open Browser    https://globo.com   chrome
    Close Browser



*** Test Cases ***
Cenário 1: Teste de abrir navegador
    abrir site da google

Cenário 2: abrir site da globo
    abrir site da globo


# Cinário 3: Visitar site

