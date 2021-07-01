##Gives executor a Blade
#Antidupe check
execute store result score @s HasBlade run clear @s husk_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasBlade %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasBlade=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBlade 0

#Title/giving
title @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute as @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBlade=0},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade obtained.","color":"aqua"}
loot give @s[scores={HasBlade=0},tag=!fullHotbar] loot items:normal/blade
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBlade=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBlade] run tag @e[tag=Selection,type=armor_stand] add givenBlade
execute unless entity @s[tag=BackBlade] run tag @e[tag=Bot,type=armor_stand] add BotHasBlade