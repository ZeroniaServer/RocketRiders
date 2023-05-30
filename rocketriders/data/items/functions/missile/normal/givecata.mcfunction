##Gives executor a Catapult
#Antidupe check
execute store result score @s HasCata run clear @s cave_spider_spawn_egg 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasCata %= 64 CmdData
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasCata=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasCata 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute if entity @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackCata,tag=itemDeducted] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackCata,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasCata=0},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] actionbar {"text":"Catapult obtained.","color":"aqua"}
loot give @s[scores={HasCata=0},tag=!fullHotbar] loot items:normal/catapult
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasCata=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackCata] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=tetrisTime] add givenCata
execute unless entity @s[tag=BackCata] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Bot] add HasCata