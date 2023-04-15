##Gives executor a Citadel
#Antidupe check
execute store result score @s HasCitadel run clear @s wandering_trader_spawn_egg 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasCitadel %= 64 CmdData
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasCitadel=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasCitadel 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] actionbar {"text":"Citadel already obtained.","color":"aqua"}
execute if entity @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackCitadel,tag=itemDeducted] actionbar {"text":"Citadel already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackCitadel,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasCitadel=0},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] actionbar {"text":"Citadel obtained.","color":"aqua"}
loot give @s[scores={HasCitadel=0},tag=!fullHotbar] loot items:normal/citadel
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasCitadel=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackCitadel] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=tetrisTime] add givenCita
execute unless entity @s[tag=BackCitadel] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Bot] add HasCita