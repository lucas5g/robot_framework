*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Session
    Set Appium timeout    5

    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=android_10
    ...                 app=${EXECDIR}/app/twp.apk 


Close Session
    Close Application

Get Started
    Wait Until Page Contains    COMEÇAR
    Click Text                  COMEÇAR

Open Nav 
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
