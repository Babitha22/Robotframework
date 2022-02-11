*** Comments ***
working with global variables
Create a dictionary called "PERSONAL_DETAIL" to store firstname,lastname,mobile
*** Settings ***
Library    Collections

*** Variables ***
${MY_NAME}      Babitha
@{COLORS}   red     green   yellow  blue    black   pink
&{EMPLOYEE1}    empid=101   empname=babi    age=27

*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}drivers${/}msedgedriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC2
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

    FOR    ${i}     IN RANGE    0    ${count}    1
        Log To Console    ${COLORS}[${i}]
    END

TC3
    FOR    ${color}     IN    @{COLORS}
        Log To Console    ${color}
    END

TC4
    Log To Console    ${EMPLOYEE1}
    Log To Console    ${EMPLOYEE1}[empname]
    Log To Console    The employee age is ${EMPLOYEE1}[age]
    Log To Console    ${EMPLOYEE1}
    Log List    ${COLORS}
    Comment     learnt the scalar,list, dic
    
TC5
    Log To Console    ${PERSONAL_DETAIL}[firstname]

TC6
    Log To Console    ${PERSONAL_DETAIL}[firstname]

# Commands present here
