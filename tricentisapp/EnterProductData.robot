*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource          resource.robot


*** Keywords ***
Fill Product Data
    ${yyyy}  ${mm}  ${dd}=  Get Time    year,month,day
    ${year} =   set variable  ${yyyy}
    ${newyear} =   set variable  ${1}
    ${futureyear} =    Evaluate    ${year}+${newyear}
    Input Text    ${startDate}    ${mm}/${dd}/${futureyear}
    Select By Value    ${insuranceSum}  20000000
    Select By Value    ${meritRating}  Super Bonus
    Select By Value    ${damageInsurance}  Full Coverage
    Click Element    ${optionalProducts}
    Select By Value    ${courtesyCar}  Yes
    Click Button    ${nextSelectPriceOption}