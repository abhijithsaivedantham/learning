*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://the-internet.herokuapp.com/upload
${path}       C:/Users/hp/Pictures/gym-logo-.jpg

*** Test Cases ***
Draganddrop
    Open Browser    ${url}    ${browser}
    Sleep    5s
    Log To Console    Browser is opened
    Sleep    2s
    Choose File    //input[@id='file-upload']    ${path}
    Click Element    //input[@id='file-submit']
    Sleep    3s
    Close Browser

