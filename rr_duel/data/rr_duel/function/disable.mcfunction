scoreboard players reset * gamemode_components

execute if entity @s[tag=duelLast] run data modify storage rocketriders:storage Tags append value "duelLast"
execute if entity @s[tag=duelEnabled] run function gamemodes:restoresettings
tag @s remove duelEnabled
tag @s remove tyingOff
tag @s remove customBossbar
tag @s remove customLeaveHandling
tag @s remove featheredOff
tag @s remove WindDownForce
tag @s add switchGamemodes