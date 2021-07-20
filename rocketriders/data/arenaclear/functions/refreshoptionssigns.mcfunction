##Refreshes signs for individual Game Options (warped/crimson)
#Pierce Prevention
execute if entity @s[tag=doPrevention,tag=!preventionOff,tag=!settingsLocked] run setblock -70 193 79 warped_wall_sign[facing=east]
execute if entity @s[tag=!doPrevention,tag=!preventionOff,tag=!settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]
execute if entity @s[tag=preventionOff,tag=!settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]
execute if entity @s[tag=settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]

#Hotbar Limit
execute if entity @s[tag=doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 warped_wall_sign[facing=east]
execute if entity @s[tag=!doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]
execute if entity @s[tag=settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]

#Item Stacking
execute if entity @s[tag=doStacking,tag=!settingsLocked] run setblock -70 191 77 warped_wall_sign[facing=east]
execute if entity @s[tag=!doStacking,tag=!settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]
execute if entity @s[tag=settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]

#Tie/Sudden Death
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 warped_wall_sign[facing=east]
execute if entity @s[tag=!doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute if entity @s[tag=tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute if entity @s[tag=settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]

#Fireball Portals
execute if entity @s[tag=doFireballPortals,tag=!fbPortalsOff,tag=!settingsLocked] run setblock -70 193 78 warped_wall_sign[facing=east]
execute if entity @s[tag=!doFireballPortals,tag=!fbPortalsOff,tag=!settingsLocked] run setblock -70 193 78 crimson_wall_sign[facing=east]
execute if entity @s[tag=fbPortalsOff,tag=!settingsLocked] run setblock -70 193 78 crimson_wall_sign[facing=east]
execute if entity @s[tag=settingsLocked] run setblock -70 193 78 crimson_wall_sign[facing=east]

##WORLD SETTINGS
#Player Credits
execute if entity @s[tag=!noPlayerCredits] run setblock -69 191 73 warped_wall_sign[facing=east]
execute if entity @s[tag=noPlayerCredits] run setblock -69 191 73 crimson_wall_sign[facing=east]