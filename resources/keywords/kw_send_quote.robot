*** Settings ***
Resource     keywords.robot
Resource    ../variables/var_send_quote.robot
Resource    ../variables/variables.robot
*** Keywords ***
Fill Email
    [Arguments]    ${value}
    Input Text    ${email}  ${value} 
Fill Phone
    [Arguments]   ${value}
    Input Text    ${phone}   ${value}
Fill Username
    [Arguments]   ${value}
    Input Text    ${username}   ${value}

Fill Password
    [Arguments]   ${value}
    Input Password   ${password}   ${value}

Confirm Password
    [Arguments]   ${value}
    Input Password    ${password}   ${value}

Send E-mail
    Click Button     ${send}

Success Alert
    Wait Until Element Is Not Visible     ${loading}  60s
    Wait Until Element Is Visible         ${ok}  60s
    Capture Element Screenshot  ${alert}
    Click Button  ${ok}