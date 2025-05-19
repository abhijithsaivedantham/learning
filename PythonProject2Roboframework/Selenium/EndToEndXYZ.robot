*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://globalsqa.com/angularJs-protractor/BankingProject/#/login


*** Test Cases ***
Invoke Chrome browser
        Open Browser        ${url}      ${browser}
        Sleep   10s
        Maximize Browser Window
        Log To Console      Browser is opened
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Customer Login']
        Sleep   2s
        Wait Until Element Is Visible    xpath=//select[@id='userSelect']    timeout=10s
        Select From List By Value       xpath=//select[@id='userSelect']     2
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Login']
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Deposit']
        Sleep   3s
        Wait Until Element Is Visible    xpath=//input[@placeholder='amount']    timeout=10s
        Input Text      xpath=//input[@placeholder='amount']     1000
        Click Button    xpath=//button[@type='submit']
        Wait Until Element is Visible       xpath://span[@class='error ng-binding']
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Transactions']
        Sleep   3s
        Wait Until Element is Visible       xpath://input[@id='start']
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Back']
        Sleep   2s
        Click Element       xpath://button[normalize-space()='Withdrawl']
        Wait Until Element Is Visible    xpath=//input[@placeholder='amount']    timeout=10s
        Input Text      xpath=//input[@placeholder='amount']    1000
        Click Button    xpath=//button[@type='submit']
        Wait Until Element is Visible       xpath://span[@class='error ng-binding']
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Transactions']
        Sleep   3s
        Wait Until Element is Visible       xpath://input[@id='start']
        Sleep   3s
        Click Element       xpath://button[normalize-space()='Back']
        Sleep   3s
