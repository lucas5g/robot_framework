*** Settings ***
Library    AppiumLibrary
Library    libs/extend.py

Resource    helpers.robot

*** Keywords ***
Open Session
    Set Appium timeout    5
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=android_10
    ...                   app=${EXECDIR}/app/twp.apk 
    Get Started


Close Session
    Capture Page Screenshot
    Close Application

