*** Settings ***
Library   DateTime


*** Test Cases ***
TC1 Print Name
    Log To Console    hello, everyone
    Log To Console    welcome

TC2 Print Date
    ${date}      Get Current Date
    Log To Console    ${date}

TC3 Store Data
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

Tc5 Area of Circle
    Set Variable    ${ra}   2
    Set Variable    ${pi}   3.14

    ${a}    Evaluate    ${ra}*${ra}*3.14
    Log To Console    ${a}

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



