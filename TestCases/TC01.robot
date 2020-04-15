*** Settings ***
Library   SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
   open browser  https://fb.com   chrome
   Maximize Browser Window
   title should be  Facebook – log in or sign up
   input text   name:email      9717549650
   input text   name:pass   bharatpur1
   click element    xpath://input[@value='Log In']

*** Settings ***