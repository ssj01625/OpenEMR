*** Settings ***
Documentation    This suite will handle all the validations related to
...     valid credentials - JIRA ID Number OMR-200
Resource         ../Resource/Base/common_functionality.resource

Test Setup      launch Browser
Test Teardown    End Browser
Library    Easter

*** Test Cases ***
Verify Valid Credential Test
        Input Text    id=authUser    admin
        Input Password    id=clearPass    pass
        Select From List By Label    name=languageChoice    English (Indian)
        Click Element   xpath=//button[@type='submit']
        Wait Until Page Contains    Flow Board      50s
        Title Should Be    OpenEMR
        End Browser

TC2
     [Setup]
     Log To Console    Sonali
     [Teardown]         Log To Console    end

TC3
     [Setup]        Log To Console    start
     Log    report
     [Teardown]
