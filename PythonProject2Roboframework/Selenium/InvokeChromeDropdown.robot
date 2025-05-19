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
    Select From List By Label    //select[@id='dropdown-class-example']     Option1
    Sleep    3s
    Select From List By Index    //select[@id='dropdown-class-example']     2
    Sleep    3s
    Select From List By Label    //select[@id='dropdown-class-example']     Option3
    Sleep    3s


    Close Browser