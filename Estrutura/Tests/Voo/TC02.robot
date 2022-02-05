*** Settings ***
Resource    ../../Steps/Main_Steps.robot
Test Setup      Fazer Login

*** Variable ***
${cidadeOrigem} Salvador

*** Test Cases ***
TC02 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu realizo uma busca de um vôo ida e volta
    Quando informo que está saindo de ${cidadeOrigem}
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
    E fecho o navegador
