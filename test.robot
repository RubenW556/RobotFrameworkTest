*** Settings ***
Documentation
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://google.com/

*** Test Cases ***
Valid Login
    Complete case flow

*** Keywords ***
#Open Browser To Login Page
#    Open Browser    ${LOGIN URL}    headlessfirefox
#    sleep    1s
#    Title Should Be    Google
#    Get text    //*[contains(text(), 'Gmail1')]
#

Complete case flow
    Open Browser    https://baw21.novadoc.ecm:9443/navigator/login.jsp      firefox     options=add_argument("--ignore-certificate-errors")
    Input Text    //input[@name="j_username"]    p8admin
    Input Text    //input[@name="j_password"]    Password1
    Click Element    //input[@name="login"]
    Wait until element is visible    //span[@id="dijit_form_DropDownButton_0"]      20
    Sleep   1
    Click Element    //span[@id="dijit_form_DropDownButton_0"]
    Click Element    //*[contains(text(), 'Trainee')]
    Click Element    //*[contains(text(), 'Add Case')]
    Click Element    //*[contains(text(), 'Request Training')]
    Wait Until Element Is Visible    //input[@id="pvr_widget_editors_TextBoxEditor_0"]
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_0"]    hi
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_1"]    hi
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_2"]    hi
    Click Element    //*[normalize-space()='Add']
    Sleep   1
    Click Element    //span[@class="icmRolePicker"]
    Click Element    //*[contains(text(), 'Trainer')]
    Click Element    //span[@name="icm_widget_SelectorTabContainer_0_tablist_b3a661f0-fb73-491b-8c50-d7e9439b6809"]
    Click Element    //*[contains(text(), 'New Approval')]
    Click Element    //*[contains(text(), 'Approve')]
    Click Element    "//*[contains(text(), 'Plan Training')]"
    Click Element    "//*[contains(text(), 'Complete')]"