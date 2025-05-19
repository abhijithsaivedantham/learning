*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    10s
    Maximize Browser Window
    Log To Console    Browser is opened
    Click Element    xpath://input[@value='radio1']
    Sleep    1s
    Click Element    xpath://input[@value='radio2']
    Sleep    1s
    Click Element    xpath://input[@value='radio3']
    Sleep    1s
    Click Element    xpath://input[@id='checkBoxOption1']
    Sleep    1s
    Click Element    xpath://input[@id='checkBoxOption2']
    Sleep    1s
    Click Element    xpath://input[@id='checkBoxOption3']
    Sleep    3s
    Close Browser