##Gives executor a Gemini
#Antidupe check
execute store result score @s HasGemi run clear @s fox_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasGemi %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasGemi=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasGemi 0

#Title/giving
title @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemi] actionbar {"text":"Gemini already obtained.","color":"aqua"}
execute if entity @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemi] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasGemi=0},tag=!fullHotbar,tag=!BackGemi] actionbar {"text":"Gemini obtained.","color":"aqua"}
loot give @s[scores={HasGemi=0},tag=!fullHotbar] loot items:normal/gemini
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasGemi=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackGemi] run tag @e[type=armor_stand,tag=Selection] add givenGemi
execute unless entity @s[tag=BackGemi] run tag @e[type=armor_stand,tag=Bot] add BotHasGemi