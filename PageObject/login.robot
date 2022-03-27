***Settings***
Documentation           Sign in test cases
Library                 AppiumLibrary



***Keywords***
Login With Valid Username
    Click Login Button                      
    Wait Until Page Contains Element        id=com.example.myapplication:id/username
    Input Username                          username=support@ngendigital.com
    Input Password                          password=abc123
    Click Signin Button
    Verify Login Passed

Click Login Button
    Click Element                   id=com.example.myapplication:id/login   

Input Username
    [Arguments]                     ${username}
    Input Text                      id=com.example.myapplication:id/username        ${username}

Input Password
    [Arguments]                     ${password}
    Input Text                      id=com.example.myapplication:id/password        ${password}

Click Signin Button
    Click Element                   id=com.example.myapplication:id/signIn

Verify Login Passed
    Wait Until Page Contains Element    id=com.example.myapplication:id/textView

Verify Login Failed
    Page Should Contain Text        Invalid username/password