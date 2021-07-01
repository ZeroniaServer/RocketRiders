##Gives executor a Hurricane
#Antidupe check
execute store result score @s HasHur run clear @s drowned_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasHur %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasHur=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasHur 0

#Title/giving
title @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
execute as @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasHur=0},tag=!fullHotbar,tag=!BackHur] actionbar {"text":"Hurricane obtained.","color":"aqua"}
loot give @s[scores={HasHur=0},tag=!fullHotbar] loot items:lightning/hurricane
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasHur=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackHur] run tag @e[tag=Selection,type=armor_stand] add givenHur
execute unless entity @s[tag=BackHur] run tag @e[tag=Bot,type=armor_stand] add BotHasHur