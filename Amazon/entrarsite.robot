*** Settings ***
Library  SeleniumLibrary

*** Variables***


${URL}       https://www.amazon.com.br/
${Login}     //span[@class="nav-icon nav-arrow"]
${conti}     //span[@class="a-button a-button-span12 a-button-primary"]

*** Keywords ***

Dado que o usuário acesse o site da Amazon Prime
    openbrowser    ${URL}    Chrome
    Maximize Browser Window

Quando selecionar a opção de login
    Wait Until Element Is Visible   ${Login}   15
    click element         ${Login}  

Então será encaminhado a tela de login
    Element should Be Visible         ${conti} 

    

***Test Cases***
Cenário 1: Teste acessar site da da Amazon prime 
     Dado que o usuário acesse o site da Amazon Prime
     Quando selecionar a opção de login
     Então será encaminhado a tela de login
   