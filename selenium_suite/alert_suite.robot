*** Settings ***
Library     SeleniumLibrary

*** Comments ***
1. navigate to the url: https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
2. click on go
3. get the text from alert box
4. click on OK in the alert box
5. close the browser

*** Test Cases ***
TC1
        Open Browser        browser=edge        executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
   Click Element    xpath=//img[@alt='Go']
   Sleep    5s
   ${alert_text}    Handle Alert    action=ACCEPT   timeout=20s
   Log To Console    ${alert_text}
   Close Browser