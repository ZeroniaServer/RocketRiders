##Gives executor a TomaTwo
#Antidupe check
execute store result score @s HasToma run clear @s creeper_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasToma %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasToma=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasToma 0

#Title/giving
title @s[scores={HasToma=1..},tag=!fullHotbar,tag=!BackToma] actionbar {"text":"TomaTwo already obtained.","color":"aqua"}
execute as @s[scores={HasToma=1..},tag=!fullHotbar,tag=!BackToma] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasToma=0},tag=!fullHotbar,tag=!BackToma] actionbar {"text":"TomaTwo obtained.","color":"aqua"}
loot give @s[scores={HasToma=0},tag=!fullHotbar] loot items:normal/tomatwo
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasToma=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackToma] run tag @e[tag=Selection,type=armor_stand] add givenToma
execute unless entity @s[tag=BackToma] run tag @e[tag=Bot,type=armor_stand] add BotHasToma