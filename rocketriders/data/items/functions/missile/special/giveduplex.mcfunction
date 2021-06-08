##Gives executor a Duplex
#Antidupe check
execute store result score @s HasDuplex run clear @s parrot_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasDuplex %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasDuplex=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasDuplex 0

#Title/giving
title @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
execute as @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasDuplex=0},tag=!fullHotbar,tag=!BackDuplex] actionbar {"text":"Duplex obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasDuplex=0},tag=!fullHotbar] parrot_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Duplex","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"16 (+4 carts)","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22 & YZEROgame","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Duplex works like a ShieldBuster but it takes a","color":"gray"}','{"text":"more creative approach. Instead of going through","color":"gray"}','{"text":"a shield, it will blow it up and keep on flying!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowDuplex"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasDuplex=0},tag=!fullHotbar] parrot_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Duplex","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"16 (+4 carts)","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22 & YZEROgame","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Duplex works like a ShieldBuster but it takes a","color":"gray"}','{"text":"more creative approach. Instead of going though","color":"gray"}','{"text":"a shield, it will blow it up and keep on flying!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueDuplex"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
execute unless entity @s[tag=BackDuplex] run tag @e[tag=Selection,type=armor_stand] add givenDuplex