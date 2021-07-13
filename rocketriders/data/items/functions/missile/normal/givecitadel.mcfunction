##Gives executor a Citadel
#Antidupe check
execute store result score @s HasCitadel run clear @s wandering_trader_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasCitadel %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasCitadel=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasCitadel 0

#Title/giving
title @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel] actionbar {"text":"Citadel already obtained.","color":"aqua"}
execute as @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasCitadel=0},tag=!fullHotbar,tag=!BackCitadel] actionbar {"text":"Citadel obtained.","color":"aqua"}
loot give @s[scores={HasCitadel=0},tag=!fullHotbar] loot items:normal/citadel
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasCitadel=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackCitadel] run tag @e[tag=Selection,type=armor_stand] add givenCita
execute unless entity @s[tag=BackCitadel] run tag @e[tag=Bot,type=armor_stand] add BotHasCita