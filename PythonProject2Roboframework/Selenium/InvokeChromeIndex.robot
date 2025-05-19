*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://the-internet.herokuapp.com/checkboxes
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    10s
    Maximize Browser Window
    Log To Console    Browser is opened
    Click Element    xpath:(//input[@type='checkbox'])[1]
    Sleep    1s
    Click Element    xpath:(//input[@type='checkbox'])[1]
    Sleep    1s
    Close Browser