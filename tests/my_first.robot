
## Let's add an Operating Systems library to our next example:
*** Settings ***
Library                             OperatingSystem

*** Test Cases ***

My First Robot Test
    Log To Console            Hello Robot World!

My Second Robot Test
    Create File                     new_file.txt               Hello World!


