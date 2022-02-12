##Gives executor a Warhead
#Antidupe check
execute store result score @s HasWar run clear @s silverfish_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasWar %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasWar=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasWar 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasWar=1..},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] actionbar {"text":"Warhead already obtained.","color":"aqua"}
execute if entity @s[scores={HasWar=1..},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackWar,tag=itemDeducted] actionbar {"text":"Warhead already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackWar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasWar=0},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] actionbar {"text":"Warhead obtained.","color":"aqua"}
loot give @s[scores={HasWar=0},tag=!fullHotbar] loot items:heavy/warhead
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasWar=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackWar] run tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenWar
execute unless entity @s[tag=BackWar] run tag @e[type=armor_stand,tag=Bot] add HasWar