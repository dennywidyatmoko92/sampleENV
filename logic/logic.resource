*** Settings ***
Library    SeleniumLibrary
Resource    ../element/element_test.resource

*** Variables ***
${ENV}

*** Keywords ***
click login
    Log To Console   ${${ENV}_login_element}

click login argument
    [Arguments]    ${username}    ${password}
    Log To Console    user melakukan klik ${${ENV}_login_element}
    Log To Console    user input ID ${username}
    Log To Console    user password ${password}



