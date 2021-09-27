*** Settings ***
Documentation    This is some basic info about whole suite
Resource     ../Resources/Amz.robot
Resource    ../Resources/Common.robot
Suite Setup    Execute before suite
Test Setup    Begin test
#Test Teardown    Closing the browser
Suite Teardown    Execute after suite

*** Variables ***


*** Test Cases ***
User must sign in to check out
   [Documentation]    This is some basic info about the test

    [Tags]    Smoke
    Amz.Navigate to amazon
    Amz.search product
    Amz.Select the product
    Amz.Add the product to cart
    Amz.proceed to checkout
    Amz.Login and submit order


