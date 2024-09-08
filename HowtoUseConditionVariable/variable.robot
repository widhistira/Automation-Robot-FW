*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Test Variable test
        ${var}=     set variable    YES
        run keyword if     '${var}'=='YES'     log to console    Value Found
        run keyword if     '${var}'=='NO'        log to console    Value Not Found
