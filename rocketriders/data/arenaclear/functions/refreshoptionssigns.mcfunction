#missile pierce prevention
execute as @s[tag=doPrevention,tag=!settingsLocked] run setblock -70 193 79 warped_wall_sign[facing=east]
execute as @s[tag=!doPrevention,tag=!settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]

#hotbar limit
execute as @s[tag=doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 warped_wall_sign[facing=east]
execute as @s[tag=!doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]

#item stacking
execute as @s[tag=doStacking,tag=!settingsLocked] run setblock -70 191 77 warped_wall_sign[facing=east]
execute as @s[tag=!doStacking,tag=!settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]

#tie/sudden death
execute as @s[tag=doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 warped_wall_sign[facing=east]
execute as @s[tag=!doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]