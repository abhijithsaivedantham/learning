*** Settings ***

Library     SeleniumLibrary

Library     DataDriver      C:/Users/hp/PycharmProjects/PythonProject2Roboframework/testData/ddtLogindata.xlsx

Resource        ../resources/DDTKeywords.robot



Suite Setup     Launch App

Suite Teardown      Close App

Test Template       Invalidlogin



*** Test Cases ***

Login with user ${username} and ${password}     Default UserData





*** Keywords ***

Invalidlogin

    [Arguments]  ${username}  ${password}

    Sleep    2s

    Set Email    ${username}

    Sleep    2s

    Set Password    ${password}

    Sleep    2s

    Click Login

    Sleep    2s

    Error Message Should be Visible



