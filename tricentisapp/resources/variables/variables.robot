*** Variables ***
${BROWSER}        Chrome
${URL}        http://sampleapp.tricentis.com/101/app.php



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
${nextQuote}    xpath://div[2]/button[2]



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