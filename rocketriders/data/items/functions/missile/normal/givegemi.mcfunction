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
give @s[team=Yellow,scores={HasGemi=0},tag=!fullHotbar] fox_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Gemini","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"4","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Evtema3 & samnrad","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Gemini is a twin missile, in that","color":"gray"}','{"text":"if one side is stopped, the other","color":"gray"}','{"text":"side of the missile will keep going.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowGemi"]}} 1
give @s[team=Blue,scores={HasGemi=0},tag=!fullHotbar] fox_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Gemini","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"4","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Evtema3 & samnrad","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Gemini is a twin missile, in that","color":"gray"}','{"text":"if one side is stopped, the other","color":"gray"}','{"text":"side of the missile will keep going.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueGemi"]}} 1

#Game tracking
execute unless entity @s[tag=BackGemini] run tag @e[tag=Selection,type=armor_stand] add givenGemi
execute unless entity @s[tag=BackGemini] run tag @e[tag=Bot,type=armor_stand] add BotHasGemi