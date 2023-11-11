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

if %ctrltype% equ KBD goto filecreation
if %ctrltype% equ NX goto filecreation
if %ctrltype% equ PS4 goto filecreation
if %ctrltype% equ PS5 goto filecreation
if %ctrltype% equ STMD goto filecreation
if %ctrltype% equ XBOX goto filecreation
if %ctrltype% equ back goto versionset
ECHO *
ECHO *
ECHO "Please enter a valid option"
goto ctrltype

:filecreation
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
ECHO @echo off > "launcherbypass.bat"
REM ECHO start launcher.exe >> "launcherbypass.bat"
REM ECHO timeout 5 >> "launcherbypass.bat"
ECHO start "" "METAL GEAR SOLID3.exe" -region %version% -lan %language% -launcherpath launcher.exe -ctrltype %ctrltype% >> "launcherbypass.bat
REM ECHO timeout 5 >> "launcherbypass.bat"
ECHO REM Remember to add launcherbypass.bat %command% to your launch properties in steam!" >> "launcherbypass.bat
REM ECHO taskkill /IM launcher.exe >> "launcherbypass.bat"
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "OK you're all done!"
EcHO "Rerunning this installer will overwrite the current launcherbypass.bat so feel free to reuse it"
ECHO "All you need to do now is add the following to your steam launch options"
ECHO launcherbypass.bat %command%
ECHO Alternatively you can just run launcherbypass.bat or LaunchAnyVersion.bat in your main game folder
ECHO *
ECHO *
ECHO "To exit either close the window or type exit"
set /p letmeleaveplease=:
if %letmeleaveplease% equ exit goto exit
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "No no you need to type "EXIT""
set /p letmeleaveplease=:
if %letmeleaveplease% equ exit goto exit
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO *
ECHO "oh fine press any key to exit"
pause

:exit


REM ECHO start launcher.exe timeout 5 start "" "METAL GEAR SOLID3.exe" -region eu -lan en -selfregion EU -launcherpath launcher.exe -ctrltype NX > "launcherbypass.bat"


REm ECHO "Now select your language, it has to be a language compatible with the version you just selected"
REm ECHO "The US version 

REm fr
REm it
REm gr
REm sp
REm jp



REm start launcher.exe

REm timeout 5

REm start "" "METAL GEAR SOLID3.exe" -region eu -lan en -selfregion EU -launcherpath launcher.exe -ctrltype NX

REm taskkill /IM launcher.exe