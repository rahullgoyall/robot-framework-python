# command robot --include=sanity    TestCases/GroupTest.robot
# include multiple tags command robot -i sanity -i sanity2    TestCases/GroupTest.robot
*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/common.robot

*** Variables ***


*** Test Cases ***
TC01
    [tags]  sanity
    print   tc01

TC02
    [tags]  sanity2
    print   tc02


*** Settings ***