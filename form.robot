*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}          id:name
${input_phone}         id:phone 
${input_email}         id:email 
${input_password}      id:password
${textarea_address}    id:address
${button_submit}       name:submit





*** Keywords ***
abrir navegador
    Open Browser     https://itera-qa.azurewebsites.net/home/automation    chrome

preencher campos
    Input Text    ${input_name}          Lucas
    Input Text    ${input_phone}         31973056405
    Input Text    ${input_email}         lucas@mail.com
    Input Text    ${input_password}      123456
    Input Text    ${textarea_address}    qweqwerqwer

abrir site da globo
    Open Browser     https://globo.com    chrome
    Close Browser

clicar em Submit
    Click Element ${button_submit}


*** Test Cases ***
1 - Preencher formulário
    abrir navegador
    preencher campos
    clicar em Submit
    # acessar site
    # preencher campos
    # clicar em Submit
    # fechar navegador
# Cinário 3: Visitar site

