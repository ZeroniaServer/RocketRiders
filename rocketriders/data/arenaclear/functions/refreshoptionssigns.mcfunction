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


####RESTORE DEFAULTS####
##Individual signs
execute if entity @s[tag=!settingsLocked,tag=!decosLocked] run data merge block -57 192 78 {Text2:"{\"text\":\"Restore Default\",\"color\":\"#888888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection] add RestoreDefault\"}}",Text3:"{\"text\":\"Base Details\",\"color\":\"#888888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data merge block -57 192 78 {Text2:"{\"text\":\"Restore Default\",\"color\":\"#888888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This action cannot be performed in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text3:"{\"text\":\"Base Details\",\"color\":\"#888888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
data merge block -69 193 74 {Text2:"{\"text\":\"Restore Default\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players operation @e[type=armor_stand,tag=Selection] SetGamemode = @e[type=armor_stand,tag=rr_normal] gamemodeID\"}}",Text3:"{\"text\":\"Gamemode\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1\"}}"}
execute if entity @s[tag=!settingsLocked] run data merge block -69 193 75 {Text2:"{\"text\":\"Disable All\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers\"}}",Text3:"{\"text\":\"Modifiers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign\"}}"}
execute if entity @s[tag=settingsLocked] run data merge block -69 193 75 {Text2:"{\"text\":\"Disable All\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This action cannot be performed in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text3:"{\"text\":\"Modifiers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if entity @s[tag=!settingsLocked] run data merge block -70 192 77 {Text2:"{\"text\":\"Restore Default\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection] add DefaultOptions\"}}",Text3:"{\"text\":\"Game Rules\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 192 77 {Text2:"{\"text\":\"Restore Default\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This action cannot be performed in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text3:"{\"text\":\"Game Rules\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if entity @s[tag=!settingsLocked] run data merge block -69 192 82 {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"Enable All\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:enableitems\"}}",Text3:"{\"text\":\"Items\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}
execute if entity @s[tag=settingsLocked] run data merge block -69 192 82 {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"Enable All\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This action cannot be performed in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text3:"{\"text\":\"Items\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
data merge block -69 193 73 {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"Restore Default\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection] add DefaultWorld\"}}",Text3:"{\"text\":\"World Settings\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}


####GAME RULES####
#Pierce Prevention
execute if entity @s[tag=doPrevention,tag=!preventionOff,tag=!settingsLocked] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doPrevention\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Pierce Prevention\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You can spawn missiles in portals to end the game.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=!doPrevention,tag=!preventionOff,tag=!settingsLocked] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doPrevention\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Pierce Prevention\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You cannot spawn missiles inside of portals.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=preventionOff,tag=!settingsLocked] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Pierce Prevention is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\"}",Text4:"{\"text\":\"\"}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}

#Hotbar Limit
execute if entity @s[tag=doHotbarLimit,tag=!settingsLocked] run data merge block -70 191 78 {Text1:"{\"text\":\"Hotbar Limit\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doHotbarLimit\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Hotbar Limit\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You can have more than eight items.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=!doHotbarLimit,tag=!settingsLocked] run data merge block -70 191 78 {Text1:"{\"text\":\"Hotbar Limit\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doHotbarLimit\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Hotbar Limit\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You can't have more than eight items.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 191 78 {Text1:"{\"text\":\"Hotbar Limit\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}

#Item Stacking
execute if entity @s[tag=doStacking,tag=!settingsLocked,tag=!stackingOn] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doStacking\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Item Stacking\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You can't have more than one of any item, besides arrows. (Exceptions may be made for certain gamemodes/modifiers.)\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=!doStacking,tag=!settingsLocked,tag=!stackingOn] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doStacking\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Item Stacking\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" You can have more than one of any item.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=settingsLocked,tag=!stackingOn] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}
execute if entity @s[tag=doStacking,tag=stackingOn] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"white\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Item Stacking is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}

#Item Delay
execute if entity @s[tag=!settingsLocked,tag=!Minute] run data merge block -70 191 79 {Text1:"{\"text\":\"Item Delay:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s[team=!Yellow,team=!Blue,team=!Spectator] add ItemDelayChange\"}}",Text2:"[{\"score\":{\"name\":\"@e[type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"MaxItemSec\"},\"color\":\"black\",\"bold\":true},{\"text\":\" seconds\",\"color\":\"black\",\"bold\":\"false\"}]",Text4:"{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if entity @s[tag=!settingsLocked,tag=Minute] run data merge block -70 191 79 {Text1:"{\"text\":\"Item Delay:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Item Delay is not adjustable with the Minute Mix Modifier.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"[{\"text\":\"60\",\"color\":\"black\",\"bold\":true},{\"text\":\" seconds\",\"color\":\"black\",\"bold\":\"false\"}]",Text4:"{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 191 79 {Text1:"{\"text\":\"Item Delay:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"[{\"score\":{\"name\":\"@e[type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"MaxItemSec\"},\"color\":\"black\",\"bold\":true},{\"text\":\" seconds\",\"color\":\"black\",\"bold\":\"false\"}]",Text4:"{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}

#Tie/Sudden Death
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!settingsLocked] run data merge block -70 193 77 {Text1:"{\"text\":\"Tie/Sudden Death\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doTying\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Tie/Sudden Death\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Only the first team to destroy the enemy portal can win the game.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=!doTying,tag=!tyingOff,tag=!settingsLocked] run data merge block -70 193 77 {Text1:"{\"text\":\"Tie/Sudden Death\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doTying\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Tie/Sudden Death\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Ties may occur if both portals are broken within 5 seconds of each other. This starts a Sudden Death period where the portals are restored and items are given twice as fast. Multiple ties may occur in one game, and the game only ends when one team's portal remains.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=tyingOff,tag=!settingsLocked] run data merge block -70 193 77 {Text1:"{\"text\":\"Tie/Sudden Death\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Tying/Sudden Death is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\"}",Text4:"{\"text\":\"\"}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 193 77 {Text1:"{\"text\":\"Tie/Sudden Death\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}

#Snipe Portals
execute if entity @s[tag=doFireballPortals,tag=!fbPortalsOff,tag=!settingsLocked] run data merge block -70 193 78 {Text1:"{\"text\":\"Snipe Portals\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doFireballPortals\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Snipe Portals\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Fireballs and Nova Rockets cannot be used to directly snipe enemy portals.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=!doFireballPortals,tag=!fbPortalsOff,tag=!settingsLocked] run data merge block -70 193 78 {Text1:"{\"text\":\"Snipe Portals\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doFireballPortals\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Snipe Portals\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Fireballs and Nova Rockets can be used to directly snipe enemy portals.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=fbPortalsOff,tag=!settingsLocked] run data merge block -70 193 78 {Text1:"{\"text\":\"Snipe Portals\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Snipe Portals is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\"}",Text4:"{\"text\":\"\"}"}
execute if entity @s[tag=settingsLocked] run data merge block -70 193 78 {Text1:"{\"text\":\"Snipe Portals\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Game Rules are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}

####WORLD SETTINGS####
#Player Credits
execute if entity @s[tag=!noPlayerCredits] run data merge block -69 191 73 {Text1:"{\"text\":\"Player Credits\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function lobby:credits/stop\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Player Credits\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Credits armor stands are not visible in the Lobby.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"(Causes lag)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}
execute if entity @s[tag=noPlayerCredits] run data merge block -69 191 73 {Text1:"{\"text\":\"Player Credits\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function lobby:credits/initialize\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Player Credits\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" Credits armor stands are visible in the Lobby. (This can be laggy.)\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"(Reduces lag)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"}

#Daytime
execute store result score @s daytime run time query daytime
execute unless score @s daytime matches 1 run data merge block -69 192 73 {Text1:"{\"text\":\"Daytime:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s[team=!Yellow,team=!Blue,team=!Spectator] add daytimeChange\"}}",Text2:"[{\"score\":{\"name\":\"@e[type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"daytime\"},\"color\":\"green\",\"bold\":true},{\"text\":\" ticks\",\"color\":\"dark_green\",\"bold\":\"false\"}]",Text4:"{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}
execute if score @s daytime matches 1 run data merge block -69 192 73 {Text1:"{\"text\":\"Daytime:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s[team=!Yellow,team=!Blue,team=!Spectator] add daytimeChange\"}}",Text2:"[{\"text\":\"1\",\"color\":\"dark_green\",\"bold\":true},{\"text\":\" tick\",\"color\":\"green\",\"bold\":\"false\"}]",Text4:"{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"}

tag @s add SignsRefreshed