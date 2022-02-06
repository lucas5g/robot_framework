*** Settings ***
Library     AppiumLibrary
Resource    steps.robot

*** Keywords ***
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=android_10
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554


Fechar App
    Capture Page Screenshot
    Close Application

