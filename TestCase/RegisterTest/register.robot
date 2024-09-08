*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/howah/Documents/pycharm/TestProject/Resources/resources.robot

*** Keywords ***
Test input field username password email
    set selenium speed    0.1second
    wait until page contains element    xpath://label[text()='Register']
    element text should be    xpath://div[@id='tab-content1']/p     Register now and kick start your career as a Software Testing Pro!
    [Arguments]     ${username}     ${email}     ${password}
    page should contain textfield    name=fld_username
    input text    name=fld_username     ${username}
    page should contain textfield    name=fld_email
    input text    name=fld_email        ${email}
    page should contain textfield    name=fld_password
    clear element text    name=fld_password
    input text    name=fld_password     ${password}
    page should contain textfield    name=fld_cpassword
    input text    name=fld_cpassword     ${password}
    ${speed}=   get selenium speed
    log to console    ${speed}

Test input field Register
    set selenium speed    0.1second
    execute javascript    window.scrollTo(0,300)
    page should contain textfield    id=datepicker
    click element    id=datepicker
    click back month
    click next month
    click element    //div[@id='ui-datepicker-div']
    ${value}=   get element attribute    id=datepicker  value
    should be equal as strings    ${value}  09/11/2024
    page should contain textfield    name=phone
    input text    name=phone     12456874
    page should contain textfield    name=address
    input text    name=address     japan tokyodesu 12456
    page should contain radio button    add_type    home    radio
    select radio button    add_type     office
    select radio button    add_type     home
    select from list by index    name:sex   2
    select from list by value    name:sex   1
    select from list by label    name:country   Indonesia
    set selenium implicit wait    4s
    ${default_T}=   get selenium implicit wait
    log to console    ${default_T}
    select from list by label    name:state     Jakarta
    set selenium implicit wait    4s
    select from list by label     name:city     Jakarta
    page should contain textfield    name=zip
    input text    name:zip      322025
    click link    xpath://a[text()='Read Detail']
    set selenium implicit wait    1s
    click link    xpath://a[text()='X']
    select checkbox    name:terms
    checkbox should be selected    name=terms
    click button    //input[@value='Sign up']
    sleep    2s