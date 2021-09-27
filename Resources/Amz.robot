*** Settings ***
Library    SeleniumLibrary
Resource    PageObject/LandingPage.robot
Resource    PageObject/top-nav.robot
Resource    PageObject/search_selectpage.robot

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
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    wait until element is visible    //div[@class='ProductShowcase__actions__2J-2e'][1]/div[2]/button
    click button    //div[@class='ProductShowcase__actions__2J-2e'][1]/div[2]/button
    wait until page contains    Added to Cart
    Execute Javascript    window.scrollTo(top)
    sleep    7s
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

