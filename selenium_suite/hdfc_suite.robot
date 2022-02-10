*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge     executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']

    Input Text    name=fldLoginUserId    Abc123
    Click Element    link=CONTINUE
    Unselect Frame

