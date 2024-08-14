*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource     keywords.robot
Resource    ../variables/var_product_data.robot
Resource    ../variables/variables.robot

*** Keywords ***
Fill Start Date
    ${yyyy}  ${mm}  ${dd}=  Get Time    year,month,day
    ${year} =   set variable  ${yyyy}
    ${newyear} =   set variable  ${1}
    ${futureyear} =    Evaluate    ${year}+${newyear}
    Wait Until Element Is Visible    ${startDate}
    Input Text    ${startDate}    ${mm}/${dd}/${futureyear}
Select Insurance Sum [$]
    [Arguments]      ${value}
    Select From List By Value    ${insuranceSum}    ${value}

Select Merit Rating
    [Arguments]    ${value}
    Select From List By Value    ${meritRating}     ${value}

Select Damage Insurance
    [Arguments]     ${value}
    Select From List By Value    ${damageInsurance}   ${value}
Choice Optional Products
    [Arguments]     ${value}
    Click Element    ${optionalProducts.replace("{value}","${value}")}
Select Courtesy Car
    [Arguments]    ${value}
    Select From List By Value    ${courtesyCar}  ${value}
Nexto to Price Options
    Click Button    ${nextSelectPriceOption}