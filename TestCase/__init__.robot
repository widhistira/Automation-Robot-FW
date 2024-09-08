*** Settings ***
Library    SeleniumLibrary
Suite Setup     Before Each Test Suite
Suite Teardown    After Each Test Suite

*** Keywords ***
Before Each Test Suite
    log     Test Suite Started

After Each Test Suite
    Log     Test Suite Ended