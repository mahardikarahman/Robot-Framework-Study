*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}        https://demoqa.com/text-box
${browser}    chrome 

#locator
${locFullName}         //input[@id="userName"]
${locEmail}             //input[@id="userEmail"]
${locCurAddress}         //*[@id="currentAddress"]
${locPerAddress}         //*[@id="permanentAddress"]
${locBtnSubmit}            xpath=//*[@id="submit"]

*** Keywords ***
Input form on demoqa
    Open Browser    ${url}    ${browser}
    Input Text    ${locFullName}    Mahardika Rahman Rizky
    Input Text    ${locEmail}    mahardikarahman@gmail.com
    Input Text    ${locCurAddress}    Sawit
    Input Text    ${locPerAddress}    Warungboto
    Sleep    2s

*** Test Cases ***
User input valid form
    Input form on demoqa