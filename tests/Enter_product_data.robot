*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/keywords/kw_product_data.robot
Resource  ../resources/variables/variables.robot

*** Test Cases ***
Test Product Data
#    Open Browser Page
#    Select Menu Item   Automobile
    Fill Start Date
    Select Insurance Sum [$]   3000000
    Select Merit Rating    Bonus 9
    Select Damage Insurance    Full Coverage
    Choice Optional Products   Euro Protection
    Select Courtesy Car    Yes
    Nexto to Price Options