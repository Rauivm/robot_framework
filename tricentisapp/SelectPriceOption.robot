*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource          resource.robot


*** Keywords ***
Select Price Option
    Click Element    ${priceOption}
    Scroll Element Into View  ${nextQuote}
    Click Element    ${nextQuote}