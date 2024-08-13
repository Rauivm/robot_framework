*** Settings ***
Resource     keywords.robot
Resource    ../variables/var_vehicle_data.robot
Resource    ../variables/variables.robot


*** Keywords ***
Select make
    [Arguments]                  ${index}
    ${value}=    Get From List    ${valueMake}    ${index}
    Select From List By Value    ${make}    ${value}

Select model
    [Arguments]                  ${index}
    Select From List By Value    ${model}    ${index}

Fill Cylinder Capacity [ccm]
    [Arguments]                 ${value}
    Input Text    ${cylinderCapacity}    ${value}

Fill Engine Performance [kW]
    [Arguments]    ${value}
    Input Text     ${enginePerformance}    ${value}

Fill Date of Manufacture
   # [Arguments]    ${value}
    ${yyyy}  ${mm}  ${dd}=  Get Time    year,month,day
    #${year} =   set variable  ${yyyy}
    #${newyear} =   set variable  ${1}
    #${futureyear} =    Evaluate    ${year}+${newyear}
    #Input Text    ${startDate}    
    Input Text     ${dateOfManufacture}    ${mm}/${dd}/${yyyy}

Select Number of Seats
    [Arguments]    ${value}
    Select From List By Value   ${numberOfSeats}    ${value}

Select The Number Of Seats On The Motorcycle
    [Arguments]    ${value}
    Select From List By Value    ${numberOfSeatsMotorcycle}    ${value}

Is It Right Hand Drive
    [Arguments]      ${value}
    Click Element    ${value}

Select Fuel Type
    [Arguments]    ${index}
    ${value}=    Get From List    ${valueFuelType}    ${index}
    Select From List By Value    ${fuelType}    ${value}

Fill Payload [kg]
    [Arguments]    ${value}
    Input Text    ${payload}    ${value}

Fill Total Weight [kg]
    [Arguments]    ${value}
    Input Text    ${totalWeight}    ${value}

Fill List Price [$]
    [Arguments]    ${value}
    Input Text    ${listPrice}    ${value}

Fill License Plate Number
    [Arguments]    ${value}
    Input Text     ${licensePlateNumber}    ${value}
Fill Annual Mileage [mi]
    [Arguments]    ${value}
    Input Text    ${annualMileage}    ${value}
Next
    Click Button    ${Next}    