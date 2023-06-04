##Operator function for forcing a game to start
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run function game:forcecountdown
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run tag @e[x=0,type=armor_stand,tag=Selection] add forceCountdown
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,tag=EditedSettings] count 597
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run tellraw @s [{"text":"You can only run this when settings are confirmed","color":"red"}]