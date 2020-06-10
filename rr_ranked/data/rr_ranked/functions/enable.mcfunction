tag @e[tag=Selection] remove switchGamemodes
execute as @e[tag=Selection] run function gamemodes:storesettings
tag @e[tag=Selection] add rankedEnabled
tag @e[tag=Selection] add SurpriseEggOff
tag @e[tag=Selection] add tyingOff
tag @e[tag=Selection] add settingsLocked