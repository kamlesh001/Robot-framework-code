*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
page scroll to the element
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
wait for element to be visible
    wait until element is visible    //div[@class='ProductShowcase__actions__2J-2e'][1]/div[2]/button
hit the add cart button
    click button    //div[@class='ProductShowcase__actions__2J-2e'][1]/div[2]/button
verify for added to cart text
    wait until page contains    Added to Cart
scroll to the top and wait
    Execute Javascript    window.scrollTo(top)
    sleep    7s