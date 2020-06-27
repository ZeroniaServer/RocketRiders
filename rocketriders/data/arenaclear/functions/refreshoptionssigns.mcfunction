##Refreshes signs for individual Game Options (warped/crimson)
#Pierce Prevention
execute as @s[tag=doPrevention,tag=!settingsLocked] run setblock -70 193 79 warped_wall_sign[facing=east]
execute as @s[tag=!doPrevention,tag=!settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]

#Hotbar Limit
execute as @s[tag=doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 warped_wall_sign[facing=east]
execute as @s[tag=!doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]

#Item Stacking
execute as @s[tag=doStacking,tag=!settingsLocked] run setblock -70 191 77 warped_wall_sign[facing=east]
execute as @s[tag=!doStacking,tag=!settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]

#Tie/Sudden Death
execute as @s[tag=doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 warped_wall_sign[facing=east]
execute as @s[tag=!doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]

#Fireball Portals
execute as @s[tag=doFireballPortals,tag=!settingsLocked] run setblock -70 193 78 warped_wall_sign[facing=east]
execute as @s[tag=!doFireballPortals,tag=!settingsLocked] run setblock -70 193 78 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 78 crimson_wall_sign[facing=east]

##WORLD SETTINGS
#Player Credits
execute as @s[tag=!noPlayerCredits] run setblock -69 191 73 warped_wall_sign[facing=east]
execute as @s[tag=noPlayerCredits] run setblock -69 191 73 crimson_wall_sign[facing=east]