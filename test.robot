*** Settings ***
Documentation
Library           CalculatorLibrary.py
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://www.google.com

*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***
Calculator has been cleared
    Push button    C

User types "${expression}"
    Push buttons    ${expression}

User pushes equals
    Push button    =

Result is "${result}"
    Result should be    ${result}

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    headlessfirefox
    Title Should Be    Google