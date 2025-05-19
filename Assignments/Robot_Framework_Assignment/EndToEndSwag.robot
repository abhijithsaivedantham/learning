*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}   chrome
${url}  https://www.saucedemo.com/
*** Test Cases ***
Invoke Chrome Browser
    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window
    Log To Console    Browser is opened
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']    secret_sauce
    Sleep    3s
    Click Element    xpath://input[@id='login-button']
    Sleep    3s
    Click Element    xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Sleep    3s
    Click Element    xpath://button[@id='add-to-cart-sauce-labs-bolt-t-shirt']
    Sleep    3s
    Click Element    xpath://a[@class='shopping_cart_link']
    Sleep    3s
    Click Element    //button[@id='checkout']
    Sleep    3s
    Input Text    xpath://input[@id='first-name']    Abhijith
    Sleep    3s
    Input Text    xpath://input[@id='last-name']    Vedantham
    Sleep    3s
    Input Text    xpath://input[@id='postal-code']    111111
    Sleep    3s
    Click Element    xpath://input[@id='continue']
    Sleep    3s
    Click Element    xpath://button[@id='finish']
    Sleep    3s
    Wait Until Element Is Enabled    xpath://h2[normalize-space()='Thank you for your order!']
    
    Sleep    5s

    Close Browser