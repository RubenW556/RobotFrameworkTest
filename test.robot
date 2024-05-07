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
    Wait Until Element Is Visible   //input[@name="login"]
    Click Element    //input[@name="login"]
    Click Element    //span[@id="dijit_form_DropDownButton_0"]
    Click Element    //span[@id="dijit__TreeNode_5_label"]
    Click Element    //div[@class="icmQuickSearchContent"]
    Click Element    //span[@id="dijit_form_DropDownButton_2_label"]
    Click Element    //td[@id="dijit_MenuItem_22_text"]
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_0"]    hi
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_1"]    hi
    Input Text    //input[@id="pvr_widget_editors_TextBoxEditor_2"]    hi
    Click Element    xpath=(//span[@class="dijitReset dijitInline dijitButtonNode"])[15]
    Click Element    //span[@class="icmRolePicker icmEllipsis"]
    Click Element    //span[@id="dijit__TreeNode_13_label"]
    Click Element    //span[@name="icm_widget_SelectorTabContainer_0_tablist_b3a661f0-fb73-491b-8c50-d7e9439b6809"]
    Click Element    xpath=(//span)[208]
    Click Element    //span[@id="dijit_form_Button_24_label"]
    Click Element    xpath=(//span)[212]
    Click Element    //span[@id="dijit_form_Button_36_label"]