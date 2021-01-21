##Operator function -- run in server mode 1 to set normal mode.
execute as @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] store result score @s SetGamemode run scoreboard players get @e[tag=rr_normal,limit=1] gamemodeID
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] TopDeco 1
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] TopCorner 1
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] MiddleDeco 1
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] BottomDeco 1
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] PortalDeco 1

tag @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] remove ServerModeVoting
execute as @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] run function arenaclear:forceareaclear
tag @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] add EditedSettings

execute as @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] run schedule function servermode:init_forcedsettings 2t

execute unless entity @e[tag=Selection,type=armor_stand,limit=1,scores={servermode=1}] run tellraw @s [{"text":"Error: Incorrect server mode! Please run in server mode 1.","color":"red"}]