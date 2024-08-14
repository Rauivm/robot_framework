*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/variables/variables.robot
Resource  ../resources/keywords/kw_insurant_data.robot
Resource  ../resources/keywords/kw_product_data.robot
Resource  ../resources/keywords/kw_vehicle_data.robot
Resource  ../resources/keywords/kw_price_option.robot
Resource  ../resources/keywords/kw_send_quote.robot



Library   FakerLibrary

Suite Setup      Open Browser Page
Suite Teardown   Close All Browsers

*** Test Cases ***
Enter Veichle Data
    Select Menu Item   Automobile
    Select make     3
    Fill Engine Performance [kW]    2000
    Fill Date of Manufacture
    Select Number of Seats    2
    Select Fuel Type    3
    Fill List Price [$]    1000
    Fill License Plate Number    abcde12345
    Fill Annual Mileage [mi]    7000
    Next To Insurant Data

Enter Insurant Data
    ${NAME}        FakerLibrary.first_name
    ${LASTNAME}    FakerLibrary.last_name
    ${ADDRESS}     FakerLibrary.Address
    ${COUNTRY}     FakerLibrary.Country
    ${ZIPCODE}     FakerLibrary.Postalcode
    ${CITY}        FakerLibrary.City
    ${BIRTH}       FakerLibrary.date_of_birth  minimum_age=18  maximum_age=70
    Fill Name         ${NAME}
    Fill Last Name    ${LASTNAME}
    Fill Date Of Birth    ${BIRTH.month}/${BIRTH.day}/${BIRTH.year}
    Choice Gender    Male
    Fill Street Address    ${ADDRESS}
    Select Country By Value    ${COUNTRY}
    Fill Zip Code    ${ZIPCODE}
    Fill City    ${CITY}
    Choice Occupation By Value  Employee
    Choice Hobbies    speeding   skydiving
    Fill Website      ${URL}
    Next To Product Data

Enter Product Data
    Fill Start Date
    Select Insurance Sum [$]   3000000
    Select Merit Rating    Bonus 9
    Select Damage Insurance    Full Coverage
    Choice Optional Products   Euro Protection
    Select Courtesy Car    Yes
    Nexto to Price Options

Select Price Option
    Select Price Option From Table    Platinum
    Next to Quote
Send Quote
    Fill Email    teste@email.com
    Fill Phone    312456789
    Fill Username  Teste
    Fill Password    Pass123
    Confirm Password   Pass123
    Send E-mail
    Success Alert

