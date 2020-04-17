*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/common.robot
Variables   ../Locators/landing_page.py
Test Setup  launchBrowser  https://fb.com   chrome
Test Teardown  quitBrowser
Test Template  loginUser
*** Variables ***


*** Test Cases ***
login user with valid data     123      pass
login user without password     12      ${EMPTY}

*** Keywords ***
loginUser
    [arguments]  ${username}    ${password}
    title should be  Facebook – log in or sign up
    enter text "${username}" on "${email_textbox}"
    enter text "${password}" on "${password_textbox}"
    click on element   ${login_button}
