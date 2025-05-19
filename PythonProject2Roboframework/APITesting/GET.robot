*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    json


*** Variables ***
${base_URL}    https://reqres.in/
${Servicename}     api/users/2


*** Test Cases ***
Getrequest
        RequestsLibrary.Create Session    baseURI    ${base_URL}
        ${Response}=        GET On Session    baseURI    ${Servicename}
        Log    ${Response.json()}
        Log    ${Response.status_code}