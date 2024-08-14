*** Settings ***
Resource  ../resources/keywords/keywords.robot
Resource  ../resources/keywords/kw_send_quote.robot
Resource  ../resources/variables/variables.robot

*** Test Cases ***
Send Quote
    Fill Email    teste@email.com
    Fill Phone    312456789
    Fill Username  Teste
    Fill Password    Pass123
    Confirm Password   Pass123
    Send E-mail
    Success Alert