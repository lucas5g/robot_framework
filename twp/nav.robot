*** Settings ***
Library    AppiumLibrary

*** Test Case ***
Deve Abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=android_10
    ...                 app=${EXECDIR}/app/twp.apk 

    Wait Until Page Contains         COMEÇAR
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Text                       DIALOGS
    Wait Until Element Is Visible    io.qaninja.android.twp:id/toolbarTitle
    Element Text Should BE           io.qaninja.android.twp:id/toolbarTitle     DIALOGS



    Close Application