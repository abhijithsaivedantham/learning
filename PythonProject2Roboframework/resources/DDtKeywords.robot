*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${browser}      firefox

${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F



*** Keywords ***

Launch App

    Open Browser        ${url}      ${browser}

    Maximize Browser Window



Close App

    Close Browser



Set Email

    [Arguments]     ${username}

    Input Text  xpath://input[@id='Email']    ${username}



Set Password

    [Arguments]     ${password}

    Input Text  xpath://input[@id='Password']    ${password}



Click Login

    Click Element    xpath://button[@type='submit']



Error Message Should be Visible

    Page Should Contain    Wrong email



DashBoard Page Should be Visible

    Page Should Contain    Dashborad



