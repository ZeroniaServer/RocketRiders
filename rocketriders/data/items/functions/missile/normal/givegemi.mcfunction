##Gives executor a Gemini
#Antidupe check
execute store result score @s HasGemi run clear @s fox_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasGemi %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasGemi=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasGemi 0

#Title/giving
title @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemini] actionbar {"text":"Gemini already obtained.","color":"aqua"}
execute as @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemini] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasGemi=0},tag=!fullHotbar,tag=!BackGemini] actionbar {"text":"Gemini obtained.","color":"aqua"}
loot give @s[scores={HasGemi=0},tag=!fullHotbar] loot items:normal/gemini
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasGemi=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackGemini] run tag @e[tag=Selection,type=armor_stand] add givenGemi
execute unless entity @s[tag=BackGemini] run tag @e[tag=Bot,type=armor_stand] add BotHasGemi