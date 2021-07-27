tag @e[type=armor_stand,tag=Selection] remove switchGamemodes

execute as @e[type=armor_stand,tag=Selection] run function gamemodes:storesettings
tag @e[type=armor_stand,tag=Selection] add customBossbar
tag @e[type=armor_stand,tag=Selection] add duelEnabled
tag @e[type=armor_stand,tag=Selection] add SurpriseEggOff
tag @e[type=armor_stand,tag=Selection] add tyingOff
tag @e[type=armor_stand,tag=Selection] add itemDelayOff
tag @e[type=armor_stand,tag=Selection] add settingsLocked
tag @e[type=armor_stand,tag=Selection] add customSaberMsg
tag @e[type=armor_stand,tag=Selection] add customLeaveHandling
tag @e[type=armor_stand,tag=Selection] add featheredOff
tag @e[type=armor_stand,tag=Selection] add customSpawns
tag @e[type=armor_stand,tag=Selection] add WindDownForce
tag @e[type=armor_stand,tag=Selection] add WindDown
tag @e[type=armor_stand,tag=Selection] add saberMode

tag @e[type=armor_stand,tag=Selection,tag=Molerat] add WasMolerat
tag @e[type=armor_stand,tag=Selection,tag=Molerat] remove Molerat

#Item giving time
scoreboard players set @e[type=armor_stand,tag=Selection] MaxItemSec 15
scoreboard players set @e[type=armor_stand,tag=Selection] MaxItemTime 300

#Blank arena preset
scoreboard players set @e[type=armor_stand,tag=Selection] TopDeco 0
scoreboard players set @e[type=armor_stand,tag=Selection] MiddleDeco 0
scoreboard players set @e[type=armor_stand,tag=Selection] TopCorner 0
scoreboard players set @e[type=armor_stand,tag=Selection] BottomDeco 0
scoreboard players set @e[type=armor_stand,tag=Selection] PortalDeco 0
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer