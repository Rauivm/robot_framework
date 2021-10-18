*** Settings ***
Documentation     Fill field of product data.

Resource          resource.robot


*** Keywords ***
Fill Product Data
    Input Text    ${startDate}    03/01/2022
    Select By Value    ${insuranceSum}  20000000
    Select By Value    ${meritRating}  Super Bonus
    Select By Value    ${damageInsurance}  Full Coverage
    Click Element    ${optionalProducts}
    Select By Value    ${courtesyCar}  Yes
    Click Button    ${nextSelectPriceOption}
