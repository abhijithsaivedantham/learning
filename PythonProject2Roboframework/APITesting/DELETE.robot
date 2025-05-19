*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    json


*** Variables ***
${base_URL}    https://reqres.in/
${Servicename}    api/users
&{headers}    content-type=application/json
${API_KEY}    reqres-free-v1

*** Test Cases ***
Delete request
        RequestsLibrary.Create Session    mysession    ${base_URL}    verify=True
        ${headers}=        Create Dictionary    x-api-key=${API_KEY}
        ${response}=    Delete On Session    mysession     ${Servicename}    headers=${headers}
        Log    ${response}
        Log    ${response.status_code}