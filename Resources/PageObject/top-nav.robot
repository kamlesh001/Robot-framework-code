*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
input search text
    input text    id=twotabsearchtextbox     watch
click submit
    click button    xpath=//*[@id="nav-search-submit-button"]