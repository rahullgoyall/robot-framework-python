*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/common.robot
Variables   ../Locators/landing_page.py
Suite Setup  launchBrowser  https://fb.com   chrome
Suite Teardown  quitBrowser

*** Variables ***


*** Test Cases ***
LoginTest
   select option from dropdown list     birthday_day    label   3
   title should be  Facebook – log in or sign up
   enter text "232" on "${email_textbox}"
   enter text "pas" on "${password_textbox}"
   click on element   ${login_button}

*** Keywords ***
