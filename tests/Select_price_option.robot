*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/keywords/kw_price_option.robot
Resource  ../resources/variables/variables.robot
*** Test Cases ***
Test Price Option
    Open Browser Page
    Select Menu Item   Automobile
    Select Price Option From Table    Platinum
    Next to Quote