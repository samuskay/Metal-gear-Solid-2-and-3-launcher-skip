@echo off
ECHO 
ECHO *************************************************************************************
ECHO "First lets set the game version we want to play, please enter your selection bellow"
ECHO "Please use lowercase letters as written in the examples for this prompt"
ECHO "Pressing enter without entering anything or using spaces will make the script crash so just rerun if you do that"
:versionset
ECHO *
ECHO *
ECHO *
ECHO *
ECHO for Europe type eu
ECHO for the US type us
ECHO for Japanese type jp
ECHO *
ECHO *
set /p version=: 

if %version% equ eu goto eu
if %version% equ us goto us
if %version% equ jp goto jp

:error
echo Please enter a valid option
goto versionset

:eu
ECHO *************************************************************************************
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "The EU version has the following language options"
ECHO "Please use lowercase letters as written in the examples for this prompt"
ECHO ****
ECHO "For English enter en"
ECHO "For French enter fr"
ECHO "For Italian enter it"
ECHO "For German enter gr"
ECHO "For Spanish enter sp"
ECHO ****
ECHO "To start over from version selection enter back"
ECHO ****
set /p language=:
if %language% equ en goto ctrltype
if %language% equ fr goto ctrltype
if %language% equ it goto ctrltype
if %language% equ gr goto ctrltype
if %language% equ sp goto ctrltype
if %language% equ back goto versionset
ECHO *
ECHO *
ECHO "Please enter a valid option"
goto eu
:us
ECHO *************************************************************************************
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "The US version has the following language options"
ECHO "Please use lowercase letters as written in the examples for this prompt"
ECHO ****
ECHO "For English enter en"
ECHO "For French enter fr"
ECHO "For Spanish enter sp"
ECHO ****
ECHO "To start over from version selection enter back"
ECHO ****
set /p language=:
if %language% equ en goto ctrltype
if %language% equ fr goto ctrltype
if %language% equ sp goto ctrltype
if %language% equ back goto versionset
ECHO *
ECHO *
ECHO "Please enter a valid option"
goto us
:jp
ECHO *************************************************************************************
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "The Japanese version has the following language options"
ECHO "Please use lowercase letters as written in the examples for this prompt"
ECHO ****
ECHO "For Japanese enter jp"
ECHO ****
ECHO "To start over from version selection enter back"
ECHO ****
set /p language=:
if %language% equ jp goto ctrltype
if %language% equ back goto versionset
ECHO *
ECHO *
ECHO "Please enter a valid option"
goto jp

:ctrltype
ECHO *************************************************************************************
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "Now select the controller icons you want to see in game"
ECHO "PLEASE USE CAPITAL LETTERS AS WRITTEN IN THE EXAMPLES FOR THIS PROMPT"
ECHO ****
ECHO "For keyboard type KBD"
ECHO "For Nintendo type NX"
ECHO "For PS4 type PS4"
ECHO "For PS5 type PS5"
ECHO "(not sure if this one does anything) For (What I assume is) steamdeck type STMD"
ECHO "For XBOX type XBOX"
ECHO ****
ECHO "To start over from version selection enter back"
ECHO ****
set /p ctrltype=:

if %ctrltype% equ KBD goto gamestart
if %ctrltype% equ NX goto gamestart
if %ctrltype% equ PS4 goto gamestart
if %ctrltype% equ PS5 goto gamestart
if %ctrltype% equ STMD goto gamestart
if %ctrltype% equ XBOX goto gamestart
if %ctrltype% equ back goto versionset
ECHO *
ECHO *
ECHO "Please enter a valid option"
goto ctrltype

:gamestart
ECHO *************************************************************************************
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO Creating file
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
start "" "METAL GEAR SOLID3.exe" -region %version% -lan %language% -launcherpath launcher.exe -ctrltype %ctrltype%