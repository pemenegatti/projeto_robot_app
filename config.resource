*** Settings ***
Library    AppiumLibrary
Library    Process
Library    ./libs/utils.py

*** Variables ***
${ANDROID_APP}                ${EXECDIR}${/}app${/}twp.apk
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${APPIUM_SERVER}              http://localhost:4723/wd/hub
${APPIUM_PORT}                4723

*** Keywords ***
Abrir Aplicativo
    Time Out
    Open Application    ${APPIUM_SERVER}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 platformName=${ANDROID_PLATFORM_NAME}
    ...                 app=${ANDROID_APP}

Dado ${keyword}
    Run keyword   ${keyword}

Quando ${keyword}
    Run keyword   ${keyword}

Então ${keyword}
    Run keyword   ${keyword}

E ${keyword}
    Run keyword   ${keyword}

Spawn Appium Server
  # Get Working Path
  Start Process  appium  -p  ${APPIUM_PORT}  shell=true
  # Start Process  appium  -p  ${APPIUM_PORT}  -bp  ${BOOTSTRAP_PORT}  stdout=${WORKING_PATH}/appium-log-${ALIAS}.txt  shell=true
  Sleep   5

Close Appium Server
  Run Keyword And Ignore Error  Close All Applications
  Terminate All Processes   kill=True
  Sleep   5

Time Out
    Set Appium Timeout    5