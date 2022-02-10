*** Settings ***
Library    Collections

*** Comments ***
working with  local variable scalar, list, dic

*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       balaji
    ${lastname}     Set Variable    dinakaran
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   90000

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=Balaji    lastname=Dinakaran   mobile=8999
    Log To Console    ${dic}[lastname]