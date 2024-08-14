*** Variables ***
#Enter Insurant Data
${firstName}          xpath://input[@id='firstname']
${lastName}           xpath://input[@id='lastname']
${dateOfBirth}        xpath://input[@id='birthdate']
${gender}             xpath://div[4]/p/label[1]/span
${gendermale}         xpath://*[@id="gendermale"]
${genderfemale}       xpath://div[4]/p/label[2]/span
${streetAddress}      xpath://input[@id='streetaddress']
${country}            xpath://select[@id='country']
${zipCode}            xpath://input[@id='zipcode']
${city}               xpath://input[@id='city']
${occupation}         xpath://select[@id='occupation']
#${hobbies}            //*[@id="insurance-form"]/div/section[2]/div[10]

${Speeding}           xpath://input[@id='speeding']
${BungeeJumping}      xpath://input[@id='bungeejumping']
${CliffDiving}        xpath://input[@id='cliffdiving']
${SkyDiving}          xpath://input[@id='skydiving']
${Other}              xpath://input[@id='other']

#@{hobbies}            ${Speeding}  ${BungeeJumping}  ${CliffDiving}  ${SkyDiving}  ${Other}
${website}            //*[@id="website"]
${picture}            //*[@id="picture"]
${nextProductData}    xpath://button[@id='nextenterproductdata']