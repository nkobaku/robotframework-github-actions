
*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.google.com

*** Test Cases ***
Open Google Homepage and Search Countries Headlessly
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--headless")
    Maximize Browser Window
    Input Text      name=q    Afghanistan
    Press Keys      name=q   ENTER
    Sleep           2s  # Wait for the search results to load
    Capture Page Screenshot
    [Teardown]      Close Browser

*** Keywords ***
Set Browser Implicit Wait
    [Arguments]    ${timeout}
    Set Selenium Implicit Wait    ${timeout}
