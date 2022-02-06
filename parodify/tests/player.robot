*** Settings ***
Documentation    Testando o player de paródias
Resource         ../resources/base.robot


*** Test Case ***
Reproduzir paródia Bug de Manhã
    Open Login Page
    Login With                       lucas@mail.com    qweqwe
    Logout Link Should Be Visible
    Go to Search Page
    Go to Sertanejo Category
    Open Album From                  Marcus e Debug
    Play Song                        Bug de Manhã
    Song Should Be Playing           Bug de Manhã


