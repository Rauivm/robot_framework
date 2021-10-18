*** Settings ***
Documentation     A test suite with a single test for page Home.

Resource          resource.robot

*** Keywords ***
Fill Vehicle Data
	Open Browser Page
    Select By Value    ${make}    ${valueMake}
    Select By Value    ${model}    ${valueModel}
    Input Text    ${cylinderCapacity}     ${valueCylinderCapacity}
    Input Text    ${enginePerformance}    ${valueEnginePerformance}
    Input Text    ${dateOfManufacture}    ${valueDateOfManufacture}
    Select By Value     ${numberOfSeats}    ${valueNumberOfSeats}
    Click Element   ${rightHandDriveNo}
    Select By Value     ${numberOfSeatsMotorcycle}    ${valueNumberOfSeats}
    Select By Value   ${fuelType}    ${valueFuelType}
    Input Text    ${payload}  ${valuePayload}
    Input Text    ${totalWeight}  ${valueTotalWeight}
    Input Text    ${listPrice}  ${valueListPrice}
    Input Text    ${licensePlateNumber}  ${valueLicensePlateNumber}
    Input Text    ${annualMileage}  ${valueAnnualMileage}
    Click Button    ${Next}
#    