*** Settings ***
Library										SeleniumLibrary
Variables									variable.py

*** Keywords ***
Open Page
    Open Browser							${url}		${browser}
    Set Selenium Speed						0
    Maximize Browser Window
    Set Selenium Timeout					5

Choose Category
    Click Element							${categor}
    Click Element							${computerTablet}
    Wait Until Element Is Visible			${componentPart}
    Click Element							${componentPart}
    Click Element							${moboCpu}
    Execute Javascript						scrollTo(0,300)
    Click Element							${allFilter}
    Click Element							${allFilter}
    Sleep									2

Filter By CPU
    Wait Until Element Is Visible			${filtByCpu}
    Click Element							${filtByCpu}
    Wait Until Element Is Visible			${cbxProc}
    Click Element							${cbxProc}
    Sleep									2

Filter By MainBoard
    Wait Until Element Is Visible			${filtByMobo}
    Click Element							${filtByMobo}
    Wait Until Element Is Visible			${cbxMobo}
    Click Element							${cbxMobo}
    Sleep									2

Apply All Filter
    Click Element							${appl}

Check Filtered Match
    Wait Until Element Is Visible			${checkFilt}        5
    Element Should Contain					${checkFilt}        2 filters applied

Close
    Sleep									7
    Close Browser