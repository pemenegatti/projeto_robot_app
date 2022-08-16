*** Settings ***
Resource    ../resources/base.robot

Suite Setup       Spawn Appium Server
Test Setup        Open Session
Test Teardown     Close Session
Suite Teardown    Close Appium Server

*** Test Cases ***
Deve selecionar a opção Paython
    Go To Radion Buttons
    ${ELEMENT}=    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Python')]
    Click Element                         ${ELEMENT}
    Wait Until Element Is Visible         ${ELEMENT}
    Element Attribute Should Match        ${ELEMENT}        checked    true