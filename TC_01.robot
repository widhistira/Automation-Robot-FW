*** Settings ***
Library  SeleniumLibrary
Resource    Resources/resources.robot
Resource    TestCase/RegisterTest/register.robot
Resource    TestCase/LoginTest/login.robot
#Resource    C:/Users/howah/Documents/pycharm/TestProject/TestCase/__init__.robot
#Documentation    This automation having test by me
#Test Setup    Start Browser and Maximize
#Test Teardown    Close browser windows
#Force Tags    ALL_TC


*** Test Cases ***
Robot First Test Case
#    set selenium timeout    2s
#    [Tags]    Smoke
#    Test input field username password email    Leon    leon@gmail.com  Test123
#    Test input field Register#    Test Login
