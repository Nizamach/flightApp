***Settings***
Documentation           Sign in test cases
Library                 AppiumLibrary
Resource                PageObject/login.robot
Suite Setup             Open Flight Application
Suite Teardown          Close Application


***Variables***
${REMOTE_URL}                       http://localhost:4723/wd/hub
${PLATFORM_NAME}                    Android
${PLATFORM_VERSION}                 8.1
${DEVICE_NAME}                      emulator-5554
${APP_PACKAGE}                      com.example.myapplication
${APP_ACTIVITY}                     com.example.myapplication.MainActivity

***Test Cases***
Search Flight
    [Setup]                         Login With Valid Username 
    Click Search Button
    Input flight Code               flightCode=DA935
    Click Button Search
    Page Contains

***Keywords***
Open Flight Application
    Open Application            ${REMOTE_URL}	
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}

Click Search Button
    Click Element                       id=com.example.myapplication:id/search_flight
    Wait Until Page Contains Element    com.example.myapplication:id/flight_number

Input flight Code
    [Arguments]                         ${flightCode}
    Input Text                          com.example.myapplication:id/flight_number      ${flightCode}
    Wait Until Page Contains Element    id=com.example.myapplication:id/searchFlight

Click Button Search                
    Click Element                       id=com.example.myapplication:id/searchFlight

Page Contains
    Page Should Contain Element         class=android.widget.TextView                               
