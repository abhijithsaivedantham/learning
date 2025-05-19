*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://www.saucedemo.com/
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    10s
    Maximize Browser Window
    Log To Console    Browser is opened
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']    secret_sauce
    Sleep    3s
    Click Element    xpath://input[@id='login-button']
    Sleep    3s
    Wait Until Element Is Enabled    xpath://div[@class='app_logo']
    Sleep    3s
    Close Browser
