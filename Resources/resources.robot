*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#***Open Browser***
Start Browser and Maximize
    open browser    https://thetestingworld.com/testings/   chrome
    maximize browser window

Close browser windows
    ${Title}=   Get Title
    log    ${Title}
    close browser

#***Date Picker***
Click Next Month
    wait until element is visible    //a[.='Next']
    click element    //a[.='Next']
Click back Month
    wait until element is visible    //a[.='Prev']
    click element    //a[.='Prev']
