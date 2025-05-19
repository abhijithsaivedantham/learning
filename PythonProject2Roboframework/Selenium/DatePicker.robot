*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${browser}    chrome
${url}        https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Invoke Chrome browser
    Open Browser    ${url}    ${browser}
    Sleep    2s
    Maximize Browser Window
    Click Element    //input[@id='datetimepicker1']
    Sleep    1s
    Click Element    (//span[@aria-label='May 16, 2025'][normalize-space()='16'])
    Sleep    3s
    
