*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/keywords/kw_vehicle_data.robot
Resource  ../resources/variables/variables.robot


*** Test Cases ***
Test
    Open Browser Page
    Select Menu Item   Automobile
    Select make     3
    Fill Engine Performance [kW]    2000
    Fill Date of Manufacture
    Select Number of Seats    2
    Select Fuel Type    3
    Fill List Price [$]    1000
    Fill License Plate Number    abcde12345
    Fill Annual Mileage [mi]    7000
    Next   ${Next}
