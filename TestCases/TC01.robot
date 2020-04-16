*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/common.robot
Variables   ../Locators/landing_page.py

*** Variables ***


*** Test Cases ***
LoginTest
   launchBrowser  https://fb.com   chrome
   select option from dropdown list     birthday_day    label   3
   title should be  Facebook – log in or sign up
   enter text "9717549650" on "${email_textbox}"
   enter text "bharatpur1" on "${password_textbox}"
   click on element   ${login_button}

*** Settings ***