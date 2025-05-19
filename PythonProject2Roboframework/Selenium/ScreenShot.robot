*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${browser}    chrome
${url}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Invoke Chrome browser
    Open Browser    ${url}    ${browser}
    Sleep    5s
    Maximize Browser Window
    Log To Console    Browser is opened
    Capture Page Screenshot    C:/Users/hp/Pictures/Screenshots/Screenshot (289).jpg
    Capture Element Screenshot    xpath://input[@name='username']    C:/Users/hp/Pictures/Screenshots/Screenshot (301).jpg
    
    Sleep    2s