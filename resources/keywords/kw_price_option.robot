*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource     keywords.robot
Resource    ../variables/var_price_option.robot
Resource    ../variables/variables.robot

*** Keywords ***
Select Price Option From Table
    [Arguments]    ${option}
    ${selector}=   Get Option Selector    ${option}
    Click Element  ${selector}

Get Option Selector
    [Arguments]    ${option}
    Run Keyword If  '${option}' == '${SILVER}'     RETURN FROM KEYWORD    ${SILVER_SELECTOR}
    Run Keyword If  '${option}' == '${GOLD}'       RETURN FROM KEYWORD    ${GOLD_SELECTOR}
    Run Keyword If  '${option}' == '${PLATINUM}'   RETURN FROM KEYWORD    ${PLATINUM_SELECTOR}
    Run Keyword If  '${option}' == '${ULTIMATE}'   RETURN FROM KEYWORD    ${ULTIMATE_SELECTOR}
    Fail    Option "${option}" não é reconhecida.


Next to Quote
    Scroll Element Into View  ${nextQuote}
    Click Element    ${nextQuote}