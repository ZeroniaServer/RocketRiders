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
give @s[team=Yellow,scores={HasHyper=0},tag=!fullHotbar] turtle_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Hypersonic","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"6","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"4.4m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Hypersonic is the fastest","color":"gray"}','{"text":"missile in the game. It might be","color":"gray"}','{"text":"very hard to get on this one!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowHyper"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasHyper=0},tag=!fullHotbar] turtle_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Hypersonic","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"6","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"4.4m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":"The Hypersonic is the fastest","color":"gray"}','{"text":"missile in the game. It might be","color":"gray"}','{"text":"very hard to get on this one!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueHyper"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
execute unless entity @s[tag=BackHyper] run tag @e[tag=Selection,type=armor_stand] add givenHyper