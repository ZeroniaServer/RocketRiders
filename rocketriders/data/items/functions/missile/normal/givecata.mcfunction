##Gives executor a Catapult
#Antidupe check
execute store result score @s HasCata run clear @s cave_spider_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasCata %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasCata=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasCata 0

#Title/giving
title @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute as @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasCata=0},tag=!fullHotbar,tag=!BackCata] actionbar {"text":"Catapult obtained.","color":"aqua"}
loot give @s[scores={HasCata=0},tag=!fullHotbar] loot items:normal/catapult
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasCata=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackCata] run tag @e[tag=Selection,type=armor_stand] add givenCata
execute unless entity @s[tag=BackCata] run tag @e[tag=Bot,type=armor_stand] add BotHasCata