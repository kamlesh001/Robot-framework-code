*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
validate text
    wait until page contains    1-48 of over 100,000 results for
choose the product
    click image    //img[contains(@src,'https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/9a76a469-51bd-4fc8-859e-341a6d33af74._CR18,163,482,189_AC_SX130_SY60_QL70_.png')]
wait for specific text
    wait until page contains    1.7 inch Bluetooth Calling Smartwatch with Spo2