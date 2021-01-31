##Gives executor a Bullet
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasBullet run clear @s skeleton_horse_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBullet 0

#Title/giving
title @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBullet] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
title @s[scores={HasBullet=0},tag=!fullHotbar,tag=!BackBullet] actionbar {"text":"Bullet obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBullet=0},tag=!fullHotbar] skeleton_horse_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Bullet","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"44","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Bullet makes all missiles look like an A.N.T.","color":"gray"}','{"text":"With 44 TNT, 12 of which being triggers, you","color":"gray"}','{"text":"have to be very careful defusing this one!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBull']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasBullet=0},tag=!fullHotbar] skeleton_horse_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Bullet","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"44","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Bullet makes all missiles look like an A.N.T.","color":"gray"}','{"text":"With 44 TNT, 12 of which being triggers, you","color":"gray"}','{"text":"have to be very careful defusing this one!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBull']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
execute unless entity @s[tag=BackBullet] run tag @e[tag=Selection,type=armor_stand] add givenBull