*** Settings ***
Resource    ../resources/global_vars.robot
Resource    ../resources/BasePage.robot
Resource    ../resources/pageobjects/LoginPage.robot
Test Template    Login Test Template


*** Test Cases ***
Valid Login Test - Standard User
    ${VALID_USERNAME}    ${VALID_PASSWORD}    Login successfull

Invalid Login - Locked Out User
    locked_out_user    secret_sauce   Login unsuccessfull

*** Keywords ***
Login Test Template
     [Arguments]    ${username}    ${password}    ${expected_outcome_text}
     
     # Base Page action
    Open Browser To URL    ${BASE_URL}

    # Login Page actions
    Fill Login Form    ${username}    ${password}
    Custom Log    Attempting login with username: ${username}
    Click Login

    Custom Log    Login flow completed for user: ${username}

    # Close browser (Base Page action)
    Close My Browser
     
