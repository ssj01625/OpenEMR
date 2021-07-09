*** Settings ***
Documentation    This suite will handle all the validations related to
...     invalid credentials - JIRA ID Number OMR-201

Resource        ../Resource/Base/common_functionality.resource

Test Setup      launch Browser
Test Teardown    End Browser


*** Test Cases ***
Verify Valid Credential Test
        launch Browser
        Input Text    id=authUser    admin12
        Input Password    id=clearPass    pass
        Select From List By Label    name=languageChoice    English (Indian)
        Click Element   xpath=//button[@type='submit']
        Element Text Should Be    xpath=//div[contains(text(),'Invalid')]    Invalid username or password
        End Browser