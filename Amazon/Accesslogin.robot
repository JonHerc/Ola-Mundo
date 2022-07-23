*** Settings ***
Library  SeleniumLibrary

*** Variables***


${tel}      //input[@type="email"]
${cont}     //input[@id="continue"]
${senha}    //input[@type="password"]
${login}    //input[@id="signInSubmit"]
${checek}    //input[@type="checkbox"]

*** Keywords ***

Dado que o usuário preencha seu numero de celular
    Wait Until Element Is Visible      ${tel}   15
     input text    ${tel}     11949119521

Quando clicar em continuar 
    Wait Until Element Is Visible       ${cont}   15
    click element     ${cont} 

E digitar a senha
    Wait Until Element Is Visible      ${senha}    15
     input text      ${senha}       27519254   


E clicar em mantenha me conectado
    Wait Until Element Is Visible      ${checek}    15
    click element    ${checek} 


Então poderá clicar em login
    Wait Until Element Is Visible      ${login}   5
    click element     ${login}


***Test Cases***
Cenário 2: Realizar login
     Dado que o usuário preencha seu numero de celular
     Quando clicar em continuar 
     E digitar a senha
     E clicar em mantenha me conectado
     Então poderá clicar em login
