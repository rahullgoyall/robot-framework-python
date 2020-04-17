# add robotframework-datadriver library in pycham
# pip install -U robotframework-datadriver[XLS]'

*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/common.robot
Variables   ../Locators/landing_page.py
Library  DataDriver    ../TestData/login_data.xlsx  sheet_name=Sheet1
Test Setup  launchBrowser  https://fb.com   chrome
Test Teardown  quitBrowser
Test Template  loginUser
*** Variables ***


*** Test Cases ***
invalid data using   ${username}    ${password}

*** Keywords ***
loginUser
    [arguments]     ${username}    ${password}
    title should be  Facebook – log in or sign up
    enter text "${username}" on "${email_textbox}"
    enter text "${password}" on "${password_textbox}"
    click on element   ${login_button}
