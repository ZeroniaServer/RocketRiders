##Gives executor a Blade
#Antidupe check
execute store result score @s HasBlade run clear @s husk_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasBlade %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasBlade=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasBlade 0

#Title/giving
title @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute if entity @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBlade=0},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade obtained.","color":"aqua"}
loot give @s[scores={HasBlade=0},tag=!fullHotbar] loot items:normal/blade
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBlade=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBlade] run tag @e[type=armor_stand,tag=Selection] add givenBlade
execute unless entity @s[tag=BackBlade] run tag @e[type=armor_stand,tag=Bot] add BotHasBlade