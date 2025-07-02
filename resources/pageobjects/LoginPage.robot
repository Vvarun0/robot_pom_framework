*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/global_vars.robot

*** Variables ***
${LOGIN_PAGE_USERNAME_FIELD}    id=user-name
${LOGIN_PAGE_PASSWORD_FIELD}    id=password
${LOGIN_PAGE_BUTTON}            id=login-button
${LOGIN_PAGE_ERROR_MESSAGE}     css=.error-message-container.error

*** Keywords ***
Fill Login Form
    [Arguments]    ${username}    ${password}
    Input Text    ${LOGIN_PAGE_USERNAME_FIELD}    ${username}
    Input Text    ${LOGIN_PAGE_PASSWORD_FIELD}    ${password}

Click Login
    Click Button    ${LOGIN_PAGE_BUTTON}

Verify Login Page Error Message
    [Arguments]    ${expected_error}
    Element Text Should Be    ${LOGIN_PAGE_ERROR_MESSAGE}    ${expected_error}

Get Login Page Error Text
    [Return]    ${text}
    ${text}=    Get Text    ${LOGIN_PAGE_ERROR_MESSAGE}
    RETURN    ${text}