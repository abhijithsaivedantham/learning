*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Draganddrop
    Open Browser    ${url}    ${browser}
    Sleep    10s
    Log To Console    Browser is opened
    Sleep    2s
    Mouse Over    //button[@id='mousehover']
    Sleep    3s
    Click Element    //a[normalize-space()='Top']
    Sleep    3s
    Wait Until Location Contains    https://rahulshettyacademy.com/AutomationPractice/#top
    Sleep    3s
    
