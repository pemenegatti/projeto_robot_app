*** Settings ***
Resource    ../resources/base.robot

Suite Setup      Spawn Appium Server
# Executa a KW antes de cada testecase
Test Setup       Open Session
# Executa a KW depois de cada testecase
Test Teardown    Close Session
Suite Teardown   Close Appium Server

*** Variables ***
# Tipos de variaveis 
# ${NOME}    Pedro Menegatti    Simples
# @{CARROS}  Civic    Lancer    Chevette    Brasilia    Arrays
# &{CARRO}   nome=Lancer    modelo=Evolution    ano=2020     Lista 

${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs 
    Open Nav   
    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}     
    Element Text Should Be           ${TOOLBAR_TITLE}     DIALOGS

Deve acessar a tela de formularios    
    Open Nav   
    Click Text                       FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}     
    Element Text Should Be           ${TOOLBAR_TITLE}     FORMS

Deve acessar a tela de vingadores
    Open Nav    
    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}     
    Element Text Should Be           ${TOOLBAR_TITLE}     AVENGERS

