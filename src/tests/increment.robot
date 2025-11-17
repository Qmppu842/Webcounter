*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Set value to zero
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Set value to zero
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa

Counter is zero after any number presses and reseting
    Go To  ${HOME_URL}
    Set value to zero
    Click Button  Paina
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

Set value to ten
    Go To  ${HOME_URL}
    Input Text  arvo  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa