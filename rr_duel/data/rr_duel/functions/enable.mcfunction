tag @e[tag=Selection,type=armor_stand] remove switchGamemodes

execute as @e[tag=Selection,type=armor_stand] run function gamemodes:storesettings
tag @e[tag=Selection,type=armor_stand] add customBossbar
tag @e[tag=Selection,type=armor_stand] add duelEnabled
tag @e[tag=Selection,type=armor_stand] add SurpriseEggOff
tag @e[tag=Selection,type=armor_stand] add tyingOff
tag @e[tag=Selection,type=armor_stand] add itemDelayOff
tag @e[tag=Selection,type=armor_stand] add settingsLocked

tag @e[tag=Selection,tag=Molerat,type=armor_stand] add WasMolerat
tag @e[tag=Selection,tag=Molerat,type=armor_stand] remove Molerat

#Item giving time
scoreboard players set @e[tag=Selection,type=armor_stand] MaxItemSec 15
scoreboard players set @e[tag=Selection,type=armor_stand] MaxItemTime 300

#Blank arena preset
scoreboard players set @e[tag=Selection,type=armor_stand] TopDeco 0
scoreboard players set @e[tag=Selection,type=armor_stand] MiddleDeco 0
scoreboard players set @e[tag=Selection,type=armor_stand] TopCorner 0
scoreboard players set @e[tag=Selection,type=armor_stand] BottomDeco 0
scoreboard players set @e[tag=Selection,type=armor_stand] PortalDeco 0
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshcustomizer