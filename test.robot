*** Settings ***
Documentation
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://win-1ics5jffm16.dev.local:9080/navigator/

*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    headlessfirefox
    sleep    5s
    Title Should Be    IBM Content Navigator