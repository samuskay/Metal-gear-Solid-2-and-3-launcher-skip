# Metal-gear-Solid-2-and-3-launcher-skip
Lets you skip the launcher while still applying the language and controller options you desire


# installation
Copy the files you want to use to the main game folder.

Option 1: Always use the same settings.
Run Launcher bypass setup for whichever game you're setting up and follow the prompts.
This will create a file in the same location called launcherbypass.bat for mgs or launcherbypassmgs2.bat for mgs2.
Now as long as the file created is in your main game folder, you just need to go to the games properties in steam and add the following to your launch options

For mgs 2 add the following
launcherbypassmgs2.bat %command%

For mgs 3 add the following
launcherbypass.bat %command%

Now when you start the game through steam it will skip straight to the game with what ever controller config you want. You can always rerun the setup file to change what options you use.



Option 2: you want to select your options every time you start the game.
In this case just use LaunchAnyVersionmgs2.bat for mgs 2, or LaunchAnyVersionmgs3.bat for mgs 3.
You can have this boot when you start the game in steam by adding the following to your steam properties.

For mgs 2 add
LaunchAnyVersionmgs2.bat %command%

For mgs 3 add
LaunchAnyVersionmgs3.bat %command%





you can also just run either file from the games folder, make a desktop shortcut if you'd like.




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
