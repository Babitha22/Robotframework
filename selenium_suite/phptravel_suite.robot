*** Settings ***
Library     SeleniumLibrary
Library     AutoRecorder    node=suite,test

*** Test Cases ***
TC1 PHP Travel
    Open Browser    browser=edge      executable_path=${EXECDIR}${/}drivers${/}msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//a[text()='flights']

    Input Text    id=autocomplete    lax
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

    Input Text    id=autocomplete2    dal
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

    Input Text    id=departure    30-03-2022

    Click Element    xpath=//i[@class='la la-user form-icon']

    Click Element    xpath=//i[@class='la la-plus']
    Click Element    xpath=//i[@class='la la-plus']
    Click Element    xpath=//i[@class='la la-plus']

    Click Element    xpath=(//i[@class='la la-plus'])[2]
    Click Element    xpath=(//i[@class='la la-plus'])[2]
    [Teardown]     Close Browser
