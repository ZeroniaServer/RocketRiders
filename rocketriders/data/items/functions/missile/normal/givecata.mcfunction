##Gives executor a Catapult
#Antidupe check
execute store result score @s HasCata run clear @s cave_spider_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasCata %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasCata=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasCata 0

#Title/giving
title @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute as @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasCata=0},tag=!fullHotbar,tag=!BackCata] actionbar {"text":"Catapult obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasCata=0},tag=!fullHotbar] cave_spider_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Catapult","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"14","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.2m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Catapult does as its name suggests:","color":"gray"}','{"text":"Once it contacts a wall, it launches 2 TNT","color":"gray"}','{"text":"blocks out. You can also launch TNT by","color":"gray"}','{"text":"breaking the back slime block. Watch out!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowCata"]}} 1
give @s[team=Blue,scores={HasCata=0},tag=!fullHotbar] cave_spider_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Normal] ","color":"green","bold":true},{"text":"Catapult","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"14","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.2m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Catapult does as its the name suggests:","color":"gray"}','{"text":"Once it contacts a wall, it launches 2 TNT","color":"gray"}','{"text":"blocks out. You can also launch TNT by","color":"gray"}','{"text":"breaking the back slime block. Watch out!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueCata"]}} 1

#Game tracking
execute unless entity @s[tag=BackCata] run tag @e[tag=Selection,type=armor_stand] add givenCata
execute unless entity @s[tag=BackCata] run tag @e[tag=Bot,type=armor_stand] add BotHasCata