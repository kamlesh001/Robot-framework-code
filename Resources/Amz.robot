*** Settings ***
Library    SeleniumLibrary
Resource    PageObject/LandingPage.robot
Resource    PageObject/top-nav.robot
Resource    PageObject/search_selectpage.robot
Resource    PageObject/cartpage.robot

*** Variables ***

*** Keywords ***
Navigate to amazon
    open home page
    verify page load
search product
    input search text
    click submit
Select the product
    validate text
    choose the product
    wait for specific text
Add the product to cart
    page scroll to the element
    wait for element to be visible
    hit the add cart button
    verify for added to cart text
    scroll to the top and wait
proceed to checkout
    click link    //*[@id='nav-cart']
    wait until element is visible    //*[@name='proceedToRetailCheckout']
    click button    //*[@name='proceedToRetailCheckout']

Login and submit order
    input text    //input[@type="email"]     kamlesh001@gmail.com
    click button    //input[@id="continue"]
    input text    //input[@type="password"]     t23351385
    click button    //input[@id="signInSubmit"]
    sleep     3s

