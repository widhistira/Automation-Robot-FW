*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Variables ***
@{ITEMS}    PC PS LAPTOP SEGA NINTENDO


*** Test Cases ***
Test Looping
#*loop number*
#    @{ITEMS}     create list     Hello 22,23,24 123456
     FOR    ${i}    IN RANGE    1   20
        log to console    ${i}
        # Do something with ${item}
    END

#*loop item*
     FOR    ${i}    IN    @{ITEMS}
        log to console    ${i}
    END