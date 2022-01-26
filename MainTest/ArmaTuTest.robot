*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
Aregar carrito compra Xbox
    Open Browser    https://www.falabella.com/falabella-cl        chrome
    Wait Until Element Is Visible    class=dy-lb-close
    Click Element    class=dy-lb-close
    Input Text    id=testId-SearchBar-Input        Consola XBOX Series
    Click Button    class=SearchBar-module_searchBtnIcon__2L2s0
    Wait Until Element Is Visible    class=Zone-module_icon-danger__qCh8k
    Click Element    class=Zone-module_icon-danger__qCh8k
    Wait Until Element Is Visible    id=testId-pod-image-110608400
    Click Element    id=testId-pod-image-110608400
    Wait Until Element Is Visible    id=buttonForCustomers
    Click Element    id=buttonForCustomers
    Wait Until Element Is Visible    id=linkButton
    Click Element    xpath=//*[@id="__next"]/div/div/div/div/div/div/div[2]/div/div/div[2]/div/div/div[1]/div[3]/span
    Click Element    id=linkButton
    Click Button    xpath=//*[@id="__next"]/div/div/div[2]/div[1]/div/div[3]/div/div/div[1]/div[2]/div[2]/div[3]/div/div/button[2]
    
    Close Browser
    
