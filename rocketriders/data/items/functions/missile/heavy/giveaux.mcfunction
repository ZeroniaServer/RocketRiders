##Gives executor an Auxiliary
#Antidupe check
execute store result score @s HasAux run clear @s mooshroom_spawn_egg 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasAux %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasAux=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasAux 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
execute if entity @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackAux,tag=itemDeducted] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackAux,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasAux=0},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] actionbar {"text":"Auxiliary obtained.","color":"aqua"}
loot give @s[scores={HasAux=0},tag=!fullHotbar] loot items:heavy/auxiliary
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasAux=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackAux] run tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenAux
execute unless entity @s[tag=BackAux] run tag @e[x=0,type=armor_stand,tag=Bot] add HasAux