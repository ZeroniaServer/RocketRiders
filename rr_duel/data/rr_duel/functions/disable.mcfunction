execute as @e[tag=Selection,type=armor_stand,tag=duelEnabled] run function gamemodes:restoresettings
tag @e[tag=Selection,type=armor_stand] remove duelEnabled
tag @e[tag=Selection,type=armor_stand] remove settingsLocked
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshcustomizer
tag @e[tag=Selection,type=armor_stand] remove tyingOff
tag @e[tag=Selection,type=armor_stand] remove itemDelayOff
tag @e[tag=Selection,type=armor_stand] remove SurpriseEggOff
tag @e[tag=Selection,type=armor_stand] remove customBossbar
tag @e[tag=Selection,type=armor_stand] remove customSaberMsg
tag @e[tag=Selection,type=armor_stand] remove customLeaveHandling
tag @e[tag=Selection,type=armor_stand] add switchGamemodes