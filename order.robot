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
Book Flight
    [Setup]                                 Login With Valid Username
    Click Book Button                       
    Select From City                        fromCity=Toronto
    Select To City                          toCity=Paris
    Select Class                            class=Economy
    Select Start Date
    Select End Date
    Select Checkbox
    Click Book Button2
    Select Price
    Click Button Confirm & Validate
    


***Keywords***
Open Flight Application
    Open Application            ${REMOTE_URL}	
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}

Click Book Button
    Click Element                       id=com.example.myapplication:id/book
    Wait Until Page Contains Element    id=com.example.myapplication:id/spinnerFrom

Select From City
    [Arguments]                         ${fromCity}
    Click Element                       id=com.example.myapplication:id/spinnerFrom
    Wait Until Page Contains Element    xpath=//*[@text="${fromCity}"]  
    Click Element                       xpath=//*[@text="${fromCity}"] 

Select To City
    [Arguments]                         ${toCity}
    Click Element                       id=com.example.myapplication:id/spinnerTo
    Wait Until Page Contains Element    xpath=//*[@text="${toCity}"]  
    Click Element                       xpath=//*[@text="${toCity}"] 

Select Class
    [Arguments]                         ${class}
    Click Element                       id=com.example.myapplication:id/spinnerClass
    Wait Until Page Contains Element    xpath=//*[@text="${class}"]  
    Click Element                       xpath=//*[@text="${class}"] 

Select Start Date
    Wait Until Page Contains Element    id=com.example.myapplication:id/textStartDate
    Click Element                       id=com.example.myapplication:id/textStartDate
    Wait Until Page Contains Element    xpath=//android.view.View[@content-desc="02 August 2019"]
    Click Element                       xpath=//android.view.View[@content-desc="02 August 2019"]
    Click Element                       id=android:id/button1

Select End Date
    Wait Until Page Contains Element    id=com.example.myapplication:id/textEndDate
    Click Element                       id=com.example.myapplication:id/textEndDate
    Wait Until Page Contains Element    xpath=//android.view.View[@content-desc="05 August 2019"]
    Click Element                       xpath=//android.view.View[@content-desc="05 August 2019"]
    Click Element                       id=android:id/button1

Select Checkbox
    Click Element                       id=com.example.myapplication:id/radioButtonFlight
    Click Element                       id=com.example.myapplication:id/checkBoxDay

Click Book Button2
    Click Element                       id=com.example.myapplication:id/book_flight
    Wait Until Page Contains Element    id=com.example.myapplication:id/price8

Select Price
    Click Element                       id=com.example.myapplication:id/price8
    Wait Until Page Contains Element    id=com.example.myapplication:id/confirm_order

Click Button Confirm & Validate
    CLick Element                       id=com.example.myapplication:id/confirm_order
    Wait Until Page Contains Element    com.example.myapplication:id/checkedTextView

