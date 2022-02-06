*** Settings ***
Resource    resources/base.robot

Test Setup       Abrir App
Test Teardown    Fechar App

*** Test Case ***
Ver meu Saldo
    Mostra Saldo
    Meu Saldo Deve Ser De  R$ 5.500,00

