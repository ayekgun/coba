*** Settings ***
Library										SeleniumLibrary
Resource									../ebay/resource/resource.robot

*** Test Cases ***
EBAY Test UI
    Open Page
    Choose Category
    Filter By CPU
    Filter By MainBoard
    Apply All Filter
    Check Filtered Match
    Close