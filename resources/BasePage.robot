*** Settings ***
Library      SeleniumLibrary
Library    ../custom_libraries/general_utilities.py

*** Keywords ***
Open browser To Url
    [Arguments]        ${url}
    Open Browser        ${url}        ${BROWSER}
    Maximize Browser Window

Close My Browser
    Close Browser


