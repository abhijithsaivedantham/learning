*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    10s
    Maximize Browser Window
    Log To Console    Browser is opened
    Input Text    xpath://input[@placeholder='Username']    Admin
    Input Text    xpath://input[@placeholder='Password']    admin123
    Sleep    3s
    Click Element    xpath://button[normalize-space()='Login']
    Sleep    3s
    Wait Until Element Is Enabled    xpath://h6[normalize-space()='Dashboard']