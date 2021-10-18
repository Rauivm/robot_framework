*** Settings ***
Resource    settings.robot

Resource    EnterVehicleData.robot
Resource    EnterInsurantData.robot
Resource    EnterProductData.robot
Resource    SelectPriceOption.robot
Resource    SendQuote.robot

*** Tasks ***

Enter Vehicle Data
	Fill Vehicle Data

*** Tasks ***
Enter Insurant Data
	Fill Insurant Data

*** Tasks ***
Enter Prodcut Data
	Fill Product Data

*** Tasks ***
Choice Price Option
	Select Price Option

*** Tasks ***
Send Quote
	Fill Send Quote
	[Teardown]    Close Browser