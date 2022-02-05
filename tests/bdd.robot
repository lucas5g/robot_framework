*** Settings ***
Library    SeleniumLibrary

*** Variable ***
#Dados do teste
${NomeDaMusica}    Ariana Grande Positions

#Variáveis de configuração
${url}        https://www.youtube.com 
${browser}    firefox

#Elementos
${inputPesquisa}     //input[@id="search"]
${buttonPesquisa}    //button[@id="search-icon-legacy"]
${primeiro}          (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${prova}             //yt-formatted-string[text()="Compartilhar"]                           

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${url}  ${browser}

Quando digito o nome da música
    Input Text    ${inputPesquisa}    ${NomeDaMusica}

E clico no botão buscar
    Click Element    ${buttonPesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible   ${primeiro}
    Click Element    ${primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible   ${prova}
    Element Should Be Visible    ${prova}
    Sleep   1s
    Close Browser

*** Test Case ***
1 - Executar vídeo no site no youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado