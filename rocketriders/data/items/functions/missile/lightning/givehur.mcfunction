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
give @s[team=Yellow,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Hurricane","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"18","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowHur"]}} 1
give @s[team=Blue,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Hurricane","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"18","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueHur"]}} 1

#Game tracking
execute unless entity @s[tag=BackHur] run tag @e[tag=Selection,type=armor_stand] add givenHur
execute unless entity @s[tag=BackHur] run tag @e[tag=Bot,type=armor_stand] add BotHasHur