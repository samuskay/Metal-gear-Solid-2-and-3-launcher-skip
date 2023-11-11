# Metal-gear-Solid-2-and-3-launcher-skip
This lets you skip the launcher while still applying the language and controller options you desire, and you still get to launch it through steam as usual.
The launcher usually passes through these launch options when you start the game proper so you just skip that step.


# installation

* Step One: Download Metal Gear Solid 2 and 3 Launcher Skip[github.com] and extract the game specific files to the main game folder.

* Step Two: Copy the "launcher bypass setup mgs3.bat" (or mgs2 varient for mgs2) and Paste it inside the MGS3 root directory "\Steam\steamapps\common\MGS3" or "\Steam\steamapps\common\MGS2" for mgs2.

* Step Three: Double click on the launcher bypass setup script for your game and follow the on screen instructions which will allow you to choose your Region, Language and Button Layout. Once you completed the setup a "launcherbypass.bat" file will automatically be created inside MGS3 root directory.

* Step Four: Finally add the bellow command to your mgs 2 or 3 Launch Options. Now you should be able to launch directly into the game in Fullscreen. And if you're using MGSHDFix v9 [github.com] you can also skip the Konami Logo and Splash screens for a seamless transition into MGS3's main menu.
* For mgs 2: launcherbypassmgs2.bat %command%
* For mgs 3: launcherbypass.bat %command%



# Alternate version: Select options when you start the game
* In this case just use LaunchAnyVersionmgs2.bat for mgs 2, or LaunchAnyVersionmgs3.bat for mgs 3.
* This could be good for experimenting with different versions quickly.
* You can have this boot when you start the game in steam by adding the following to your steam properties.

For mgs 2 add
LaunchAnyVersionmgs2.bat %command%

For mgs 3 add
LaunchAnyVersionmgs3.bat %command%





You can also just run either file from the games folder, make a desktop shortcut if you'd like.

# But I want access to the launcher still
You still will because this only skips the launcher startup before you play the game, you can still select "back to menu" in game and it'll reload the launcher.

when selecting "back to menu" it calls the launcher with the arguments
-jump gamestart

# Do I even need this?
Well if you'd like to achieve this through other means, you can achieve a similar effect by adding the following to your launch options.

For MGS 3
"METAL GEAR SOLID3" -region eu -lan en -selfregion EU -ctrltype NX -launcherpath %command%

For MGS 2
"METAL GEAR SOLID2" -lan en -region eu -ctrltype NX -launcherpath %command%

The issue is that these methods will open the game in a window that needs to be alt tabbed in and out of to make it fullscreen.
If you would like to just add them as steam launch options or make use of this information in any other way then you should be able to work out the options from reading the scripts.

MGS 3 has a region setting which dictates what language settings you can use.

for mgs 2 you need the -lan -launcherpass and -ctrltype variables

for mgs 3 you need the above plus the -region variable to specify whether its the eu, us or jp version of the game that loads, this isn't needed in mgs 3 as its dictated by the language menu.




# available options
Here are all the options, the always what the command is followed by the command itself.
So for example English is the language but you would use en for the variable.
Keyboard is the controller type but you would use KBD for the variable


# Languages (use lowercase)


English         en

French          fr

Italian         it

German          gr

Spanish         sp

Japanese        jp


# Controllers: (use uppercase)


keyboard        KBD

Nintendo        NX

PS4             PS4

PS5             PS5

steamdeck       STMD

XBOX            XBOX



# for MGS 3 there is also the choice of version: (use lowercase)



Europe          eu

US              us

Japanese        jp



# Thanks
Thanks to https://steamcommunity.com/id/OutlawXGP for writing better instructions then me which I've used to rewrite some of this readme.
