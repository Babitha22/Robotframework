*** Settings ***
Library     SeleniumLibrary

#robot selenium_suite/orange_hrm_suite.robot

*** Test Cases ***
TC1 Valid Login
    Open Browser        url=https://demo.openemr.io/b/openemr/index.php     browser=edge    executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}        Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Close Browser

TC2 Valid Login
    Open Browser        url=https://demo.openemr.io/b/openemr/index.php     browser=edge    executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label     name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}       Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Mouse Over    xpath=//span[@data-bind='text:fname']
    Click Element    xpath=//li[text()='Logout']
    Close Browser
