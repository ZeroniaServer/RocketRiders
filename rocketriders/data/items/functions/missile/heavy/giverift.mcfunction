##Gives executor a Rifter
#Antidupe check
execute store result score @s HasRift run clear @s salmon_spawn_egg 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasRift %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasRift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasRift 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] actionbar {"text":"Rifter already obtained.","color":"aqua"}
execute if entity @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackRift,tag=itemDeducted] actionbar {"text":"Rifter already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackRift,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasRift=0},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] actionbar {"text":"Rifter obtained.","color":"aqua"}
loot give @s[scores={HasRift=0},tag=!fullHotbar] loot items:heavy/rifter
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasRift=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackRift] run tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenRift
execute unless entity @s[tag=BackRift] run tag @e[x=0,type=armor_stand,tag=Bot] add HasRift