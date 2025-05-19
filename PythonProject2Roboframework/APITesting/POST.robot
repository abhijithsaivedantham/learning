*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    json


*** Variables ***
${base_URL}    https://reqres.in/
${Servicename}    api/users
&{sample_body}    name=morpheus    job=zion resident
&{headers}    content-type=application/json
${API_KEY}    reqres-free-v1


*** Test Cases ***
Postrequest
        RequestsLibrary.Create Session    mysession    ${base_URL}    verify=True
        ${headers}=        Create Dictionary    x-api-key=${API_KEY}
        ${response}=    POST On Session    mysession     ${Servicename}    data=${sample_body}    headers=${headers}
        Log    ${response.json()}
        Log    ${response.status_code}