# Asgard Admin by Asgard Scripts
- discord : https://discord.gg/wDCeJqp6ea
- tebex : https://asgardrp.tebex.io/

# Important Notes
- This admin menu is brand new and still being worked on, any bugs will be fixed quickly and new features will be rolled out
- Join our discord for any support you need and to keep an eye on updates

# Previews

[Streamable](https://streamable.com/9wdr9u)

[Streamable 2](https://streamable.com/zgnz0t)

[Image](https://i.imgur.com/tatBcyV.jpeg)

# Dependancies
- rsg-core

# Installation
- For rsg-core, this admin menu is a drag and drop into your resources, use the /menu command to access the menu
- Import the sql file in the /sql/ folder to your database. This will allow you to change who can access the menu and what options, your log system stored in the database and all player bans stored in the database.
- To give yourself admin > navigate to your database, click SQL at the top and copy and paste the following into the empty box then press Go

```INSERT INTO `asgard_admin` (`id`, `cid`, `favorite`) VALUES
	(1, 'CITIZENID', '[{"name":"changemodel"},{"name":"ban"},{"name":"bring"},{"name":"csay"},{"name":"fixvehicle"},{"name":"givecash"},{"name":"godmode"},{"name":"noclip"},{"name":"clothes"}]');```

- Change CITIZENID to your citizen ID
- To make extra admins, follow the same process, change the 1 at the start of the SQL to 2, 3, 4 etc for whichever number you are adding. A unique ID is required each time
- You can remove certain options if you want an admin with restricted access

# Features
 - Clean minimalist UI, similar to nopixel style
 - Fullscreen option for viewing player lists, logs, bans etc
 - Switch menu from left to right, right to left

 # Admin Features

 - Attach to a player (tested and working, you can contact me if you have issues and we can try to fix it)
 - Ban - you choose from a drop down list of all players, the list includes ID, username and steam ID, choose reason and ban length. Ban will automatically lift after date reached
 - Bring - you choose from a drop down list of all players
 - Change Model - untested, will be worked in in the future if currently not working
 - Open Clothes Menu - pretty much what the name suggests
 - cSay/tSay - pretty much say whatever you enter for either option in global chat. tSay is announcement.
 - Give Cash - choose from a drop down list of players, gives cash to that player in the amount specified
 - God - enables god mode, you cannot be killed
 - Kick - kicks player with specified reason, choose from drop down list of players
 - NoClip - enter no clip mode to move through objects, structures and map
 - Player Blips - displays all players on your map with blips, currently untested - redm confirmed to be using different natives, future fix
 - Revive - revives the player you choose from the drop down list
 - Spawn Horse - spawns horse of model you choose, tested and kind of broken, kind of works sometimes. Future fix
 - Spawn Item - choose an item from the drop down list or search for the item, uses item labels instead of names. Much cleaner
 - View Stable - access stable of your owned horses, working with rsg-horses. Enable active horse then call it
 - Remove stress - removes stress, this may not work for you as it is HUD asset dependant, will work on a config fix to allow most common huds for this in the future
 - Super Jump - enables supe jump for you, high jumping with no fall damage
 - Teleport Coords/Marker - teleport to the coords you enter or teleport to a marker you set on the map
 - Time Change - change the time of day and type of weather, some options working, some not, will fix

 # Coming Soon
 - Dev Mode - dev mode will display all object and ped models and hashes with coords and heading
 - Spawn Horse - fix spawn horse and allow hrose variations
 - Spawn Wagon
 - Configurable HUD for common huds used to allow some new features such as remove stress, fill hunger, fill thirst etc
