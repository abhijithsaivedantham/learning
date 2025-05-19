*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Draganddrop
    Open Browser    ${url}    ${browser}
    Sleep    10s
    Log To Console    Browser is opened
    Sleep    2s
    Input Text    //input[@placeholder='Username']    Admin
    Input Text    //input[@placeholder='Password']    admin123
    Click Element    //button[normalize-space()='Login']
    Sleep    3s
    Double Click Element    //span[normalize-space()='Admin']
    Sleep    3s
    Open Context Menu    //span[normalize-space()='Admin']
    Sleep    3s
