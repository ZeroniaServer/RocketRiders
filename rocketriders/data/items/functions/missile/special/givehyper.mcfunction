##Gives executor a Hypersonic
#Antidupe check
execute store result score @s HasHyper run clear @s turtle_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasHyper %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasHyper=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasHyper 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
execute if entity @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackHyper,tag=itemDeducted] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackHyper,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

title @s[scores={HasHyper=0},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] actionbar {"text":"Hypersonic obtained.","color":"light_purple"}
loot give @s[scores={HasHyper=0},tag=!fullHotbar] loot items:special/hypersonic
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasHyper=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackHyper] run tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenHyper
execute unless entity @s[tag=BackHyper] run tag @e[type=armor_stand,tag=Bot] add HasHyper