##Gives executor a Hurricane
#Antidupe check
execute store result score @s HasHur run clear @s drowned_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasHur %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasHur=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasHur 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
execute if entity @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackHur,tag=itemDeducted] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackHur,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasHur=0},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] actionbar {"text":"Hurricane obtained.","color":"aqua"}
loot give @s[scores={HasHur=0},tag=!fullHotbar] loot items:lightning/hurricane
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasHur=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackHur] run tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenHur
execute unless entity @s[tag=BackHur] run tag @e[type=armor_stand,tag=Bot] add HasHur