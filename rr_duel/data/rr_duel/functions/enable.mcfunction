tag @e[tag=Selection] remove switchGamemodes
execute as @e[tag=Selection] run function gamemodes:storesettings
tag @e[tag=Selection] add duelEnabled
tag @e[tag=Selection] add SurpriseEggOff
tag @e[tag=Selection] add tyingOff
tag @e[tag=Selection] add itemDelayOff
tag @e[tag=Selection] add settingsLocked

#Blank arena preset
scoreboard players set @s TopDeco 0
scoreboard players set @s MiddleDeco 0
scoreboard players set @s TopCorner 0
scoreboard players set @s BottomDeco 0
scoreboard players set @s PortalDeco 0