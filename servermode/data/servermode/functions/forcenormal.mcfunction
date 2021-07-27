##Operator function -- run in server mode 1 to set normal mode (slightly buggy)
tag @e[type=armor_stand,tag=Selection,limit=1] add forcenormal
function game:forcestop
execute as @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] store result score @s SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] TopDeco 1
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] TopCorner 1
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] MiddleDeco 1
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] BottomDeco 1
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] PortalDeco 1
tag @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] add normalLast
tag @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] add normalLast
tag @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] add saberMode

tag @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] remove ServerModeVoting

execute as @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] run schedule function servermode:forceclear 2t

execute as @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] run schedule function servermode:init_forcedsettings 4t

execute unless entity @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] run tellraw @s [{"text":"Error: Incorrect server mode! Please run in server mode 1.","color":"red"}]