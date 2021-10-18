*** Settings ***
Documentation     Fill field of insurance data.

Resource          resource.robot


*** Keywords ***
Fill Insurant Data
    Input Text    ${firstName}    Raui
    Input Text    ${lastName}    Macedo
    Input Text    ${dateOfBirth}    01/01/2000
    Click Element    ${gender}
    Select By Value    ${country}   Brazil
    Input Text    ${zipCode}    39401000
    Select By Value    ${occupation}  Employee
    Click Element     ${hobbies}
    Click Button    ${nextProductData}
