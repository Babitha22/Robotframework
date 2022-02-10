*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
       Open Browser       browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-966
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    link=Calculate Membership Fee
    ${alert_text}  Handle Alert  action=Accept  timeout=20s
    Log To Console  ${alert_text}
    Close Browser
