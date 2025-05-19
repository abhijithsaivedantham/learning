*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://the-internet.herokuapp.com/dropdown
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    1s
    Maximize Browser Window
    Log To Console    Browser is opened
    Select From List By Label    xpath://select[@id='dropdown']     Option 1
    Sleep    3s
    Select From List By Label    xpath://select[@id='dropdown']     Option 2
    Sleep    3s
    Close Browser