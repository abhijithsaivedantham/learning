*** Settings ***
Library     RequestsLibrary
Library     String
Library     Collections
Library     json

*** Variables ***
${base_URL}     https://videogamedb.uk:443/
${Servicename}      api/v2/videogame/1
&{sample_body}      category=Platform   name=Mario  rating=Mature   releaseDate=2012-05-04  reviewScore=85
&{headers}      content-type=application/json
${API_KEY}      reqres-free-v1

*** Test Cases ***
Putrequest
        RequestsLibrary.Create Session      mysession     ${base_URL}       verify=True
        &{headers}=    Create Dictionary    x-api-key=${API_KEY}
        ${response}=        Put On Session     mysession     ${Servicename}      json=&{sample_body}       headers=&{headers}
        Log     ${Response.json()}
        Log     ${Response.status_code}