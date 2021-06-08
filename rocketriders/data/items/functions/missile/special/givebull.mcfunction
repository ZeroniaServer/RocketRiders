##Gives executor a Bullet
#Antidupe check
execute store result score @s HasBullet run clear @s skeleton_horse_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasBullet %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasBullet=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBullet 0

#Title/giving
title @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBullet] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
execute as @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBullet] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBullet=0},tag=!fullHotbar,tag=!BackBullet] actionbar {"text":"Bullet obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBullet=0},tag=!fullHotbar] skeleton_horse_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Bullet","color":"gold","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"44","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22 & Evtema3","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Bullet makes all missiles look like an A.N.T.","color":"gray"}','{"text":"With 44 TNT, 12 of which being triggers, you","color":"gray"}','{"text":"have to be very careful defusing this one!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","yellowmissile","YellowBull"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasBullet=0},tag=!fullHotbar] skeleton_horse_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Bullet","color":"blue","bold":true}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"44","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22 & Evtema3","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Bullet makes all missiles look like an A.N.T.","color":"gray"}','{"text":"With 44 TNT, 12 of which being triggers, you","color":"gray"}','{"text":"have to be very careful defusing this one!","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["missile","bluemissile","BlueBull"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
execute unless entity @s[tag=BackBullet] run tag @e[tag=Selection,type=armor_stand] add givenBull