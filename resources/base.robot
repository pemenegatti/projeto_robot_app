*** Settings ***
Library    AppiumLibrary
Library    Process
Resource   helpers.robot

*** Variables ***
${APPIUM_PORT}  4723

*** Keywords ***
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 app=${EXECDIR}${/}app${/}twp.apk
    Get Started

Close Session
    Close Application

Spawn Appium Server
  # Get Working Path
  Start Process  appium  -p  '4723'  shell=true
  # Start Process  appium  -p  ${APPIUM_PORT}  -bp  ${BOOTSTRAP_PORT}  stdout=${WORKING_PATH}/appium-log-${ALIAS}.txt  shell=true
  Sleep   5

Close Appium Server
  Run Keyword And Ignore Error  Close All Applications
  Terminate All Processes   kill=True
  Sleep   5