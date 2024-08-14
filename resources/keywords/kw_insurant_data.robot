*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource     keywords.robot
Resource    ../variables/var_insurant_data.robot
Resource    ../variables/variables.robot

*** Keywords ***

Fill Name
    [Arguments]   ${name}
    Input Text    ${firstName}    ${name}

Fill Last Name
    [Arguments]   ${name}
    Input Text    ${lastName}    ${name}

Fill Date Of Birth
    [Arguments]   ${birth}
    Input Text    ${dateOfBirth}    ${birth}

Choice Gender
    [Arguments]    ${value}
    Run Keyword If  '${value}' == 'Male'    Click Element  ${gender}
    Run Keyword If  '${value}' == 'Female'  Click Element  ${genderfemale}

Fill Street Address
    [Arguments]    ${value}
    Input Text    ${streetAddress}    ${value}
Select Country By Index
    [Arguments]    ${index}
    Select From List By Index   ${country}    ${index}
Select Country By Value
    [Arguments]    ${value}
    Select From List By Value    ${country}   ${value}
Fill Zip Code
    [Arguments]   ${value}
    Input Text    ${zipCode}    ${value}

Fill City
    [Arguments]   ${value}
    Input Text    ${city}    ${value}
Choice Occupation By Value
    [Arguments]   ${value}
    Select From List By Value    ${occupation}    ${value}
Choice Occupation By Index
    [Arguments]   ${index}
    Select From List By Index    ${occupation}    ${index}
Choice Hobbies
    [Arguments]  @{options}
    FOR  ${option}  IN  @{options}
      Log    //*[@id="${option}"]
      Wait Until Element Is Enabled    //*[@id="${option}"]
      Run Keyword If  '${option}' != ''  Click Element    //*[@id="${option}"]//ancestor::label/span
    END
Fill Website
    [Arguments]   ${url}
    Input Text    ${website}    ${URL}
Fill Insurant Data
    Input Text    ${firstName}    Raui
    Input Text    ${lastName}    Macedo
    Input Text    ${dateOfBirth}    01/01/2000
    Click Element    ${gender}
    Select By Value    ${country}   Brazil
    Input Text    ${zipCode}    01400000
    Select By Value    ${occupation}  Employee
    Click Element     ${hobbies}
    Click Button    ${nextProductData}
