*** Settings ***
Library   SeleniumLibrary


*** Keywords ***
launchBrowser
    [Arguments]     ${url}  ${browser}
    open browser  ${url}   ${browser}
    Maximize Browser Window
    set selenium implicit wait      10 seconds

click on element
    [Arguments]     ${locator}
    scroll element into view    ${locator}
    click element   ${locator}

enter text "${text}" on "${locator}"
    scroll element into view    ${locator}
    input text   ${locator}   ${text}

# Select radio button and checkboxs

select radio button with name "${name}" and value "${value}"
    set selenium speed      2seconds
    select radio button     ${name}     ${value}
    set selenium speed      0seconds

select checkbox name "${name}"
    set selenium speed      2seconds
    select checkbox     ${name}
    set selenium speed      0seconds

unselect checkbox name "${name}"
    set selenium speed      2seconds
    unselect checkbox     ${name}
    set selenium speed      0seconds

# handling dropdown

select option from dropdown list
    [Arguments]     ${select_dropdown_name}     ${type}     ${value}
    run keyword if  '${type}'=='label'     select from list by label    ${select_dropdown_name}    ${value}
    run keyword if  '${type}'=='index'     select from list by index    ${select_dropdown_name}    ${value}
    run keyword if  '${type}'=='value'     select from list by value    ${select_dropdown_name}    ${value}



