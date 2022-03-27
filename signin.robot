***Settings***
Documentation           Sign in test cases
Library                 AppiumLibrary
Resource                PageObject/login.robot
Suite Setup              Open Flight Application
Suite Teardown           Close Application


***Variables***
${REMOTE_URL}                       http://localhost:4723/wd/hub
${automationName}                   uiautomator
${PLATFORM_NAME}                    Android
${PLATFORM_VERSION}                 8.1
${DEVICE_NAME}                      emulator-5554
${APP_PACKAGE}                      com.example.myapplication
${APP_ACTIVITY}                     com.example.myapplication.MainActivity


***Test Cases***
Login Valid 
    [Setup]             Login With Valid Username

User should not be able login with invalid username
    Click Login Button                      
    Wait Until Page Contains Element        id=com.example.myapplication:id/username
    Input Username                          username=support1@ngendigital.com
    Input Password                          password=abc124
    Click Signin Button
    Verify Login Failed 

**Keywords***
Open Flight Application
    Open Application            ${REMOTE_URL}	
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}