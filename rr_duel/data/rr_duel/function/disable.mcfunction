execute if entity @s[tag=duelLast] run data modify storage rocketriders:storage Tags append value "duelLast"
execute if entity @s[tag=duelEnabled] run function gamemodes:restoresettings
scoreboard players reset * gamemode_components
tag @s remove duelEnabled
tag @s remove customBossbar
tag @s remove customLeaveHandling
tag @s add switchGamemodes