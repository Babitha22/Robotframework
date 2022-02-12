*** Settings ***
Library   DateTime
Force Tags      f1      f2
Default Tags        d1


*** Test Cases ***
TC1 Print Name
    [Tags]  high
    Log To Console    hello, everyone
    Log To Console    welcome

TC2 Print Date
    ${date}      Get Current Date
    Log To Console    ${date}

TC3 Store Data
     [Tags]      high
     Set Local Variable      ${name}     babitha
     Log To Console      ${name}
     Log     hello,${name}

     ${title}    Set Variable    robotframeworksession
     Log To Console    ${title}

#store two numbers and add it
TC4 Add Number
    Set Local Variable    ${num1}     90
    Set Local Variable    ${num2}     80

    ${res}      Evaluate    ${num1}+${num2}

    Log To Console    ${res}

TC5 Area of Circle
    [Tags]      high
    Set Local Variable    ${radius}     10
    ${res}  Evaluate    3.14*${radius}*${radius}
    Log To Console    ${res}

TC6 IF Condition
    Set Local Variable     ${browser}      chrome
    IF  '${browser}'=='chrome'
            Log To Console  Yes! it's chrome
    ELSE
          Log To Console  No! it's not chrome
    END

TC7 For loop
    FOR    ${i}    IN       RANGE       1   11  1
        Log To Console    ${i}
    END



