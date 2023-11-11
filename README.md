# Metal-gear-Solid-2-and-3-launcher-skip
This lets you skip the launcher while still applying the language and controller options you desire, and you still get to launch it through steam as usual.


# installation
Copy the files you want to use to the main game folder.

# Option 1: Always use the same settings.
Run Launcher bypass setup for whichever game you're setting up and follow the prompts.
This will create a file in the same location called launcherbypass.bat for mgs or launcherbypassmgs2.bat for mgs2.
Now as long as the file created is in your main game folder, you just need to go to the games properties in steam and add the following to your launch options

For mgs 2 add the following
launcherbypassmgs2.bat %command%

For mgs 3 add the following
launcherbypass.bat %command%

Now when you start the game through steam it will skip straight to the game with what ever controller config you want. You can always rerun the setup file to change what options you use.



# Option 2: you want to select your options every time you start the game.
In this case just use LaunchAnyVersionmgs2.bat for mgs 2, or LaunchAnyVersionmgs3.bat for mgs 3.
You can have this boot when you start the game in steam by adding the following to your steam properties.

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
Here are all the options:

MGS 2 and 3:
Languages

English
French
Italian
German
Spanish
Japanese

Controllers:
keyboard
Nintendo
PS4
PS5
steamdeck
XBOX

for MGS 3 there is also the choice of version:

Europe
US
Japanese
