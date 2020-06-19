tag @e[tag=Selection] remove duelEnabled
tag @e[tag=Selection] remove settingsLocked
execute as @e[tag=Selection] run function gamemodes:restoresettings
tag @e[tag=Selection] remove tyingOff
tag @e[tag=Selection] remove itemDelayOff
tag @e[tag=Selection] remove SurpriseEggOff
tag @e[tag=Selection] add switchGamemodes