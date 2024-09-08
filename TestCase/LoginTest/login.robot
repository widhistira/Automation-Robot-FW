*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Test Login
    set selenium speed    0.2s
    set selenium timeout    2s
    wait until page contains element    xpath://label[text()='Login']
    click element    xpath://label[text()='Login']
    page should contain textfield    name:_txtUserName
    input text    name:_txtUserName     leon@gmail.com
    page should contain textfield    name:_txtPassword
    input text    name:_txtPassword     test123
    click element    xpath://li[2]//input[@name='terms']
    click button    xpath://input[@value='Login']
    sleep    2s
