*** Settings ***
Documentation
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://google.com/

*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    headlessfirefox
    sleep    1s
    Title Should Be    Google
    Get text    //*[contains(text(), 'Gmail1')]