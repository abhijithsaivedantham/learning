*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${browser}    chrome
${url}        https://the-internet.herokuapp.com/download

*** Test Cases ***
Invoke Chrome browser
    Open Browser    ${url}    ${browser}
    Sleep    2s
    Maximize Browser Window
    Click Element    //a[contains(text(),'sample.txt')]
    Sleep    3s
    ${files}=    List Files In Directory    C:/Users/hp/Downloads
    List Should Contain Value    ${files}    sample.txt
    Sleep    2s
