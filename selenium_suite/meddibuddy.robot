*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register form
    Open Browser        url=https://www.medibuddy.in/      browser=edge    executable_path=${EXECDIR}\\drivers\\msedgedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    babitha
    Input Text    name=email    bob@gmail.com
    Input Text    id=companyName    bbbbb
    Input Text    id=mobileNumber    6789653
    Click Element    xpath=//input[@value='Next']
#   Close Window
    Close Browser