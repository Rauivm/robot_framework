*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource          resource.robot


*** Keywords ***
Fill Send Quote
    Input Text    ${email}  email@dominio.com
    Input Text    ${username}  raui
    Input Text    ${password}  Pass123
    Input Text    ${confirmPassword}  Pass123
    Click Button     ${send}
    Wait Until Element Is Not Visible  ${loading}  10s
    Wait Until Element Is Visible  ${ok}  30s
    Capture Element Screenshot  ${alert}
    Click Button  ${ok}