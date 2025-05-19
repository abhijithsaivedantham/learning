*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    1s
    Maximize Browser Window
    Log To Console    Browser is opened
    Click Element    css:button[onclick='jsAlert()']
    Sleep    1s
    Handle Alert    action=Accept
    Sleep    1s
    Click Element    css:button[onclick='jsConfirm()']
    Sleep    1s
    Handle Alert    action=Dismiss
    Sleep    1s
    Click Element    css:button[onclick='jsPrompt()']
    Input Text Into Alert    Hello
    Handle Alert    action=Accept
    Sleep    1s
    Close Browser