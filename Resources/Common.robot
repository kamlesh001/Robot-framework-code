*** Settings ***
Resource    PageObject/LandingPage.robot
Library   SeleniumLibrary

*** Keywords ***
Begin test
    launch url
Closing the browser
    close browser
Execute before suite
    log    this will execute before suite
Execute after suite
    log     thia will execute after suite