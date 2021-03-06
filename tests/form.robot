*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ${input_name}          id:name
# ${input_phone}         id:phone 
# ${input_email}         id:email 
# ${input_password}      id:password
# ${textarea_address}    id:address
# ${button_submit}       name:submit

${input_name}          //input[@id="name"]
${input_phone}         //input[@id="phone"]
${input_email}         //input[@id="email"]
${input_password}      //input[@id="password"]
${textarea_address}    //textarea[@id="address"]
${button_submit}       //button[@name="submit"]





*** Keywords ***
abrir navegador
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    firefox

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
    Click Element    ${button_submit}


*** Test Cases ***
1 - Preencher formulário
    abrir navegador
    preencher campos
    clicar em Submit
    Close Browser
    # acessar site
    # preencher campos
    # clicar em Submit
    # fechar navegador
# Cinário 3: Visitar site

