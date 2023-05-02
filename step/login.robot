*** Settings ***
Library                   SeleniumLibrary
Suite Setup               Open Browser    ${WebSauceDemo}    ${BROWSER}
Suite Teardown            Close Browser


*** Variables ***
${WebSauceDemo}            https://www.saucedemo.com/
${BROWSER}                 chrome


#locators
${txtUsername}            //input[@id="user-name"]
${txtPassword}            //input[@id="password"]
${btnLogin}                //input[@id="login-button"]


*** Keywords ***

Input valid Username
    Input Text  ${txtUsername}  standard_user

Input password
    Input Text   ${txtPassword}   secret_sauce

Input invalid Username
    Input Text  ${txtUsername}  standard_use


Click button login
    Click Element   ${btnLogin}
    Sleep    2s

Verify on Login page
    Page Should Contain    Sauce Labs Backpack

*** Test Cases ***
User Login with valid Username
    Input valid Username
    Input password
    Click button login
    Verify on Login page

