*** Settings ***
Library   SeleniumLibrary


*** Keywords ***
launch url
    open browser    about:blank    gc
open home page
    go to    http://www.amazon.in
    maximize browser window
verify page load
    wait until page contains    Today's Deals