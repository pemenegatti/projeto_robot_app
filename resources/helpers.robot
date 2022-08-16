*** Settings ***
Documentation        Aqui teremos as KWs helpers
Library              AppiumLibrary

*** Variables ***
${START}           COMEÇAR
${HAMBURGER}       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}        id=io.qaninja.android.twp:id/navView
${BOTOES_RADIO}    xpath=//android.widget.TextView[contains(@text, 'BOTÕES DE RADIO')]

*** Keywords ***
Get Started
    Wait Until Page Contains         ${START}
    Click Text                       ${START}

Open Nav
    Wait Until Element Is Visible    ${HAMBURGER}
    Click Element                    ${HAMBURGER}
    Wait Until Element Is Visible    ${NAV_VIEW}

Go To Login Form
    Open Nav
    Click Text                  FORMS
    Wait Until Page Contains    FORMS
    Click Text                  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Go To Radion Buttons
    Open Nav
    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS
    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida