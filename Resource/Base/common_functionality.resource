*** Settings ***
Documentation       This suite will handle file/browser configuration
Library         OperatingSystem
Library         SeleniumLibrary


*** Keywords ***
launch Browser
        [Documentation]         This will launch firefox browser
        ...      and set impilict wait
        ...      Example
        ...      |Launch Browser|
        Append To Environment Variable    Path       ${EXECDIR}\\driver
        #Append To Environment Variable    Path       ${EXECDIR}{/}driver
        Open Browser     url=https://demo.openemr.io/openemr/interface/login/login.php?site=default     browser=ff
        Maximize Browser Window
        Set Selenium Implicit Wait    30s

End Browser
     Close Browser
