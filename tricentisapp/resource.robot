*** Variables ***
${Browser}        Chrome
${SiteUrl}        http://sampleapp.tricentis.com/101/app.php
${make}    xpath://select[@id='make']
${valueMake}      Audi
${model}    xpath://select[@id='model']
${valueModel}     Scooter
${cylinderCapacity}    xpath://input[@id='cylindercapacity']
${valueCylinderCapacity}    1000
${enginePerformance}    xpath://input[@id='engineperformance']
${valueEnginePerformance}    1000
${dateOfManufacture}     xpath://input[@id='dateofmanufacture']
${valueDateOfManufacture}    12/31/2019
${numberOfSeats}    xpath://select[@id='numberofseats']
${valueNumberOfSeats}    2
${rightHandDriveNo}    //div[7]/p/label[2]/span
${numberOfSeatsMotorcycle}    xpath://select[@id='numberofseatsmotorcycle']
${fuelType}    xpath://select[@id='fuel']
${valueFuelType}    Gas
${payload}    xpath://input[@id='payload']
${valuePayload}    1000
${totalWeight}     xpath://input[@id='totalweight']
${valueTotalWeight}    1000
${listPrice}    xpath://input[@id='listprice']
${valueListPrice}    1000
${licensePlateNumber}    xpath://input[@id='licenseplatenumber']
${valueLicensePlateNumber}    1000
${annualMileage}    xpath://input[@id='annualmileage']
${valueAnnualMileage}    1000

#Enter Insurant Data
${firstName}    xpath://input[@id='firstname']
${lastName}     xpath://input[@id='lastname']
${dateOfBirth}    xpath://input[@id='birthdate']
${gender}    xpath://div[4]/p/label[1]/span
${streetAddress}    xpath://input[@id='streetaddress']
${country}    xpath://select[@id='country']
${zipCode}    xpath://input[@id='zipcode']
${city}     xpath://input[@id='city']
${occupation}    xpath://select[@id='occupation']
${hobbies}     xpath://div[10]/p/label[1]/span
${nextProductData}    xpath://button[@id='nextenterproductdata']


#Enter Product Data
${startDate}    xpath://input[@id='startdate']
${insuranceSum}    xpath://select[@id='insurancesum']
${meritRating}    xpath://select[@id='meritrating']
${damageInsurance}    xpath://select[@id='damageinsurance']
${optionalProducts}    xpath://label[normalize-space()='Euro Protection']//span[@class='ideal-check']
${courtesyCar}    xpath://select[@id='courtesycar']
${nextSelectPriceOption}    //button[@id='nextselectpriceoption']

#Select Price Option
${priceOption}    xpath://th/label[4]
${nextQuote}    xpath://*[@id="nextsendquote"]



#Send Quote
${email}    xpath://input[@id='email']
${phone}    xpath://input[@id='phone']
${username}    xpath://input[@id='username']
${password}    xpath://input[@id='password']
${confirmPassword}    xpath://input[@id='confirmpassword']
${send}    xpath://button[@id='sendemail']
${alert}   xpath://body/div[4]
${ok}    xpath://button[@class='confirm']

${loading}   //div[@class='isloading-overlay']