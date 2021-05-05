##Gives executor a Slasher
#Antidupe check
execute store result score @s HasSlash run clear @s shulker_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasSlash %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasSlash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasSlash 0

#Title/giving
title @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash] actionbar {"text":"Slasher already obtained.","color":"aqua"}
execute as @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1
title @s[scores={HasSlash=0},tag=!fullHotbar,tag=!BackSlash] actionbar {"text":"Slasher obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSlash=0},tag=!fullHotbar] shulker_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Slasher","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"6","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"69thAmendment","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Slasher is a glass-encased","color":"gray"}','{"text":"missile with not much TNT. It can","color":"gray"}','{"text":"slash straight through shields.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowSlash']}} 1
give @s[team=Blue,scores={HasSlash=0},tag=!fullHotbar] shulker_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Slasher","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"6","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"69thAmendment","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Slasher is a glass-encased","color":"gray"}','{"text":"missile with not much TNT. It can","color":"gray"}','{"text":"slash straight through shields.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueSlash']}} 1

#Game tracking
execute unless entity @s[tag=BackSlash] run tag @e[tag=Selection,type=armor_stand] add givenSlash
execute unless entity @s[tag=BackSlash] run tag @e[tag=Bot,type=armor_stand] add BotHasSlash