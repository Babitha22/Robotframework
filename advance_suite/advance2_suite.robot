*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge      executable_path=${EXECDIR}${/}drivers${/}msedgedriver.exe
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Set Window Size    600    800
    Go To    url=http://google.com/
    Press Keys      xpath=//input[@name='q']       Balaji
    Press Keys      None        ARROW_DOWN
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN