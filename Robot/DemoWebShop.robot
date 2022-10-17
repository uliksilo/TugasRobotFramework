*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
As a guest, i want to rest saucedemo website
    Open Browser  https://demowebshop.tricentis.com/  chrome
    Click Button    class=ico-login
    Input Text    id=Email    standard_user
    Input Text    id=Password    secret_sauce
    Click Button    class=login-button
    Get Title
    Get Text    class=title
    Close Browser
