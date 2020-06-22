tag @e[tag=Selection] remove switchGamemodes

execute as @e[tag=Selection] run function gamemodes:storesettings
tag @e[tag=Selection] add duelEnabled
tag @e[tag=Selection] add SurpriseEggOff
tag @e[tag=Selection] add tyingOff
tag @e[tag=Selection] add itemDelayOff
tag @e[tag=Selection] add settingsLocked

#Blank arena preset
scoreboard players set @e[tag=Selection] TopDeco 0
scoreboard players set @e[tag=Selection] MiddleDeco 0
scoreboard players set @e[tag=Selection] TopCorner 0
scoreboard players set @e[tag=Selection] BottomDeco 0
scoreboard players set @e[tag=Selection] PortalDeco 0