*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Invoke Chrome browser
    Open Browser    ${url}    ${browser}
    Sleep    5s
    Maximize Browser Window
    Log To Console    Browser is opened
    Press Keys    //input[@placeholder='Username']  SHIFT+hello
    Sleep    1s

    Close Browser

