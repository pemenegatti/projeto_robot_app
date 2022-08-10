*** Settings ***
Library    hello.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=    Hello Robot    Pedro Menegatti
    Should Be Equal    ${resultado}    Olá, Pedro Menegatti.