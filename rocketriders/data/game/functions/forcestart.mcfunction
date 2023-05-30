##Operator function for forcing a game to start
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=EditedSettings] run function game:forcecountdown
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=EditedSettings] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add forceCountdown
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=EditedSettings] count 597
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=EditedSettings] run tellraw @s [{"text":"You can only run this when settings are confirmed","color":"red"}]