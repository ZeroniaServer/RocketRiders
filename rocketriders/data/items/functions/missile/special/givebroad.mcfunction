##Gives executor a Broadsword
#Antidupe check
execute store result score @s HasBroad run clear @s magma_cube_spawn_egg 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasBroad %= 64 CmdData
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasBroad=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasBroad 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBroad=1..},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] actionbar {"text":"Broadsword already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBroad=1..},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBroad,tag=itemDeducted] actionbar {"text":"Broadsword already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackBroad,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBroad=0},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] actionbar {"text":"Broadsword obtained.","color":"light_purple"}
loot give @s[scores={HasBroad=0},tag=!fullHotbar] loot items:special/broadsword
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBroad=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBroad] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=tetrisTime] add givenBroad
execute unless entity @s[tag=BackBroad] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Bot] add HasBroad