*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://www.tutorialspoint.com/selenium/practice/register.php
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    3s
    Maximize Browser Window
    Log To Console    Browser is opened
    Input Text    //input[@id='firstname']    Abhijith
    Sleep    1s
    Input Text    //input[@id='lastname']    Vedantham
    Sleep    1s
    Input Text    //input[@id='username']    abhisai123@gmail.com
    Sleep    1s
    Input Text    //input[@id='password']    abhisai123
    Sleep    1s
    Click Element    //input[@value='Register']
    
    Sleep    10s
    Close Browser