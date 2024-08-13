*** Settings ***
Documentation     A test suite with a single test for page Home.

Library           SeleniumLibrary
Library           OperatingSystem
Library  		  Collections
Library           DateTime

Resource          resource.robot


*** Variables ***

#botão

${Next}    xpath://button[@id='nextenterinsurantdata']


*** Keywords ***
Open Browser Page
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

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