*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Invoke Chrome browser
    Open Browser    ${url}    ${browser}
    Sleep    10s
    Maximize Browser Window
    Log To Console    Browser is opened
    Press Key    xpath://input[@id='target']    SPACE
    Sleep    2s
    Press Key    xpath://input[@id='target']    CONTROL
    Sleep    2s
    Press Key    xpath://input[@id='target']    TAB
    Sleep    2s
    Press Key    xpath://input[@id='target']    SHIFT
    Sleep    2s
