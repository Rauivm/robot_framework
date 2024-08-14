*** Variables ***
${BROWSER}        Chrome
${URL}        http://sampleapp.tricentis.com/101/app.php


${menu}    xpath=//ul[@class='menu']/li/a[text()='{item_name}']






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