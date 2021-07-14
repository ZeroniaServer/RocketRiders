execute as @e[type=armor_stand,tag=Selection,tag=duelEnabled] run function gamemodes:restoresettings
tag @e[type=armor_stand,tag=Selection] remove duelEnabled
tag @e[type=armor_stand,tag=Selection] remove settingsLocked
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer
tag @e[type=armor_stand,tag=Selection] remove tyingOff
tag @e[type=armor_stand,tag=Selection] remove itemDelayOff
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggOff
tag @e[type=armor_stand,tag=Selection] remove customBossbar
tag @e[type=armor_stand,tag=Selection] remove customSaberMsg
tag @e[type=armor_stand,tag=Selection] remove customLeaveHandling
tag @e[type=armor_stand,tag=Selection] remove featheredOff
tag @e[type=armor_stand,tag=Selection] add switchGamemodes