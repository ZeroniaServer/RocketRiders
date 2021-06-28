##Gives executor a Rifter
#Antidupe check
execute store result score @s HasRift run clear @s salmon_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasRift %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasRift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasRift 0

#Title/giving
title @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift] actionbar {"text":"Rifter already obtained.","color":"aqua"}
execute as @s[scores={HasRift=1..},tag=!fullHotbar,tag=!HasRift] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasRift=0},tag=!fullHotbar,tag=!BackRift] actionbar {"text":"Rifter obtained.","color":"aqua"}
loot give @s[scores={HasRift=0},tag=!fullHotbar] loot items:heavy/rifter
playsound minecraft:entity.item.pickup player @s[scores={HasRift=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackRift] run tag @e[tag=Selection,type=armor_stand] add givenRift
execute unless entity @s[tag=BackRift] run tag @e[tag=Bot,type=armor_stand] add BotHasRift