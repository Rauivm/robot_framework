*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/keywords/kw_insurant_data.robot
Resource  ../resources/variables/variables.robot

*** Test Cases ***
Test Insurant
    Open Browser Page
    Select Menu Item   Automobile
    Fill Name   Test
    Fill Last Name    Sobrenome
    Fill Date Of Birth    01/01/2000
    Choice Gender    Male
    Fill Street Address    Rua Street
    Select Country By Value    Brazil
    Fill Zip Code    123456
    Fill City    Cidade
    Choice Occupation By Value  Employee
    Choice Hobbies    speeding   skydiving
    Fill Website      ${URL}