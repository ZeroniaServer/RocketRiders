##Gives executor a Hypersonic
#Antidupe check
execute store result score @s HasHyper run clear @s turtle_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasHyper %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasHyper=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasHyper 0

#Title/giving
title @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
execute as @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasHyper=0},tag=!fullHotbar,tag=!BackHyper] actionbar {"text":"Hypersonic obtained.","color":"light_purple"}
loot give @s[scores={HasHyper=0},tag=!fullHotbar] loot items:special/hypersonic
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasHyper=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackHyper] run tag @e[tag=Selection,type=armor_stand] add givenHyper