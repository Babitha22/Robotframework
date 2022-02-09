*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1 Valid Login
     Append To Environment Variable      Path    ${EXECDIR}\\drivers
    Open Browser    url=https://opensource-demo.orangehrmlive.com/       browser=edge
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword        admin123
    Click Element    name=Submit
    ${url}  Get Location
    Log To Console    ${url}
    Click Element    id=welcome
    Sleep    5s
    Click Element    link=Logout
    Close Browser
# Adding contact
TC2 Add Emergency Contact
    Append To Environment Variable      Path    ${EXECDIR}\\drivers
    Open Browser    url=https://opensource-demo.orangehrmlive.com/       browser=edge
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword        admin123
    Click Element    name=Submit
    ${url}      Get Location
    Log To Console    ${url}
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    abc
    Input Text    id=emgcontacts_relationship    Mother
    Input Text    name=emgcontacts[homePhone]    097655678
    Input Text    name=emgcontacts[mobilePhone]    765432178
    Click Element    id=btnSaveEContact

    