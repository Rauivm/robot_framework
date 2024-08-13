*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime

Resource   ../variables/variables.robot

*** Keywords ***
Open Browser Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Select Menu Item
    [Arguments]    ${item_name}
    ${item_locator}=    Set Variable    ${menu.replace("{item_name}","${item_name}")}
    Click Link    ${item_locator}

Select By Value
    [Arguments]    ${locator}    ${value}
    Page Should Contain Element    ${locator}    ${value}
    Select From List By Value    ${locator}    ${value}
    List Selection Should Be     ${locator}    ${value}

Exit Selenium
    Capture Page Screenshot
    Close Browser

Fill Year For DateTime
    ${TODAY}    Get Current Date
    ${TODAY}    Convert Date    ${TODAY}   datetime
    [return]    ${TODAY.month}  ${TODAY.day}  ${TODAY.year}