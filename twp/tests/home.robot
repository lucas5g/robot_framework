*** Settings ***
Library    AppiumLibrary

*** Test Case ***
Deve Abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=android_10
    ...                 app=${EXECDIR}/app/twp.apk 

    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version
    Close Application