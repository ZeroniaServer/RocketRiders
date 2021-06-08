##Gives executor a Blade
#Antidupe check
execute store result score @s HasBlade run clear @s husk_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasBlade %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasBlade=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBlade 0

#Title/giving
title @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute as @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBlade=0},tag=!fullHotbar,tag=!BackBlade] actionbar {"text":"Blade obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasBlade=0},tag=!fullHotbar] husk_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Blade","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"15","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Blade is a sword-shaped missile.","color":"gray"}','{"text":"Breaking the slime block on the side","color":"gray"}','{"text":"will drop down 3 bomber TNT below it.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowBlade"]}} 1
give @s[team=Blue,scores={HasBlade=0},tag=!fullHotbar] husk_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Blade","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"15","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Blade is a sword-shaped missile.","color":"gray"}','{"text":"Breaking the slime block on the side","color":"gray"}','{"text":"will drop down 3 bomber TNT below it.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueBlade"]}} 1

#Game tracking
execute unless entity @s[tag=BackBlade] run tag @e[tag=Selection,type=armor_stand] add givenBlade
execute unless entity @s[tag=BackBlade] run tag @e[tag=Bot,type=armor_stand] add BotHasBlade