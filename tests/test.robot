*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../testdata/testdata.resource   
Resource    ../testdata/commons.resource
Resource    ../logic/logic.resource
*** Variables ***
${ENV}    


##ELEMENT

*** Test Cases ***
Demo
    Log To Console    ${${ENV}_URL}

    IF    '${ENV}' == 'DEV'
    fitur A pada DEV
    ELSE IF    '${ENV}' == 'SB'
    fitur A pada Sandbox
    ELSE IF    '${ENV}' == 'PROD'
    fitur A pada prod
    END
coba run argument
    click login argument    ${${ENV}_username}     ${${ENV}_password}  

*** Keywords ***
fitur A pada DEV
    Log To Console    lakukan DEV
    click login
fitur A pada Sandbox
    Log To Console    lakukan Sandbox
    click login
fitur A pada prod
    Log To Console    lakukan PROD
    click login
click login
    [Arguments]
    Log To Console    user melakukan klik ${${ENV}_login_element}
    Log To Console    user input ID ${${ENV}_username}
    Log To Console    user password ${${ENV}_password}