# test.robot

*** Settings ***
# Boilerplate
Suite Setup       Setup
Suite Teardown    Teardown
Test Setup        Reset Emulation
Resource          ${RENODEKEYWORDS}

*** Variables ***

*** Keywords ***
Start Test
    # load and run script
    Execute Command             include @scripts/single-node/stm32f103.resc
    # create tester on usart1
    Create Terminal Tester      sysbus.usart1
    # begin the emulation
    Start Emulation

*** Test Cases ***

UartTest
    [Documentation]             Prints help menu of the command prompt
    [Tags]                      non_critical

    Start Test
    Write Char On Uart          a
    Wait For Line On Uart       666        timeout=2
