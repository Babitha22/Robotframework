*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register form
    Open Browser        url=https://nasscom.in/about-us/career      browser=edge    executable_path=${EXECDIR}\\drivers\\msedgedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    xpath=//a[contains(text(),'New User')]
    Input Text    id=edit-field-fname-reg      admin
    Input Text    id=edit-field-lname    pass
    Input Text    id=edit-mail    admin@gmail.com
    Input Text    id=edit-field-company-name-registration    Google
    Click Element    name=op
    Close Browser
